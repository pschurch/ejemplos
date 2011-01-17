class CreateProfesors < ActiveRecord::Migration
  def self.up
    create_table :profesors do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :profesors
  end
end
