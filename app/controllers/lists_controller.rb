class ListsController < ApplicationController
 def index
  @lists = List.all
 end



  def search
    parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('San Francisco', parameters)
  end
  
end
