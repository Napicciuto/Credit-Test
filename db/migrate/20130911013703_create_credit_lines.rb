class CreateCreditLines < ActiveRecord::Migration
  def change
    create_table :credit_lines do |t|
      t.string   :name
      t.decimal  :credit_line, :precision => 6, :scale => 2, :default => 0.00

      t.timestamps
    end
  end
end
