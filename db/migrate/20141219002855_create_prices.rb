class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :contract
      t.date :start_time
      t.date :end_time
      t.string :source
      t.float :price

      t.timestamps
    end
  end
end
