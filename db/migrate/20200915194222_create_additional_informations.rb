class CreateAdditionalInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :additional_informations do |t|
      t.string :title
      t.text :description
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
