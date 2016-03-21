class ListsController < ApplicationController

 def index
   @response = Yelp.client.search('Dallas', {limit:20, term: 'food'}).businesses[8].name


 end




end
