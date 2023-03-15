class Widget < ApplicationRecord
  belongs_to :category

  def self.ransackable_attributes(auth_object = nil)
    ["id", "name"]
  end
end
