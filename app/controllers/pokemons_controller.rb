class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end
	def damage
	   	@pokemon = Pokemon.find(params[:id])
	    @pokemon.health = @pokemon.health - 10
	    @pokemon.save
	    if @pokemon.health <= 0
	        @pokemon.destroy
	    end
	    redirect_to trainer_path(current_trainer)
	end
	def new
		@pokemon = Pokemon.new
	end
	def create
		@pokemon = Pokemon.create(pokemon_params)
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to trainer_path(id: current_trainer.id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render :new
		end
	end
	def pokemon_params
		params.require(:pokemon).permit(:name, :ndex)
	end
end