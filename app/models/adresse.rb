class Adresse < ActiveRecord::Base
  attr_accessible :adrLand, :adrOrt, :adrPlz, :adrStrasse, :akademischerTitel, :anredeTyp, :berufsFunktion, :berufsTitel, :firma, :institution, :nachname, :newsletter, :vorname
end
