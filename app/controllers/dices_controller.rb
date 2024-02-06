

class DicesController < ApplicationController
  def homepage
    render({ template: "dices_templates/home" })
  end

  def dynamic
    @num_dice = params.fetch("zebra").to_i

    @num_sides = params.fetch("sides").to_i

    @rolls = []
    @num_dice.times do
      die = rand(1..@num_sides)

      @rolls.push(die)
    end
    render({ template: "dices_templates/dynamic_dice" })
  end

end
