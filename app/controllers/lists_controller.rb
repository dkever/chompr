class ListsController < ApplicationController

 def index
   @responses = Yelp.client.search('78748', {limit:20, term: 'food'}).businesses
 end
 
end
