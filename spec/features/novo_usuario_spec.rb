require 'rails_helper'

RSpec.feature 'Novo Usuario', type: :feature do
  scenario 'Cadastro de novo usuário' do
    visit root_path

    expect(page).to have_text('Sign Up')
  end
end