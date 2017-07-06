class CreateUsers < ActiveRecord::Migration
  
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age

      t.timestamps null: false
    end
  end
end


#Retrieve all users: 
#-- User.all 

#Know how to get the first user:
#-- User.first

#Know how to get the last user:
#-- User.last

#Know how to get users sorted by their first name (order by first_name DESC)
#-- User.order(first_name: :desc)

#Get the record of the user whose id is 3 and UPDATE the person's last_name to something else. Use .find and .save
#-- u = User.find(3)
#-- u.update(last_name: "Smith")

#Know how to delete a record of a user whose id is 4
#-- User.find(4).destroy

#ERROR MESSAGES
#-- User.errors.full_messages

#SAVE
#-- User.save

#Valid????
#-- User.valid?














# Create a new project called 'user_login_project'. Create a new model called 'User' that has the following fields/attributes



# Please do the following

# Create a new project, using rails new user_login_project -------- DONE
# Create a new model called 'User' with the information above.  -------- DONE
# Rails will automatically create the automatic increment of the primary field called ID as well as created_at and updated_at time stamps.  -------- DONE
# Create a few records in the users table using the Rails console.  -------- DONE
# Now add validations to the model so that...
# it requires the presence of the all four fields.  -------- DONE
# it requires the age to be numeric. -------- DONE
# it requires the first_name and the last_name to be at least 2 characters each. -------- DONE
# it requires the age to be at least 10 and below 150 (look into http://apidock.com/rails/ActiveModel/Validations/HelperMethods/validates_numericality_of for some help). -------- DONE
# Get familiar with .save, .valid? -------- DONE
# use .errors and .errors.full_messages so that you can see/display the error messages when the validations are failing
# Using the Rails console...
# See if it allows you to insert some records when the fields are not meeting the validation rules we set (e.g. try to create a record where age is 5 or above 150, or where the first name is just one character, etc).
# Make sure your console returns appropriate error messages when you try to save something that's not meeting the validation rules.
# Know how to retrieve all users.
# Know how to get the first user.
# Know how to get the last user.
# Know how to get the users sorted by their first name (order by first_name DESC).
# See ordering rules and more here: http://guides.rubyonrails.org/active_record_querying.html#ordering
# Get the record of the user whose id is 3 and UPDATE the person's last_name to something else. Know how to do this directly in the console using .find and .save.
# Know how to delete a record of a user whose id is 4 (use something like User.find(2).destroy...).