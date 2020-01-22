class CreateConversations < ActiveRecord::Migration[6.0]
    def change
      create_table :conversations do |t|
        t.integer :receiver_id
        t.integer :sender_id
  
        t.timestamps
      end
    end
  end