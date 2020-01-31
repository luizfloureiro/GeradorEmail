class AdicionaColunaReferenciaUsuarioEmAluno < ActiveRecord::Migration[6.0]
  def change
    add_reference :alunos, :usuario, foreign_key: true
  end
end
