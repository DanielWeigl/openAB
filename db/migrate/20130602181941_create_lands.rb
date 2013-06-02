class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :name
      t.timestamps
    end
  end
end
