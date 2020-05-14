class CreatePrivateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :private_questions do |t|
      t.string :title
      t.text :body
      t.datetime :asktime

      t.timestamps
    end
  end
end
