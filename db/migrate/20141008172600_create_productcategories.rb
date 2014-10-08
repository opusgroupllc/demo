class CreateProductcategories < ActiveRecord::Migration
  def change
    create_table :productcategories do |t|
      t.string :category

      t.timestamps
    end
  end
end
