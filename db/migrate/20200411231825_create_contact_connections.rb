class CreateContactConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_connections do |t|
      t.integer :user_id
      t.integer :user_contact_id

      t.timestamps
    end
  end
end
