class CreateAsignaturas < ActiveRecord::Migration
  def self.up
    create_table :asignaturas do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :asignaturas
  end
end
