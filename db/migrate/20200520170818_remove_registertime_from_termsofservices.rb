class RemoveRegistertimeFromTermsofservices < ActiveRecord::Migration[5.2]
  def change
    remove_column :termsofservices, :registertime, :datetime
  end
end
