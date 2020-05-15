class AddQuestionTypeToPrivateQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :private_questions, :question_type, :integer, :default => 0
  end
end
