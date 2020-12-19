class Magazine < ApplicationRecord
    has_many :oenologist_magazines
    has_many :oenologists, through: :oenologist_magazines
end
