class AddCountryColumnToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :country, :string, :default => "Ghana"
  end
end
