class ListsController < ApplicationController

 def index
<<<<<<< HEAD
   @responses = Yelp.client.search('78704', {limit:20, term: 'food'}).businesses
=======
   @responses = Yelp.client.search('78749', {term: 'food'}).businesses
>>>>>>> 6a8f715759b377852b1c577bb3726bd848790195
 end

end
