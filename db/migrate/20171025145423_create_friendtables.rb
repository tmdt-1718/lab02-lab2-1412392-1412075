class CreateFriendtables < ActiveRecord::Migration[5.1]
  def change
    create_table :friendtables do |t|
      t.integer :id_user
      t.integer :id_friend

      t.timestamps
    end
  end
end
