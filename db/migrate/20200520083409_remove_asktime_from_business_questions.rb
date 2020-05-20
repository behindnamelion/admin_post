class RemoveAsktimeFromBusinessQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :business_questions, :asktime, :datetime
  end
end
