post '/answers' do
  @answer = Answer.new( answer_text: params[:answer_text],
               user_id: current_user.id, question_id: params[:question_id])
  if @answer.save
    redirect "/question/#{params[:question_id]}"
  else
    @errors = "Nope, try again."
    erb :"/questions/show"
  end
end

delete '/answers/:id' do
  answer = Answer.find_by(id: params[:id])
  answer.destroy!
  redirect "/question/#{params[:question_id]}"
end
