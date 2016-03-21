class ListsController < ApplicationController

 def index
   @response = render json: Yelp.client.search('Dallas', {limit:10, term: 'food'}).businesses[9].name
 end




end
