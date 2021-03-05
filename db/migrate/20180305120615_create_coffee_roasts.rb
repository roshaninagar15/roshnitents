class CreateCoffeeRoasts < ActiveRecord::Migration[5.1]
  def change
    create_table :coffee_roasts do |t|
      t.string :username
      t.text :query
      t.bigint :mobile_number
      t.string :email_id
      t.string :occasion

      t.timestamps
    end
  end
end
