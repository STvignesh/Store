class CreateFavouriteAnimes < ActiveRecord::Migration[8.1]
  def change
    create_table :favourite_animes do |t|
      # create_table :favourite_animes, id:false  do |t|
      # create_table :favourite_animes, primary_key: "name" do |t|
      # create_table :favourite_animes, primary_key:["name","rating"] do |t|
      # array of primary keys -- composite primary key
      #
      t.string :name
      t.string :rating

      t.timestamps
    end
  end
end
