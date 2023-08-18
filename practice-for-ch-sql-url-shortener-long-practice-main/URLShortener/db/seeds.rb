# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user1 = User.create!(name: 'CJ')
#   user2 = User.create!(name: 'Flarnie')
#   user3 = User.create!(name: 'Jeff')
#   user4 = User.create!(name: 'Georges St. Pierre')
#   user5 = User.create!(name: 'Ned')

#   course1 = Course.create!(name: 'Ruby 101', instructor_id: user5.id)
#   course2 = Course.create!(name: 'Ruby 102', instructor_id: user5.id, prereq_id: course1.id)

#   Enrollment.create!(student_id: user3.id, course_id: course1.id)
#   Enrollment.create!(student_id: user4.id, course_id: course1.id)
#   Enrollment.create!(student_id: user1.id, course_id: course2.id)
#   Enrollment.create!(student_id: user2.id, course_id: course2.id)

david = User.create!(email: "David@gmail.com")
davis = User.create!(email: "Davis@gmail.com")

su1 = ShortenedUrl.create!(long_url: "testing123",user_id: david.id)
su2 = ShortenedUrl.create!(long_url: "another_testing123", user_id: davis.id)

