class ExamplesController < ApplicationController
  def fortune_method
    fortunes = [
      "You will be a millionaire",
      "You will be hungry in 1 hour.",
      "You will die in 7 days."
    ]
    render json: {fortune: fortunes.sample}
  end

  def lotto_method
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: {lotto_numbers: numbers}
  end

  def counter_method
    count = 0
    count = count + 1   # does not work
    render json: {visit_count: count}
  end
end
