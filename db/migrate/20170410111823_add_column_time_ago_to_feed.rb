class AddColumnTimeAgoToFeed < ActiveRecord::Migration[5.0]
  def change
    add_column :feeds, :time_ago, :string
  end
end
