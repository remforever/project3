class BetsController < ApplicationController

  before_filter :find_all_bets
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @bet in the line below:
    present(@page)
  end

  def show
    @bet = Bet.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @bet in the line below:
    present(@page)
  end

protected

  def find_all_bets
    @bets = Bet.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/bets").first
  end

end
