class RemoveColumnFromFeed < ActiveRecord::Migration[5.0]
  def change
    remove_column :feeds, :shares, :string
  end
end
