class BookmarksController < ApplicationController
  
  def index
    matching_bookmarks = Bookmark.where({ :user_id => @current_user.id })
    @list_of_bookmarks = matching_bookmarks.order({ :created_at => :desc })

    render({ :template => "bookmark_templates/index.html.erb" })
  end

  def create
    the_bookmark = Bookmark.new
    the_bookmark.movie_id = params.fetch("query_movie_id")
    the_bookmark.user_id = @current_user.id
    the_bookmark.save

    redirect_to("/bookmarks")
  end

  def destroy
    the_id = params.fetch("path_id")

    matching_bookmarks = Bookmark.where({ :id => the_id })
    the_bookmark = matching_bookmarks.at(0)
    the_bookmark.destroy
    redirect_to("/bookmarks")
  end
end
