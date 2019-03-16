class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 8, :scale =>2  # Esto es para que solo muestre 8 digitos y 2 decimales.

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
