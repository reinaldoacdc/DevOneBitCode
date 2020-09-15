class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :title
      t.decimal :percent, precision: 5, scale: 2
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
