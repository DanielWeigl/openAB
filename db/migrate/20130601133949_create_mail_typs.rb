class CreateMailTyps < ActiveRecord::Migration
  def change
    create_table :mail_typs do |t|
      t.string :typ

      t.timestamps
    end
  end
end
