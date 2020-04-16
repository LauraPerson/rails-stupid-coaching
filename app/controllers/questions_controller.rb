class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = params[:answer]
    if @answers == "Hello"
       @answers_coach = "Hello There"
    elsif @answers == "I am going to work"
      return "Great!"
    elsif @answers.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
