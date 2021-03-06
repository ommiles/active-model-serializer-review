class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :password_digest
      t.string :img_url
      t.string :favorite_genre
      t.text :bio
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
