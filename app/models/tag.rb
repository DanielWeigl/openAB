class Tag < ActiveRecord::Base
  belongs_to :adresse
  attr_accessible :name
end
