class FrequentQuestion < ApplicationRecord
    enum question_type: [:member, :pay_order, :shipping, :coupon_point, :cancel_return, :others]
    
    def self.search(search, date_from, date_to)
        if !date_from.blank? && !date_to.blank?
            @searched_frequent_questions = self.where(" created_at BETWEEN ? AND ? ", "#{date_from}", "#{date_to}" )
        else
            @searched_frequent_questions = FrequentQuestion.all
        end
        
        if !search.blank?
            @searched_frequent_questions = @searched_frequent_questions.where('title LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%").order(:created_at)
        else
            @searched_frequent_questions = @searched_frequent_questions.order(:created_at)
        end
    end
end
