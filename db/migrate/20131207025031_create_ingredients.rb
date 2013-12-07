class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :emart_price
      t.integer :homeplus_price
      t.integer :kimsclub_price
      t.integer :lotte_price
      t.integer :hanaro_price

      t.timestamps
    end
  end
end
