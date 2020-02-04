#require 'rspec'
require 'rails_helper'

describe 'AlunosHelper', type: :helper do
  describe 'methods' do
    context '.gera_opcoes' do
      it 'gera 5 opções para o uffmail' do
        expect(helper.gera_opcoes('Nome Usuario')).to match_array %w(nomeusuario@uffmail.com nome.usuario@uffmail.com nome_usuario@uffmail.com n.usuario@uffmail.com nome.u@uffmail.com)
      end
    end
  end
end