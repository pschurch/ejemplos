class CreateMallas < ActiveRecord::Migration
  def self.up
    create_table :mallas do |t|
      t.integer :alumno_id
      t.integer :curso_id

      t.timestamps
    end
    add_index :mallas, :alumno_id
    add_index :mallas, :curso_id
  end

  def self.down
    drop_table :mallas
  end

end
