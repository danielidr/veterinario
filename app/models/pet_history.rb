class PetHistory < ApplicationRecord
    belongs_to :pet
    validates_presence_of :weight, :heigth, :description
    validates :weight, numericality: { greater_than: 0, less_than: 100 }
    validates :heigth, numericality: { greater_than: 0, less_than: 200 }
end
