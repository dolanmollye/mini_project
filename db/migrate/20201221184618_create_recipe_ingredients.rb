class CreateRecipeIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ingredients do |t|
      t.belongs_to :recipe, null: false, foreign_key: {on_delete: :cascade}
      t.belongs_to :ingredient, null: false, foreign_key: {on_delete: :cascade}
      t.integer :amount

      t.timestamps
    end
  end
end
