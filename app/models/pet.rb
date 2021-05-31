class Pet < ApplicationRecord

  has_many :pet_histories
  belongs_to :client

  validates_presence_of :name

  def history_count
    pet_histories.count
  end

  def avg_weight
    return if pet_histories.count == 0
    w = 0
    suma = 0
    pet_histories.each do |history|
      w = history.weight
      suma = suma + w
    end
    prom = (suma/pet_histories.count).ceil(2)
  end

  def avg_height
    return if pet_histories.count == 0
    h = 0
    suma = 0
    pet_histories.each do |history|
      h = history.heigth
      suma = suma + h
    end
    prom = (suma/pet_histories.count).ceil(2)
  end

  def max_weight
    (pet_histories.map { |history| history.weight}).max
  end

  def max_height
    (pet_histories.map { |history| history.heigth}).max
  end

end
