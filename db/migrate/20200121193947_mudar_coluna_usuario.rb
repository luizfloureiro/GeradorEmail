class MudarColunaUsuario < ActiveRecord::Migration[6.0]
  def change
  	rename_column :usuarios, :password, :password_digest
  end
end
