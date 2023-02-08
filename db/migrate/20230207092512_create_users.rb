class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :full_name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
