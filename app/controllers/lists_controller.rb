class ListsController < ApplicationController

 def index
   @response = render json: Yelp.client.search('Dallas', {limit:1, term: 'food'}).businesses[0].name
 end




end
