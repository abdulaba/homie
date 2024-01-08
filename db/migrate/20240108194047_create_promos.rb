class CreatePromos < ActiveRecord::Migration[7.1]
  def change
    create_table :promos do |t|
      t.string :name
      t.text :description
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
