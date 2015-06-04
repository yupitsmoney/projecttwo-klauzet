class UsersController < ApplicationController

  #but wait, there more: if I have a method named index, I need
  #a view named what?..and more importantly where do I need to put
  # this view??
  def index
    
  end

  #return a view named 'new' that will be used to register a new user
  def new
    @user = User.new
  end



  #full listing of users_controller ommitted 

  def create

      if User.create(user_params)
        #redicret to signed in
        flash[:success] = 'you are registered'
        redirect_to users_path
      else

        flash[:error] = 'registration has failed'

        redirect_to new_session_path

      end
  end

private

  def user_params
    params.require(:user).permit(:email,:password,:password_confirmation)
  end

 end
