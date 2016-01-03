class NekotterController < ApplicationController
	def index
		@nekos = Neko.all
	end

	def new
	end

	def create
		Neko.create(text: params[:text])
	end
end
