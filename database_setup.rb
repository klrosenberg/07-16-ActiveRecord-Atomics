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