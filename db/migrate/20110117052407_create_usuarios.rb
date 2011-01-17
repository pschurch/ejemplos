class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nombre
      t.string :rut
      t.string :digito
      t.integer :edad
      t.string :email
      t.date :date_nac
      t.integer :sueldo
      t.boolean :sexo
      t.text :direccion
      t.string :familia

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
