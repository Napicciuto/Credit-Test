class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :email
      t.decimal   :rate, :precision => 6, :scale => 2, :default => 0.00
      t.decimal   :credit, :precision => 6, :scale => 2, :default => 0.00
      t.decimal   :balance, :precision => 6, :scale => 2, :default => 0.00

      t.timestamps
    end
  end
end
