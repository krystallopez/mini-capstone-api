class RenameColumnCategoryId < ActiveRecord::Migration[7.0]
  def change
    rename_column(:category_products, :catergory_id, :integer)
  end
end
