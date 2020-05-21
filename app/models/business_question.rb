class BusinessQuestion < ApplicationRecord
  belongs_to :user
  
    def self.search(search, date_from, date_to)
        dateFiltered = self.all
        if !date_from.blank? && !date_to.blank?
            #convert mm/dd/yyyy string to yyyy-mm-dd format
            start_date = Date.strptime(date_from, '%m/%d/%Y').strftime('%Y-%m-%d')
            end_date = Date.strptime(date_to, '%m/%d/%Y').strftime('%Y-%m-%d')
            dateFiltered = self.where(created_at: start_date..end_date )
        end
        
        if !search.blank?
            #search with user name first
            searched_user = User.where( 'name LIKE ?', "%#{search}%" )
            if !searched_user.empty?
                @searched_business_questions = dateFiltered.where(user: searched_user).order(created_at: :desc)
            else
                #if search keyword is not username, search in email and phone
                @searched_business_questions = dateFiltered.where('phone LIKE ? OR email LIKE ?', "%#{search}%","%#{search}%").order(created_at: :desc)
            end
        else
            @searched_business_questions = dateFiltered.order(created_at: :desc)
        end
    end
end
