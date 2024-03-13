class Test < ApplicationRecord
    validates :name, presence: true
    validates :lastname, presence: true
    validates :message, presence: true, length: { minimum: 10 }
end
