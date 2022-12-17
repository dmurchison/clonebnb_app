class ChangePropertyHeadline < ActiveRecord::Migration[7.0]
  def change
    rename_column :properties, :headling, :headline
  end
end
