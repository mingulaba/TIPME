class AddDateToTables < ActiveRecord::Migration[7.0]
  def change
    add_column :tables, :date, :date
  end
end
