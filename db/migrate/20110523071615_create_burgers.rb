class CreateBurgers < ActiveRecord::Migration
  def self.up
    create_table :burgers do |t|
      t.string :name
      t.text :description
      t.string :brand

      t.timestamps
    end
  end

  def self.down
    drop_table :burgers
  end
end
