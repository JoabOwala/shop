# This must be implemented.
# sign_up_params and account_update_params
class RegistrationsController < Devise::RegistrationsController

 private

 # Parameters for user sign-up
 def sign_up_params 
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
 end
 

 # Parameters for account update
 def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
 end
end