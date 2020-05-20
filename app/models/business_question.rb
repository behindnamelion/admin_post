class BusinessQuestion < ApplicationRecord
  belongs_to :user
  
    def self.search(search, date_from, date_to)
        if !date_from.blank? && !date_to.blank?
            @searched_business_questions = self.where(" created_at BETWEEN ? AND ? ", "#{date_from}", "#{date_to}" )
        else
            @searched_business_questions = BusinessQuestion.all
        end
        
        if !search.blank?
            #search with user name first
            searched_user = User.where( 'name LIKE ?', "%#{search}%" )
            if !searched_user.empty?
                @searched_business_questions = @searched_business_questions.where(user: searched_user).order(:created_at)
            else
                #if search keyword is not username, search in email and phone
                @searched_business_questions = @searched_business_questions.where('phone LIKE ? OR email LIKE ?', "%#{search}%","%#{search}%").order(:created_at)
            end
        else
            @searched_business_questions = @searched_business_questions.order(:created_at)
        end
    end
end
