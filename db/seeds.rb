User.create [{ :first_name => 'brad', :last_name => 'sloan', :email => 'bsloan@umich.edu', :password => 'brad'},
             { :first_name => 'david', :last_name => 'thomas', :email => 'david@david.com', :password => 'david'},
             { :first_name => 'jon', :last_name => 'jones', :email => 'jon@jon.com', :password => 'jon'},
             { :first_name => 'mike', :last_name => 'smith', :email => 'mike@mike.com', :password => 'mike'}]


Question.create [{ :question_text => 'what is love?', :user_id => 1},
	               { :question_text => 'are you there?', :user_id => 2},
	               { :question_text => 'sup?', :user_id => 3},
	               { :question_text => 'sports?', :user_id => 1}]

Answer.create [{ :answer_text => 'baby dont hurt me', :user_id => 1, :question_id => 1},
	             { :answer_text => 'nope', :user_id => 2, :question_id => 2},
	             { :answer_text => 'nmu', :user_id => 3, :question_id => 3},
	             { :answer_text => 'love em', :user_id => 1, :question_id => 4}]

Comment.create [{ :comment_text => 'asdfsafdsafdsaf', :user_id => 1, :commentable_id => 1, :commentable_type => "Answer"},
	              { :comment_text => 'sadfsdsdafsadf', :user_id => 2, :commentable_id => 2, :commentable_type => "Question"},
	              { :comment_text => 'sdafasdfsdaf', :user_id => 3, :commentable_id => 3, :commentable_type => "Answer"},
	              { :comment_text => 'ldfgdsfgdsfdsfgdsfgd', :user_id => 1, :commentable_id => 4, :commentable_type => "Question"},
	              { :comment_text => 'asdfsafdsafdsaf', :user_id => 1, :commentable_id => 1, :commentable_type => "Answer"},
	              { :comment_text => 'sadfsdadgffsadf', :user_id => 2, :commentable_id => 2, :commentable_type => "Question"},
	              { :comment_text => 'sdafasddfgsfsdaf', :user_id => 3, :commentable_id => 3, :commentable_type => "Answer"},
	              { :comment_text => 'ldfgdsffgdsfgdsfgd', :user_id => 1, :commentable_id => 4, :commentable_type => "Question"}]

	Vote.create [{ :vote => 1, :votable_type => "Question", :votable_id => 1, :user_id => 1},{ :vote => 1, :votable_type => "Answer", :votable_id => 2, :user_id => 2},
		{ :vote => 1, :votable_type => "Question", :votable_id => 3, :user_id => 3},
		{ :vote => 1, :votable_type => "Answer", :votable_id => 4, :user_id => 4},
		{:vote => 1, :votable_type => "Question", :votable_id => 5, :user_id => 5},
		{:vote => 1, :votable_type => "Question", :votable_id => 6, :user_id => 6},
		{:vote => 1, :votable_type => "Answer", :votable_id => 7, :user_id => 7},
		{:vote => 1, :votable_type => "Answer", :votable_id => 8, :user_id => 8}]
