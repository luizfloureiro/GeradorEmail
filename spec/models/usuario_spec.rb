#require 'rspec'
require 'rails_helper'

describe 'Usuario', type: :model do

  let (:usuario) { Usuario.new }
  subject { usuario }

  describe 'associations' do
    it { is_expected.to have_one(:aluno) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_uniqueness_of(:username) }

    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_length_of(:password).is_at_least(6) }
  end
end