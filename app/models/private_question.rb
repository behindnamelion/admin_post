class PrivateQuestion < ApplicationRecord
    enum question_type: [:order_cancel, :order_pay, :product_info, :product_return, :others]
    enum reply_state: [:waiting, :fulfilled]
    belongs_to :user
    
    def self.search(search)
        if !search.blank?
            #먼저 작성자 이름으로 찾는다. 
            searched_user = User.where( 'name LIKE ?', "%#{search}%" )
            if !searched_user.empty?
                self.where(user: searched_user).order(:asktime)
            else
                #이름이 없다면 제목과 내용 안에서 찾는다. 
                self.where('title LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%").order(:asktime)
            end
        else
           @searched_private_questions = PrivateQuestion.all.order(:asktime)
        end
    end
    
end
