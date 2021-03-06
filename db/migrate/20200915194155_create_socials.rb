class CreateSocials < ActiveRecord::Migration[6.0]
  def change
    create_table :socials do |t|
      t.integer :kind
      t.string :url
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
