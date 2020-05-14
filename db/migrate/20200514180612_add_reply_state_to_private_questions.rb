class AddReplyStateToPrivateQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :private_questions, :reply_state, :integer
  end
end
