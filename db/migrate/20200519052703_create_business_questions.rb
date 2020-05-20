class CreateBusinessQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :business_questions do |t|
      t.string :title
      t.text :body
      t.string :phone
      t.string :email
      t.string :company
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
