#require 'rspec'
require 'rails_helper'

describe 'UffMailGenerator', '#opcoes' do
  context "ao ser instanciado com um nome" do
    it "cria 5 opcoes para o uffmail" do
      opcoes = UffMailGenerator.new("Nome Usuario").gerar
      expect(opcoes).to eq %w(nomeusuario@uffmail.com nome.usuario@uffmail.com nome_usuario@uffmail.com n.usuario@uffmail.com nome.u@uffmail.com)
    end
  end

end