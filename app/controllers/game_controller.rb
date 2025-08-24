class GameController < ApplicationController

  def main_header
    render({ :template => "game_templates/main_header"})
  end

  def two_six
    @first_die = rand(1..6)
    @second_die = rand(1..6)
    #sum = first_die + second_die
    #@outcome1 = "#{first_die} 
    #{second_die}"
    render({ :template => "game_templates/dice/2/6"})
  end

  def two_ten
    @rolls = []
    @first_die = rand(1..10)
    @second_die = rand(1..10)
    render({ :template => "game_templates/dice/2/10"})
  end

  def one_twenty
    @first_die = rand(1..20)
    render({ :template => "game_templates/dice/1/20"})
  end

  def five_four
    @first_die = rand(1..4)
    @second_die = rand(1..4)
    @third_die = rand(1..4)
    @fourth_die = rand(1..4)
    @fifth_die = rand(1..4)
    render({ :template => "game_templates/dice/5/4"})
  end
end
