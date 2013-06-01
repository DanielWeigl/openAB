class CreateAkademischerTitels < ActiveRecord::Migration
  def change
    create_table :akademischer_titels do |t|
      t.string :titel

      t.timestamps
    end
  end
end
