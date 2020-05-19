class FrequentQuestion < ApplicationRecord
    enum question_type: [:member, :pay_order, :shipping, :coupon_point, :cancel_return, :others]
end
