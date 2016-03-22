class ListsController < ApplicationController

 def index
   @responses = Yelp.client.search('78749', {term: 'food'}).businesses
 end

end
