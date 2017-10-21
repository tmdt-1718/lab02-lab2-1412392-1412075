class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :m_id
      t.integer :m_userown
      t.integer :m_usersend
      t.string :m_content
      t.boolean :m_status
      t.datetime :m_date

      t.timestamps
    end
  end
end
