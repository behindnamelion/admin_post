class PrivateQuestion < ApplicationRecord
    enum question_type: [:order_cancel, :order_pay, :product_info, :product_return, :others]
    enum reply_state: [:waiting, :fulfilled]
    belongs_to :user
end
