class CreateAbouts < ActiveRecord::Migration[6.0]
  def change
    create_table :abouts do |t|
      t.text :description
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
