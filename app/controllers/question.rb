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

post '/questions/:id/vote' do
  @vote = Vote.new(vote: 1, votable_type: "Question", votable_id: params[:question_id], user_id: current_user.id)
  @votes = Vote.where(votable_id: params[:question_id])
  @question = Question.find_by(id: params[:question_id])
  if request.xhr?
    if @vote.save
      @question.vote_sum.to_s
    else
      @errors = "Nope, try again."
      erb :"/questions/show"
    end
  else
    if @vote.save
      redirect "/question/#{params[:question_id]}"
    else
      @errors = "Nope, try again."
      erb :"/questions/show"
    end
  end
end

post '/questions/:id/downvote' do
  @vote = Vote.new(vote: -1, votable_type: "Question", votable_id: params[:question_id], user_id: current_user.id)
  @votes = Vote.where(votable_id: params[:question_id])
  @question = Question.find_by(id: params[:question_id])
  if request.xhr?
    if @vote.save
      @question.vote_sum.to_s
    else
      @errors = "Nope, try again."
      erb :"/questions/show"
    end
  else
    if @vote.save
      redirect "/question/#{params[:question_id]}"
    else
      @errors = "Nope, try again."
      erb :"/questions/show"
    end
  end
end
