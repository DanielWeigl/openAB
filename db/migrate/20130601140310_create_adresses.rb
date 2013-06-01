class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.integer :anrede_id
      t.integer :akademischerTitel_id
      t.integer :berufsTitel_id
      t.integer :berufsFunktion_id
      
      t.string :vorname
      t.string :nachname
      t.string :adrStrasse
      t.string :adrOrt
      t.string :adrPlz
      t.string :adrLand
      
      t.string :firma
      t.string :institution
      t.boolean :newsletter

      t.timestamps
    end
  end
end
