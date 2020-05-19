class Termsofservice < ApplicationRecord
    enum category: [:terms_use, :privacy_policy, :personal_info]
end
