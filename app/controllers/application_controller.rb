
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  def show
    @bio = Bio.find_by_id(params['id'])
  end
  
  
  def new
  end
 
  def create
  b = Bio.new
   b.name = params['name']
   b.image_url = params['image_url']
  b.biography = params['biography']
  b.save
  redirect_to "/bio/#{ b.id }"
end
  
  def edit                           
  @bio = Bio.find_by_id(params['id'])
  end
  
 def update
  b = Bio.find_by_id(params['id'])
   b.name = params['name']
   b.image_url = params['image_url']
  b.biography = params['biography']
  b.save
  redirect_to "/bio/#{ b.id }"
end
 def destroy
  b = Bio.find_by_id(params['id'])
  b.destroy
end
     
end