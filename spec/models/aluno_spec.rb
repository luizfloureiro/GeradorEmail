#require 'rspec'
require 'rails_helper'

describe 'Aluno', type: :model do

  let(:aluno) { Aluno.new }
  subject { aluno }

  describe 'associations' do
    it { is_expected.to belong_to(:usuario) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:nome) }

    it { is_expected.to validate_presence_of(:matricula) }
    it { is_expected.to validate_uniqueness_of(:matricula) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
  end
end