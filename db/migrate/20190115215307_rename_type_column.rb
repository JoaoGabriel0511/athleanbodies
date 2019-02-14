class RenameTypeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :texts, :type, :section
  end
end
