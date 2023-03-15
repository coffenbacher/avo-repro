class Category < ApplicationRecord
  has_many :widgets

  def self.ransackable_attributes(auth_object = nil)
    ["id", "name"]
  end
end
