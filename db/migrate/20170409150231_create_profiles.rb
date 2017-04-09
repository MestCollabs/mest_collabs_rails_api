class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :country
      t.string :phone_number
      t.belongs_to :mester, foreign_key: true

      t.timestamps
    end
  end
end
