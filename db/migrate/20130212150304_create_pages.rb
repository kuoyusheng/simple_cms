class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer  "subject_id" 
      t.string   "name", :limit => 20
      t.string   "permalink", :limit => 20
      t.integer  "position"
      t.boolean  "visilble",:default => false
     t.datetime "created_at"
     t.datetime "updated_at"	
	   t.timestamps
    end 
  add_index("pages","subject_id")
  add_index("pages","permalink")

  end

  def self.down
  	drop_table :pages
  	
  end
end
