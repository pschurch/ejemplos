class CreateProductos < ActiveRecord::Migration
  def self.up
    create_table :productos do |t|
      t.string :nombre
      t.integer :precio
      t.string :marca
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :productos
  end
end
