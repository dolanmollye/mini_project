class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bio, :text
    add_column :users, :age, :integer
    add_column :users, :skill_level, :string
  end
end
