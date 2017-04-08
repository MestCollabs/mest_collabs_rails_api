class AddTaglineToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :tagline, :string
  end
end
