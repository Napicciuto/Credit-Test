class CreateCustomerTransactions < ActiveRecord::Migration
  def change
    create_table :customer_transactions do |t|
      t.integer   :customer_id
      t.boolean   :debit, :default => true
      t.decimal   :amount, :precision => 6, :scale => 2, :default => 0.00
      t.date      :date

      t.timestamps
    end
  end
end
