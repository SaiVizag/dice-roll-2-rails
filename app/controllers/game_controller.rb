class GameController < ApplicationController

  def main_header
    render({ :template => "game_templates/main_header"})
  end

  def two_six
    first_die = rand(1..6)
    second_die = rand(1..6)
    sum = first_die + second_die
    @outcome = "#{first_die} 
    #{second_die}"
    render({ :template => "game_templates/two_six"})
  end

  def two_ten
    @rolls = []
    100.times do
      first_die = rand(1..10)
      second_die = rand(1..10)
      sum = first_die + second_die
      @rolls.push(sum)
    end
    @outcome = "#{first_die} 
    #{second_die}"
    render({ :template => "game_templates/two_ten"})
  end

  def one_twenty
    @die = rand(1..20)
    @outcome = "#{@die}"
    render({ :template => "game_templates/one_twenty"})
  end

  def five_four
    first_die = rand(1..4)
    second_die = rand(1..4)
    third_die = rand(1..4)
    fourth_die = rand(1..4)
    fifth_die = rand(1..4)
    sum = first_die + second_die + third_die + fourth_die + fifth_die
    @outcome = "#{first_die}
    #{second_die}
    #{third_die}
    #{fourth_die}
    #{fifth_die}"    
    render({ :template => "game_templates/five_four"})
  end

  def play_rules
    render({ :template => "game_templates/play_rules"})
  end
end
