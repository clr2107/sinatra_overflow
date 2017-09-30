post '/questions/:id/vote' do
  @vote = Vote.new(vote: 1, votable_type: "Question", votable_id: params[:question_id], user_id: current_user.id)
  @votes = Vote.where(votable_id: params[:question_id])
  if @vote.save
    redirect "/question/#{params[:question_id]}"
  else
    @errors = "Nope, try again."
    erb :"/questions/show"
  end
  redirect "/questions#{params[:id]}"
end

post '/questions/:id/downvote' do
  @vote = Vote.new(vote: -1, votable_type: "Question", votable_id: params[:question_id], user_id: current_user.id)
  @votes = Vote.where(votable_id: params[:question_id])
  if @vote.save
    redirect "/question/#{params[:question_id]}"
  else
    @errors = "Nope, try again."
    erb :"/questions/show"
  end
  redirect "/questions#{params[:id]}"
end


# { :vote => 1, :votable_type => "Answer", :votable_id => 2, :user_id => 2},
