class Review < ApplicationRecord 
    validates :rating, inclusion: { in: 1..10, message: 'The rate must be between 1 and 10' }

    belongs_to :movie
    belongs_to :user
end
