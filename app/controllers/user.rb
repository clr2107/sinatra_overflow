get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect "/"
  else
    @errors = "Nope, try again."
    erb :"/users/new"
  end
end

get '/users/:id' do
  @questions = Question.all
  erb :'users/show'
end
