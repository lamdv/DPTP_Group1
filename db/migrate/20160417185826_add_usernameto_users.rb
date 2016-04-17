class AddUsernametoUsers < ActiveRecord::Migration
  def change #anything inside this method is translated to mySQL& edit in database (currently,SQLite)
  add_column :users, :username, :string #Add to users table col username type string
  add_index :users, :username, unique: true #index username for quick look + make sure it unique
  end
end
