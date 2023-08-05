class AddRecipeIdToRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_foods, :recipe_id, :integer, null: false, foreign_key: true
  end
end
