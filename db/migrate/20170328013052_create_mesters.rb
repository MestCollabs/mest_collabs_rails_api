class CreateMesters < ActiveRecord::Migration[5.0]
  def change
    create_table :mesters do |t|
      t.string :name
      t.string :email
      t.string :profilePicture

      t.timestamps
    end
  end
end
