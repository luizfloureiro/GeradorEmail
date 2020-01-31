class Usuario < ApplicationRecord
  has_secure_password
  has_one :aluno
  accepts_nested_attributes_for :aluno

  validates :username, presence: true
  validates_uniqueness_of :username

  validates :password, presence: true,
            length: { minimum: 6 }
  validates :password, confirmation: { case_sensitive: true }
end
