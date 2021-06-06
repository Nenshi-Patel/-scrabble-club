class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_joining
      t.integer :contact_details
      t.timestamps
    end
  end
end
