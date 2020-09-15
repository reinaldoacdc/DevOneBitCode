class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :slug
      t.boolean :active
      t.boolean :listed
      t.boolean :featured
      t.integer :temp_avatar
      t.boolean :remote_ok
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
