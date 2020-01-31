class AlunosController < ApplicationController

	def index
		if current_user
			@usuario = Usuario.find(current_user.id)
			@aluno = Aluno.find_by(usuario_id: current_user.id)
			#@alunos = Aluno.all


		end
	end

	def show
		if current_user
			@aluno = Aluno.find_by(usuario_id: current_user.id)
		end
	end

	def new
		@usuario = Usuario.find(params[:usuario_id])
		@aluno = Aluno.new
	end

  def edit
		@usuario = Usuario.find(params[:usuario_id])
    @aluno = Aluno.find_by(usuario_id: current_user.id)
  end

	def create
		@usuario = Usuario.find(params[:usuario_id])
		@aluno = current_user.build_aluno(aluno_params)
		#debugger
		if @aluno.save
			flash[:success] = "Dados salvos com sucesso."
			redirect_to usuario_path(current_user.id)
		else
			flash[:alert] = "Não foi possível salvar os dados referente ao aluno."
			render 'new'
		end
  end

  def update
		@usuario = Usuario.find(params[:usuario_id])
    @aluno = Aluno.find_by(usuario_id: current_user.id)
		#debugger
    if @aluno.update(aluno_update_params)
			flash[:success] = "Alterações salvas com sucesso!"
      redirect_to usuario_aluno_path(@aluno.usuario_id, @aluno)
    else
      flash[:alert] = "Não foi possível salvar as alterações!"
			render 'edit'
    end
  end

	private
	def aluno_params
		params.require(:aluno).permit(:nome, :matricula, :telefone, :email)
	end

	def aluno_update_params
		params.permit(:uffmail)
	end

end
