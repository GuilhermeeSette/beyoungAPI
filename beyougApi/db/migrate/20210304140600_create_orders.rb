class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :client_name
      t.string :email
      t.string :cpf
      t.string :cep
      t.float :delivery_value
      t.float :value
      t.references :items

      t.timestamps
    end
  end
end
