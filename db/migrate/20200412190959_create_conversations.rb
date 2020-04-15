class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.integer :to_user_id
      t.integer :from_user_id
    

      t.timestamps
    end
  end
end
