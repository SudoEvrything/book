module Api
	module V1
		class AuthorsController < ApplicationController
			respond_to :json
			before_action :find_model, only: [ :show ]
			
			def index
				respond_with Author.all
			end

			def show
			end
		
			private
			def find_model
				@author = Author.find(params[:id])
			end
		end
		
	end
end