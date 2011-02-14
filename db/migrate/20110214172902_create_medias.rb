class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.string     :nome
      t.belongs_to :media_tipo
      t.belongs_to :media_genero

      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
