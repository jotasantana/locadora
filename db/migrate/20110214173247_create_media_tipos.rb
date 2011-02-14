class CreateMediaTipos < ActiveRecord::Migration
  def self.up
    create_table :media_tipos do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :media_tipos
  end
end
