class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :article_id
      t.string :author
      t.string :desc
      t.datetime :published_at
      t.boolean :hidden

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
