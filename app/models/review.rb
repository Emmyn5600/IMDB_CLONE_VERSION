class Review < ApplicationRecord
    belongs_to :movie
    belongs_to :user
    
    validates :rating, inclusion: { in: 1..10, message: 'The rate must be between 1 and 10' }
end
