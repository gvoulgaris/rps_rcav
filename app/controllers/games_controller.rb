class GamesController < ApplicationController
  def play_rock
    @hand_user = "fa-hand-rock-o"
    @user_move = "Rock"

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @hand = "fa-hand-rock-o"
      @outcome = "tied"
      @label = "label-warning"
    elsif @computer_move == "Paper"
      @hand = "fa-hand-paper-o"
      @outcome = "lost"
      @label = "label-danger"
    else
      @hand = "fa-hand-scissors-o"
      @outcome = "won"
      @label= "label-success"
    end

    render("games/play_rock.html.erb")
  end

  def play_paper
    @hand_user = "fa-hand-paper-o"
    @user_move = "Paper"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Paper"
      @outcome = "tied"
      @label = "label-warning"
      @hand = "fa-hand-paper-o"
    elsif @computer_move == "Scissors"
      @outcome = "lost"
      @hand = "fa-hand-scissors-o"
      @label = "label-danger"
    else
      @outcome = "won"
      @hand = "fa-hand-rock-o"
      @label = "label-success"
    end
    render("games/play_paper.html.erb")
  end

  def play_scissors
    @hand_user = "fa-hand-scissors-o"
    @user_move = "Scissors"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Scissors"
      @outcome = "tied"
      @label = "label-warning"
      @hand = "fa-hand-scissors-o"
    elsif @computer_move == "Rock"
      @outcome = "lost"
      @label = "label-danger"
      @hand = "fa-hand-paper-o"
    else
      @outcome = "won"
      @label = "label-success"
      @hand = "fa-hand-rock-o"
    end
    render("games/play_scissors.html.erb")
  end
end
