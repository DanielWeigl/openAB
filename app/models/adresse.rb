class Adresse < ActiveRecord::Base
  belongs_to :akademischerTitel
  belongs_to :anrede
  belongs_to :berufsFunktion
  belongs_to :berufsTitel
  belongs_to :land
  has_many :tags
  
  attr_accessible :adrOrt, :adrPlz, :adrStrasse, :adrPolBez, :firma, :institution, :abteilung, :nachname, :newsletter, :vorname, 
      :email, :emailArbeit, :tel1, :tel2, :fax, :homepage, :notizen,
      :akademischerTitel_id, :berufsTitel_id, :anrede_id, :berufsFunktion_id, :berufsTitel_id, :land_id

end
