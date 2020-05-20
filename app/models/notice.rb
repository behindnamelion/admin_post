class Notice < ApplicationRecord
    def self.search(search, date_from, date_to)
        if !date_from.blank? && !date_to.blank?
            @searched_notices = self.where(" created_at BETWEEN ? AND ? ", "#{date_from}", "#{date_to}" )
        else
            @searched_notices = Notice.all
        end
        
        if !search.blank?
            @searched_notices = @searched_notices.where('title LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%").order(:created_at)
        else
            @searched_notices = @searched_notices.order(:created_at)
        end
    end
end
