class ChangeUserIdToBeStringInAttendances < ActiveRecord::Migration[6.1]
  def up
    change_column :attendances, :user_id, :string
    change_column :attendances, :event_id, :string
  end

  def down
    change_column :attendances, :user_id, :integer
    change_column :attendances, :event_id, :integer
  end
end
  