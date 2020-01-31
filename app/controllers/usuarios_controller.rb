class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.all

    if current_user
      @aluno = Aluno.find_by(usuario_id: current_user.id)
    end
  end

  def show
    @usuario = Usuario.find(params[:id])

    if current_user
      @aluno = Aluno.find_by(usuario_id: current_user.id)
    end
  end

  def new
    @usuario = Usuario.new
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def create
    @usuario = Usuario.new(user_params)
    if @usuario[:username].starts_with?('admin')
      if @usuario.save
        session[:user_id] = @usuario.id
        redirect_to root_path, notice: "Administrador cadastrado."
      else
        flash[:alert] = "Não foi possível realizar o cadastro."
        render 'new'
      end
    else
      if @usuario.save
        session[:user_id] = @usuario.id
        flash[:notice] = "Usuário cadastrado com sucesso!"
        redirect_to root_path, notice: "Usuário cadastrado com sucessso!"
      end
    end
  end

  def update
    @usuario = Usuario.find(params[:id])

    if @usuario.update(user_edit_params)
      redirect_to usuarios_path
    else
      render "edit"
    end
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy

    redirect_to usuarios_path
  end

  private

  def aluno_params
    params.require(:aluno).permit(:email)
  end

  def user_edit_params
    params.require(:usuario).permit(:username)
  end

  def user_params
    params.require(:usuario).permit(:username, :password, :password_confirmation)
  end

end
