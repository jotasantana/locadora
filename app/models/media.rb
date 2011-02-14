class Media < ActiveRecord::Base

  belongs_to :media_tipo
  belongs_to :media_genero

end
