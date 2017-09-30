post '/questions' do
  @question = Question.new( question_text: params[:question_text],
               user_id: current_user.id)
  if @question.save
    redirect "/users/#{current_user.id}"
  else
    @errors = "Nope, try again."
    erb :"/users/show"
  end
end

delete '/questions/:id' do
  question = Question.find_by(id: params[:id])
  question.destroy!
  redirect "/users/#{current_user.id}"
end

get '/question/:id' do
  @question = Question.find_by(id: params[:id])
  @answers = @question.answers
  erb :'questions/show'
end
