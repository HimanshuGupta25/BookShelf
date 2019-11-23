class Api::V1::BooksController < ApplicationController

  def search
    @books = Book.fetch_results(params[:term].downcase)
    respond_to do |format|
        format.json
    end
  end

end
