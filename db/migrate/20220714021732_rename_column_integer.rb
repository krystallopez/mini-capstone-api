class RenameColumnInteger < ActiveRecord::Migration[7.0]
  def change
    rename_column(:category_products, :integer, :category_id)
  end
end
