class TriviasController < ApplicationController
  def show
    @trivia_question = TriviaQuestion.all.sample
    @trivia_answers = TriviaAnswer.where(trivia_question_id: @trivia_question.id)
    if params[:answer] == @trivia_answers.find_by(correct: true).answer
      flash.now[:success] = "Correct! (Obviously)"
    else
      flash.now[:danger] = "You're sorely mistaken."
    end
  end
end
