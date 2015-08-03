class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :password
  		t.string :fname
  		t.string :lname #the .string is referencing the datatype
  	end

  end
end
