@user = User.create(email: 'test@test.com', password: 'azeaze', password_confirmation: 'azeaze', first_name: 'Jon', last_name: 'Snow')

puts 'One User was created'
20.times do |post|
  Post.create!(date: Date.today, rationale: "post #{post} rationale content", user_id: @user.id)
end

puts '20 posts have been created'
