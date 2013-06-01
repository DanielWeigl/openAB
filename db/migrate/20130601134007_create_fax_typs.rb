class CreateFaxTyps < ActiveRecord::Migration
  def change
    create_table :fax_typs do |t|
      t.string :typ

      t.timestamps
    end
  end
end
