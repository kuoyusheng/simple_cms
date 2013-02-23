class CreateAdminUsersPagesJoin < ActiveRecord::Migration
  def up
  	create_table :Admin_Users_Pages, :id => false do |t|
  		t.integer "admin_user_id"
  		t.integer "page_id"
  end
  	add_index :Admin_Users_Pages, ["admin_user_id", "page_id"]
  ends

  def downd
  	drop_table :Admin_Users_Pages
  end
end
