class ListsController < ApplicationController
 def index
  @lists = List.all
  render json: Yelp.client.search('Dallas',params)
  params = { term: 'food',
           limit: 1,
           category_filter: 'discgolf'
         }

 end



  def search
    parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('San Francisco', parameters)
  end

end
