class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.integer :anrede_id
      t.integer :akademischerTitel_id
      t.integer :berufsTitel_id
      t.integer :berufsFunktion_id
      t.integer :land_id
      
      t.string :vorname
      t.string :nachname
      t.string :adrStrasse
      t.string :adrOrt
      t.string :adrPlz

      
      t.string :email
      t.string :emailArbeit
      t.string :tel1
      t.string :tel2
      t.string :fax      
      
      t.string :firma
      t.string :institution
      t.boolean :newsletter

      t.timestamps
    end
  end
end
