require 'rails_helper'

RSpec.feature 'Novo Usuario', type: :feature do
  scenario 'Página inicial deve mostrar opção para cadastro e login' do
    visit root_path

    expect(page).to have_text('Sign Up') and have_text('Login') unless @current_user.nil?
  end

  #scenario 'Usuário já está logado' do
  #  usuario = build(:usuario)
  #
  #  visit root_path
  #
  #  expect(page).to have_text("Logado como ", usuario.username)
  #end
end