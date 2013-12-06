# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Anrede.create({"anrede"=>"Herr"})
Anrede.create({"anrede"=>"Frau"})
Anrede.create({"anrede"=>"Firma"})

BerufsTitel.create ({"titel"=>"CEO"})
BerufsTitel.create ({"titel"=>"Dir"})
BerufsTitel.create ({"titel"=>"CTO"})

BerufsFunktion.create ({"funktion"=>"Chef"})
BerufsFunktion.create ({"funktion"=>"Boss"})

AkademischerTitel.create({"titel"=>"Dr"})
AkademischerTitel.create({"titel"=>"Dr.phil."})

Land.create({"name"=>"Oesterreich"})
Land.create({"name"=>"Deutschland"})
