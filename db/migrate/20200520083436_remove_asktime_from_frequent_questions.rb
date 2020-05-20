class RemoveAsktimeFromFrequentQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :frequent_questions, :asktime, :datetime
  end
end
