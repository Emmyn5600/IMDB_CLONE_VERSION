class Movie < ApplicationRecord
    paginates_per 4

    extend FriendlyId
    friendly_id :title, use: :slugged
    
    validates :title, :description, presence: true
    validates :category, presence: true
    validates :movie_image, presence: true

    has_one_attached :movie_image

    belongs_to :category
    has_many :reviews
end
