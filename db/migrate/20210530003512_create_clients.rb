class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :client
      t.integer :phone_number
      t.string :email

      t.timestamps
    end
  end
end