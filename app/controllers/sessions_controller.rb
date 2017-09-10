class SessionsController < ApplicationController

  # 1) SessionsController create redirects to login page if :name is nil
   def new
    # if session[:name]
    #   render 'application/hello.html'
    # else
    #   render :new
    # end
 end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to "/"
  end
end

  def destroy
       session.delete :name
       render '/sessions/new.html'
  end


end
