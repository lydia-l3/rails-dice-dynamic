class DiceController < ApplicationController
  def apple
    render({ :template => "dice_templates/home"})
  end

  def banana
    @num_dice = params.fetch("one").to_i
    @sides = params.fetch("two").to_i
    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end

    render({ :template => "dice_templates/flexible" })
  end
end
