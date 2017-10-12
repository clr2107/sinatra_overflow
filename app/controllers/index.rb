get '/' do
  erb :index
end

post '/login' do
  @user = User.find_by(email: params[:user][:email])
  if User.authenticate(params[:user][:email], params[:user][:password])
    session[:user_id]  = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = "Nope, try again."
    erb :index
  end
end

get '/logout' do
  session.clear
  redirect "/"
end
