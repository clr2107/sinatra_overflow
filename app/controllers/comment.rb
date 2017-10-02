post '/comments' do
  @comment = Comment.new( comment_text: params[:comment_text],
               user_id: current_user.id, commentable_id: params[:thing_id], commentable_type: params[:commentable_type])
  if @comment.save
    redirect "/question/#{params[:question_id]}"
  else
    @errors = "Nope, try again."
    erb :"/questions/show"
  end
end

delete '/comments/:id' do
  comment = Comment.find_by(id: params[:id])
  comment.destroy!
  redirect "/question/#{params[:question_id]}"
end

post '/comments/:id/vote' do
  @vote = Vote.new(vote: 1, votable_type: "Comment", votable_id: params[:id], user_id: current_user.id)
  @votes = Vote.where(votable_id: params[:question_id])
  if @vote.save
    redirect "/question/#{params[:question_id]}"
  else
    @errors = "Nope, try again."
    erb :"/questions/show"
  end
  redirect "/questions/#{params[:id]}"
end

post '/comments/:id/downvote' do
  @vote = Vote.new(vote: -1, votable_type: "Comment", votable_id: params[:id], user_id: current_user.id)
  @votes = Vote.where(votable_id: params[:question_id])
  if @vote.save
    redirect "/question/#{params[:question_id]}"
  else
    @errors = "Nope, try again."
    erb :"/questions/show"
  end
  redirect "/questions#{params[:id]}"
end
