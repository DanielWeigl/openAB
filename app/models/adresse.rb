class Adresse < ActiveRecord::Base
  belongs_to :akademischerTitel
  attr_accessible :adrLand, :adrOrt, :adrPlz, :adrStrasse, :firma, :institution, :nachname, :newsletter, :vorname, :akademischerTitel_id

end
