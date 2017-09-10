
 class SecretsController < ApplicationController

   before_action :require_login

   def show

   end

   private

   def require_login
     redirect_to sessions_new_path unless session.include? :name
   end

 end
# Build out the SessionsController.
# Write a current_user method.
# Write a SecretsController using a before_action to prevent any route from being accessed without logging in.
