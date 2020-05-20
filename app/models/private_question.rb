class PrivateQuestion < ApplicationRecord
    enum question_type: [:order_cancel, :order_pay, :product_info, :product_return, :others]
    enum reply_state: [:waiting, :fulfilled]
    belongs_to :user
    
    def self.search(search, date_from, date_to)
        
        if !date_from.blank? && !date_to.blank?
            @searched_private_questions = self.where(" created_at BETWEEN ? AND ? ", "#{date_from}", "#{date_to}" )
        else
            @searched_private_questions = PrivateQuestion.all
        end
        
        if !search.blank?
            #search with user name first
            searched_user = User.where( 'name LIKE ?', "%#{search}%" )
            if !searched_user.empty?
                @searched_private_questions = @searched_private_questions.where(user: searched_user).order(:created_at)
            else
                #if search keyword is not username, search in title and body context
                @searched_private_questions = @searched_private_questions.where('title LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%").order(:created_at)
            end
        else
            @searched_private_questions = @searched_private_questions.order(:created_at)
        end
    end
    
end
