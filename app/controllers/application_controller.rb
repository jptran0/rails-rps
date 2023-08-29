class ApplicationController < ActionController::Base
  skip_forgery_protection

  def home
    render({ :template => "game_templates/home" })
  end

  def rock
    @comp_choice = ["rock", "paper", "scissors"].sample

    if @comp_choice == "rock"
      @result = "tie"
    elsif @comp_choice == "paper"
      @result = "lost"
    else
      @result = "won"
    end
    render({ :template => "game_templates/rock" })
  end

  def paper
    @comp_choice = ["rock", "paper", "scissors"].sample

    if @comp_choice == "rock"
      @result = "won"
    elsif @comp_choice == "paper"
      @result = "tie"
    else
      @result = "lost"
    end
    render({ :template => "game_templates/paper" })
  end

  def scissors
    render({ :template => "game_templates/scissors" })
  end
end
