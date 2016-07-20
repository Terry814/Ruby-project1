class AddCategoryToCardSet < ActiveRecord::Migration
  def change
    add_column :card_sets, :category, :integer
    add_column :card_sets, :position, :integer, default: 0
  end
end
