class CreateFrequentQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :frequent_questions do |t|
      t.string :title
      t.text :body
      t.boolean :isshown
      t.integer :question_type

      t.timestamps
    end
  end
end
