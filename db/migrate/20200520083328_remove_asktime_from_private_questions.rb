class RemoveAsktimeFromPrivateQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :private_questions, :asktime, :datetime
  end
end
