class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :link
      t.string :occasion
      t.integer :appearance
      t.integer :aroma
      t.integer :palate
      t.integer :flavour
      t.integer :final_score
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
