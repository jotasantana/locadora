class CreateMediaGeneros < ActiveRecord::Migration
  def self.up
    create_table :media_generos do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :media_generos
  end
end
