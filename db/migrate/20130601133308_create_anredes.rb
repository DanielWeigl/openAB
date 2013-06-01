class CreateAnredes < ActiveRecord::Migration
  def change
    create_table :anredes do |t|
      t.string :anrede

      t.timestamps
    end
  end
end
