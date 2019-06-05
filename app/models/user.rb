class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # ELI5
  # This is a A-R callback
  # after_save :async_update # Run on create & update

  # private

  # def async_update
    # This will call our user job
    # To enrich our user instance with some cool info from Clearbit
    # UpdateUserJob.perform_later(self.id)
  # end
end

# user = User.last
# user.save
# - it runs after save -> async_update
# - it run the UpdateUserJob
#
#
# When you have a Model callback it will be run for
# each of the records in the DB,  so also when you create an object from the command line || when you create an object from the seeds
#
#
