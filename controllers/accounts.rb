class AccountController < ApplicationController

   # registration for user
   get '/register' do
      erb :register
   end

   post '/register' do
      p params
      # calls method with arg of username from register form
      # if exists, says so, if not, proceeds to create one.
      # and starts session loading user info and redirects to root
      if does_user_exist(params[:user_name]) == true
         return { :message => 'womp, womp... user exists'}.to_json
      end
      # if we make it this far user doesn't exist.
      # let's make it
      user = Account.create(user_name: params[:user_name], user_email: params[:user_email], password: params[:password])
      p user
      # a login sets a session going ("session is a hash")
      session[:current_user] = user  # user
      redirect '/' # instead of calling a view to render...
      # i want to rediret to a route
   end

   get '/' do
      authorization_check # for protected resources
      # instance var created so wrege can display in erbs
      @user_name = session[:current_user].user_name
      @items = Item.all
      erb :read
   end

   get '/authorization_check' do
      erb :not_authorized # shows user this message
   end

   # login
   get '/login' do
      erb :login
   end

   post '/login' do
      # call .authenticate method w/ params from login form
      # if user exists, load them into session
      user = Account.authenticate(params[:user_name], params[:password])
      if user # if user (not nil) returned by authenticate method
         session[:current_user] = user
         redirect '/'
      else # send to login page with this message:
         @message = 'Sorry. Email or password not found. Please Try again.'
         erb :login
      end
   end

   # use link or button to implement this...
   get '/logout' do
      authorization_check
      session[:current_user] = nil # end session
      redirect '/'
   end

end # end of class
