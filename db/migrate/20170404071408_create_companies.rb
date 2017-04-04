class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :logo
      t.string :email
      t.string :website
      t.string :phone
      t.string :angel
      t.string :crunchcase
      t.string :twitter
      t.string :facebook
      t.string :linkedin

      t.timestamps
    end
  end
end
