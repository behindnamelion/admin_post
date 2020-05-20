class Termsofservice < ApplicationRecord
    enum category: [:terms_use, :privacy_policy, :personal_info]
    def self.search(search, date_from, date_to)
        if !date_from.blank? && !date_to.blank?
            @searched_termsofservices = self.where(" created_at BETWEEN ? AND ? ", "#{date_from}", "#{date_to}" )
        else
            @searched_termsofservices = Termsofservice.all
        end
        
        if !search.blank?
            @searched_termsofservices = @searched_termsofservices.where('title LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%").order(:created_at)
        else
            @searched_termsofservices = @searched_termsofservices.order(:created_at)
        end
    end
end
