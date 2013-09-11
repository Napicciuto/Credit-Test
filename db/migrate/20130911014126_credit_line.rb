class CreditLine < ActiveRecord::Migration
  def change
    remove_column :customers, :rate
    remove_column :customers, :credit
    add_column :customers, :annual_percentage_rate_id, :integer
    add_column :customers, :credit_line_id, :integer
  end
end
