class Aluno < ApplicationRecord
	belongs_to :usuario

	validates :nome, presence: true
	validates :matricula, presence: true
	validates :email, presence: true

	validates_uniqueness_of :matricula, :email
end
