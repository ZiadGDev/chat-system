class CreateApps < ActiveRecord::Migration[7.0]
  def change
    create_table :apps do |t|
      t.string :name, limit: 100
      t.string :token, limit: 36
      t.integer :chats_count
    end
  end
end
