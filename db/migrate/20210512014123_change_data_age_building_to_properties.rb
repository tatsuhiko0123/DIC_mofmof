class ChangeDataAgeBuildingToProperties < ActiveRecord::Migration[5.2]
  def change
    change_column :properties, :age_building, :string
  end
end
