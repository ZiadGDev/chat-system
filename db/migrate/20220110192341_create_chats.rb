class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.integer :number
      t.integer :messages_count, default: 0
      
      t.belongs_to :app
    end
  end
end
