class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = params[:answer]
    if @answers == 'Hello'
      @answers_coach = 'Hello There'
    elsif @answers == 'I am going to work'
      @answers_coach = 'Great!'
    elsif @answers.include? '?'
      @answers_coach = 'Silly question, get dressed and go to work!'
    else
      @answers_coach = 'I dont care, get dressed and go to work!'
    end
  end
end
