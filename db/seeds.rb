users = 100.times.map do
	User.create( :first_name => Faker::Name.first_name,
					:last_name => Faker::Name.last_name,
					:email => Faker::Internet.email,
					:password => 'password')
end

Question.create [{ :user_id => 1},
								 { :user_id => 2},
								 { :user_id => 3},
								 { :user_id => 4}]

end

answers = 20.times.map do
	Answer.create( :question_id => Faker::Number.number(10),
					:user_id =>Faker::Number.number(10),
					:answer => Faker::HowIMetYourMother.quote)
end

comments = 10.times.map do
	Comment.create( :comment_text => Faker::LordOfTheRings.location,
					:commentable_type => "Question",
					:commentable_id => Faker::Number.number(10),
					:user_id => Faker::Number.number(10)
					)
end

comments = 10.times.map do
	Comment.create( :comment_text => Faker::LordOfTheRings.location,
					:commentable_type => "Answer",
					:commentable_id => Faker::Number.number(10),
					:user_id => Faker::Number.number(10)
					)
end