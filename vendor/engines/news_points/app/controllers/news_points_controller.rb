class NewsPointsController < ApplicationController

  before_filter :find_all_news_points
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @news_point in the line below:
    present(@page)
  end

  def show
    @news_point = NewsPoint.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @news_point in the line below:
    present(@page)
  end

protected

  def find_all_news_points
    @news_points = NewsPoint.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/news_points").first
  end

end
