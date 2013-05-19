class UsuarioSessionsController < ApplicationController
	skip_before_filter :require_login, :only => [:new, :create]
	
	def new
		@usuario = Usuario.new
	end
	def create
		if @usuario = login(params[:username],params[:password])
			redirect_back_or_to(jornadas_path, message: "login OK")
		else
			redirect_back_or_to(jornadas_path, message: "login OK")
			#render action: :new
		end
	end
	def destroy
		logout
		render action: :new
	end
end	