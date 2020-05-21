class Termsofservice < ApplicationRecord
    enum category: [:terms_use, :privacy_policy, :personal_info]
    def self.search(search, date_from, date_to)
        dateFiltered = self.all
        if !date_from.blank? && !date_to.blank?
            #convert mm/dd/yyyy string to yyyy-mm-dd format
            start_date = Date.strptime(date_from, '%m/%d/%Y').strftime('%Y-%m-%d')
            end_date = Date.strptime(date_to, '%m/%d/%Y').strftime('%Y-%m-%d')
            dateFiltered = self.where(created_at: start_date..end_date )
        end
        
        if !search.blank?
            @searched_termsofservices = dateFiltered.where('title LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%").order(created_at: :desc)
        else
            @searched_termsofservices = dateFiltered.order(created_at: :desc)
        end
    end
end
