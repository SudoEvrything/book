class BooksController < ApplicationController

	before_action :set_book, only: [:show, :edit, :update, :destroy]
	def index
		@books = Book.all
	end

	def show
		
	end

	def new
		@book = Book.new
		@authors = Author.all
	end

	def edit
		@authors = Author.all
	end

	def create
		@book = Book.new(book_params)

		 if @book.save
        format.html { redirect_to @book, notice: "Author was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
	end

	def update
		if @book.update(book_params)
			redirect_to book_path
		else
			render :edit
		end
	end

	def destroy
		@book.destroy
		redirect_to books_path, notice: 'Book deleted'
	end

	private

		def set_book
			@book = Book.find(params[:id])
		end

		def book_params
			params.require(:book).permit(:book_id, :book_title, :author_ids => [])
		end
end
