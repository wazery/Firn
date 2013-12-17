class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "first_name", :limit => 25
    	t.string "last_name", :limit => 50
    	t.string "user_name", :limit => 15, :null => false
    	t.string "email", :null => false
    	t.string "password", :limit => 15, :null => false

    	t.timestamps
    end
  end
end
