class Adresse < ActiveRecord::Base
  belongs_to :akademischerTitel
  belongs_to :anrede
  belongs_to :berufsFunktion
  belongs_to :berufsTitel
  
  attr_accessible :adrLand, :adrOrt, :adrPlz, :adrStrasse, :firma, :institution, :nachname, :newsletter, :vorname, :akademischerTitel_id, :berufsTitel_id, :anrede_id, :berufsFunktion_id, :berufsTitel_id

end
