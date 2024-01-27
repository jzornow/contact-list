# Represents a person in a contact list
class Contact < ApplicationRecord
  validates :phone_number, format: { with: /\A\d{10,11}\z/, message: "Integers only." }

  validates :first_name, format: { with: /\A[A-Za-z]+-*\s*[A-Za-z]+\z/, message: "Names can only contain letters, dashes, and spaces." }

  validates :last_name, format: { with: /\A[A-Za-z]+-*\s*[A-Za-z]+\z/, message: "Names can only contain letters, dashes, and spaces." }
end
