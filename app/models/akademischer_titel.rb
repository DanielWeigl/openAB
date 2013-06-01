class AkademischerTitel < ActiveRecord::Base
  has_many :adresses
  attr_accessible :titel
end
