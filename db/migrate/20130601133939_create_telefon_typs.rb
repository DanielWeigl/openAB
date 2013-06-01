class CreateTelefonTyps < ActiveRecord::Migration
  def change
    create_table :telefon_typs do |t|
      t.string :typ

      t.timestamps
    end
  end
end
