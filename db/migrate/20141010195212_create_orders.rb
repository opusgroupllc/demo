class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :vendor, index: true
      t.references :product, index: true
      t.date :order_date

      t.timestamps
    end
  end
end
