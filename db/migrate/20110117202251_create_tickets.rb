class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :rut
      t.string :digit
      t.integer :capital
      t.integer :honorarios
      t.integer :gastos_envio
      t.integer :total
      t.integer :cliente_id
      t.integer :forma_pago_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
