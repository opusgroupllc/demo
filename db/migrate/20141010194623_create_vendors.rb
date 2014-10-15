class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :logo
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :zip
      t.string :website
      t.string :phone
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
