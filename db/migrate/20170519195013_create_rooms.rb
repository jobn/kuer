class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.text :nickname
      t.integer :number

      t.timestamps
    end
  end
end
