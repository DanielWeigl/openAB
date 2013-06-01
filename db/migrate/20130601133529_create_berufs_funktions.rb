class CreateBerufsFunktions < ActiveRecord::Migration
  def change
    create_table :berufs_funktions do |t|
      t.string :funktion

      t.timestamps
    end
  end
end
