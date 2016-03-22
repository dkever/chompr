class ListsController < ApplicationController

 def index
   @responses = Yelp.client.search('78704', {limit:20, term: 'food'}).businesses
 end

end
