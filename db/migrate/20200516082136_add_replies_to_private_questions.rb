class AddRepliesToPrivateQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :private_questions, :reply_time, :datetime
    add_column :private_questions, :reply_title, :string
    add_column :private_questions, :reply_body, :text
    add_column :private_questions, :reply_sms, :string
    add_column :private_questions, :reply_email, :string
  end
end
