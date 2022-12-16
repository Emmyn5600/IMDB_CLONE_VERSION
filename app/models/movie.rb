class Movie < ApplicationRecord
    paginates_per 4
    has_one_attached :movie_image

    extend FriendlyId
    friendly_id :title, use: :slugged

    belongs_to :category
    has_many :reviews
end
