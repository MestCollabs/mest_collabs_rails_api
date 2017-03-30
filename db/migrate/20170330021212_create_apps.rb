class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :appname
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
