users = 100.times.map do
	User.create( :first_name => Faker::Name.first_name,
					:last_name => Faker::Name.last_name,
					:email => Faker::Internet.email,
					:password => 'password')
end

questions = 20.times.map do
	Questions.create( :user_id => Faker::Number(10),
					:question => Faker::Name.RickAndMorty.quote)
end

answers = 20.times.map do
	Answers.create( :question_id => Faker::Number(10),
					:user_id =>Faker::Number(10),
					:answer => Faker::HowIMetYourMother.quote)

comments = 20.times.map do
	Comments.create( :comment => Faker::LordOfTheRings.location,
					:question_id => Faker::Number(10),
					:answer_id => Faker::Number(10),
					:user_id => Faker::Number(10)
					)
