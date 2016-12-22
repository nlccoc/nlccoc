class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    @header_bg='bg-dark'
    
    respond_to do |format|
      format.html
      format.json { render json: @categories.as_json(:include => :events)}
    end
  end
end
