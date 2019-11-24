class Employee < ApplicationRecord
  belongs_to :city1,    class_name: "City"
  belongs_to :city2,    class_name: "City"
  belongs_to :state1,   class_name: "State"
  belongs_to :state2,   class_name: "State"
  belongs_to :country1, class_name: "Country"
  belongs_to :country2, class_name: "Country"
end
