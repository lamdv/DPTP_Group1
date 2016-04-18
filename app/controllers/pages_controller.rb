#the pages_controller contains all of the code for any page inside of / pages
class PagesController < ApplicationController
  #back-end code for pages/index
  def index
  end

  #back-end code for pages/home
  def home
    @post = Post.all
  end

  #back-end code for pages/profile
  def profile
    #grab username from URL as ID
    if (User.find_by_username(params[:id]))
      @username = params[:id]
     # @created_at = user.created_at 
    else
      #redirect to 404
      redirect_to root_path, :notice=> "User not found!!"
    end
    @post = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newpost = Post.new
  end

  #back-end code for pages/explore
  def explore
    @post = Post.all
  end
end
