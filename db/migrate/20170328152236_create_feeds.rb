class CreateFeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :feeds do |t|
      t.string :body
      t.string :picture
      t.belongs_to :mester, foreign_key: true

      t.timestamps
    end
  end
end
