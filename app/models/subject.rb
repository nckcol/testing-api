class Subject < ApplicationRecord
    has_many :tests, dependent: :destroy
end
