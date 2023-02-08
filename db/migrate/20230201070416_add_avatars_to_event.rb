class AddAvatarsToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :avatars, :json
  end
end
