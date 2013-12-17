class AlterUsernameColumn < ActiveRecord::Migration
  def up
  	rename_column('users', 'user_name', 'username')
  end

  def down
  end
end
