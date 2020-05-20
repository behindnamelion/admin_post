class RemoveNoticetimeFromNotices < ActiveRecord::Migration[5.2]
  def change
    remove_column :notices, :noticetime, :datetime
  end
end
