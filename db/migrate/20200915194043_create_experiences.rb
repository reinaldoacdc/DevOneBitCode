class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :company
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
