class CreateBerufsTitels < ActiveRecord::Migration
  def change
    create_table :berufs_titels do |t|
      t.string :titel

      t.timestamps
    end
  end
end
