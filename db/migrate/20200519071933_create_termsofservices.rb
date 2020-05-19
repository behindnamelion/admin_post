class CreateTermsofservices < ActiveRecord::Migration[5.2]
  def change
    create_table :termsofservices do |t|
      t.string :title
      t.text :body
      t.datetime :registertime
      t.boolean :isshown
      t.integer :category

      t.timestamps
    end
  end
end
