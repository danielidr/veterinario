class Client < ApplicationRecord
    has_many :pets

    def pets_count
        pets.count
    end
end
