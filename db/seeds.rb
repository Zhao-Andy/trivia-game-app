# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TriviaQuestion.create!(question: "Is Andy cool?")
TriviaQuestion.create!(question: "Is Andy smart?")
TriviaQuestion.create!(question: "Is Andy awesome?")
TriviaQuestion.create!(question: "Is Andy funny?")
TriviaQuestion.create!(question: "Is Andy, Andy?")

5.times do |i|
  TriviaAnswer.create!(answer: "Yes", correct: true, trivia_question_id: i + 1)
  TriviaAnswer.create!(answer: "No", correct: false, trivia_question_id: i + 1)
end
