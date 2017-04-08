class AddColumnsToFeed < ActiveRecord::Migration[5.0]
  def change
    add_column :feeds, :mest_power, :boolean
    add_column :feeds, :shares, :string
  end
end
