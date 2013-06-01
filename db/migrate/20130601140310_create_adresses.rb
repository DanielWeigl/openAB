class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      #t.reference :anredeTyp
      #t.reference :akademischerTitel
      #t.reference :berufsTitel
      #t.reference :berufsFunktion
      t.string :vorname
      t.string :nachname
      t.string :adrStrasse
      t.string :adrOrt
      t.string :adrPlz
      #t.reference :adrLand
      t.string :firma
      t.string :institution
      t.boolean :newsletter

      t.timestamps
    end
  end
end
