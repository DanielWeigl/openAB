class Adresse < ActiveRecord::Base
  has_one :akademischerTitelt
  has_one :anredeTyp
  attr_accessible :adrLand, :adrOrt, :adrPlz, :adrStrasse, :firma, :institution, :nachname, :newsletter, :vorname
end
