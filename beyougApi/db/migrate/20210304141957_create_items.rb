class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :sku
      t.string :description
      t.float :value
      t.integer :quantity
      t.references :order

      t.timestamps
    end
  end
end
