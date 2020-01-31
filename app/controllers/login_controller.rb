class LoginController < ApplicationController

  def index
    if current_user
      @aluno = Aluno.find_by(usuario_id: current_user.id)
    end
  end

  def new
  end

  def create
    @usuario = Usuario.find_by_username(params[:username])

    if @usuario && @usuario.authenticate(params[:password])
      session[:user_id] = @usuario.id
      redirect_to root_path, notice: "Login bem sucedido!"
    else
      flash.now.alert = "Usuário ou senha incorreta."
      render "new"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to login_index_path, notice: "Logout bem sucedido!"
  end

end
