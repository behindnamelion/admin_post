class AddUserRefToPrivateQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :private_questions, :user, foreign_key: true
  end
end
