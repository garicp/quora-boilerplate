require_relative './config/init.rb'
set :run, true

get '/' do
  @name = "Bob Smith"
  @date = DateTime.now
  erb :"home"
end

# get '/users' do
# 	erb :'users'
# end


# Note that the form had the name in the format name="user[email]" and name="user[password]". In the controller, we can use User.new(params[:user]) instead of User.new(email: params[:user][:email] ...). This means using the name="user[email]" format automatically transforms the value sent by the form into a hash.
post '/signup' do
  user = User.new(params[:user])
  if user.save
    # what should happen if the user is saved?
  else
    # what should happen if the user keyed in invalid date?
  end
end