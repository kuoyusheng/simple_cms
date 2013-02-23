class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t| 
      t.string "name" ,:limit => 25
      t.integer "position"
      t.boolean "visible" , :default => false 
      t.datetime "created_at"
      t.datetime "updated_at"	
      t.timestamps
    end 
  end

  def self.down
  	drop_table :subjects
  	
  end
end


