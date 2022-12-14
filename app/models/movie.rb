class Movie < ApplicationRecord
    paginates_per 4

    extend FriendlyId
    friendly_id :title, use: :slugged
end
