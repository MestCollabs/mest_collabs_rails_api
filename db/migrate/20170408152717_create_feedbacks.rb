class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.string :body
      t.belongs_to :mester, foreign_key: true
      t.belongs_to :feed, foreign_key: true

      t.timestamps
    end
  end
end
