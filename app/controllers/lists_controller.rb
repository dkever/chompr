class ListsController < ApplicationController

 def index
   @responses = Yelp.client.search('Austin', {limit:20, term: 'food'}).businesses
 end
end
