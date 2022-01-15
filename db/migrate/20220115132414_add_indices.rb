class AddIndices < ActiveRecord::Migration[7.0]
  def change
    add_index :apps, :token
    add_index :chats, :number
    add_index :messages, :number

    add_index :messages, :body, type: :fulltext
  end
end
