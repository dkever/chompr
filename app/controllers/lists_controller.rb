class ListsController < ApplicationController

 def index
   @factual = Factual.new('HnGcIMpIgJsNSBUohResbRnT96Xx8pLjTpH9dVPo', 'YBw3772ijJMk0TMSBbF9FCaN5x89PiEn3G19uPno')
   @responses = @factual.table("places-us").search("starbucks").filters("$or" => [{"locality" => {"$eq" =>"los angeles"}}, {"locality" => {"$eq" => "santa monica"}}]).page(2, :per => 20).rows
 end

end
