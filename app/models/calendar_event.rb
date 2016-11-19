class CalendarEvent < ApplicationRecord
    validates :hour, presence: true
    validates :minutes, presence: true
    validates :meridiem, presence: true
    validates :name, presence: true, length: {minimum: 1}
    validates :date, presence: true
end
