require 'test_helper'
class UserTest < ActiveSupport::TestCase
  test "a user should enter a first name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  
  end
test "a user should enter a last name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  
  end

test "a user should enter a profile name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  
  end
  test "a user should have a unique profile name" do
    user = User.new
    user.profile_name = 'harryconvey'
    user.first_name = 'Harry'
    user.email= 'harryconvey.convey@gmail.com'
    user.last_name = 'Convey'
    user.password = 'harry1999'
    user.password_confirmation = 'harry1999'
    
    assert !user.save
    assert !user.errors[:profile_name].empty?

  end
end
