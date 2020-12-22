class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, null: false, foreign_key: {on_delete: :cascade}
      t.text :instructions
      t.string :name

      t.timestamps
    end
  end
end
