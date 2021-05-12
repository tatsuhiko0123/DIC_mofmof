class ChangeDataWalkingTimeToStations < ActiveRecord::Migration[5.2]
  def change
    change_column :stations, :walking_time, :string
  end
end
