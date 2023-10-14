class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :number
      t.string :street
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code

      t.timestamps
    end
  end
end
