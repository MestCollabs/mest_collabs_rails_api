class AddColumnToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_column :feedbacks, :time_ago, :string
  end
end
