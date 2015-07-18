# Create database for this program.
DATABASE = SQLite3::Database.new("beerarchive.db")

unless ActiveRecord::Base.connection.table_exists?(:photographers)
  ActiveRecord::Base.connection.create_table :photographers do |t|
    t.string :name
  end  
end

unless ActiveRecord::Base.connection.table_exists?(:photos)
  ActiveRecord::Base.connection.create_table :photos do |t|
    t.string :date
    t.string :title
    t.string :location
    t.integer :photographer_id
  end  
end

unless ActiveRecord::Base.connection.table_exists?(:albums)
  ActiveRecord::Base.connection.create_table :albums do |t|
    t.text :title
  end
end

unless ActiveRecord::Base.connection.table_exists?(:albums_photos)
  ActiveRecord::Base.connection.create_table :albums_photos do |t|
      t.integer :photo_id
      t.integer :album_id
    end
  end

# Return results as an Array of Hashes.
DATABASE.results_as_hash = true