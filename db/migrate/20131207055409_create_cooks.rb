class CreateCooks < ActiveRecord::Migration
  def change
    create_table :cooks do |t|
      t.string :name

      t.timestamps
    end

    create_table :cooks_ingredients do |t|
      t.belongs_to :cook
      t.belongs_to :ingredient
    end
  end
end
