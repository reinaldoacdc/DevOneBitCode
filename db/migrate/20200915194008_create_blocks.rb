class CreateBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :blocks do |t|
      t.integer :kind
      t.integer :position
      t.integer :side
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
