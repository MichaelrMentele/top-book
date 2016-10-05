class BooksController < ApplicationController
  before_action :require_user

  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def vote
    @book = Book.find(params[:id])
    @vote = Vote.create(voteable: @book, user: current_user, vote: params[:vote])

    respond_to do |format|
      format.html do
        if @vote.valid?
          flass[:notice] = "Your vote was counted."
        else
          flass[:error] = "You've voted on this book in this category already."
        end
        redirect_to :back
      end
      format.js
    end
  end
end