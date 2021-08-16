class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answers = {
      ok: 'Great!',
      question: 'Silly question, get dressed and go to work!.',
      default: "I don't care, get dressed and go to work!"
    }

    if params[:answer] == 'I am going to work'
      @answer = answers[:ok]
    elsif params[:answer].end_with?('?')
      @answer = answers[:question]
    else
      @answer = answers[:default]
    end
  end
end
