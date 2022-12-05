class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.text :review
      t.float :tip
      t.float :price
      t.integer :rating
      t.references :team_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
