class CreateCursos < ActiveRecord::Migration
  def self.up
    create_table :cursos do |t|
      t.integer :profesor_id
      t.integer :asignatura_id

      t.timestamps
    end
    add_index :cursos, :profesor_id
    add_index :cursos, :asignatura_id
  end

  def self.down
    drop_table :cursos
  end

end
