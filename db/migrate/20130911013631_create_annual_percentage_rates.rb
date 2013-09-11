class CreateAnnualPercentageRates < ActiveRecord::Migration
  def change
    create_table :annual_percentage_rates do |t|
      t.string   :name
      t.decimal  :rate, :precision => 6, :scale => 2, :default => 0.00

      t.timestamps
    end
  end
end
