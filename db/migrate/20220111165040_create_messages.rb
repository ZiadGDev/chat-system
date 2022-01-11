class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.integer :number
      t.text :body
      
      t.belongs_to :chat
    end
  end
end
