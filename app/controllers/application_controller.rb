class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

    def logged_in?
      !!current_user
    end

      def current_user
        session[:name]
      end

      def welcome
        redirect_to root_path
      end

end


#
# RSpec.describe ApplicationController do
#   describe 'current_user' do
#     it 'returns the name of the current user' do
#       i_am = 'Kate Libby'
#       @request.session[:name] = i_am
#       expect(subject.current_user).to eq i_am
#     end
#
#     it 'returns nil if nobody is logged in' do
#       expect(subject.current_user).to be nil
#     end
