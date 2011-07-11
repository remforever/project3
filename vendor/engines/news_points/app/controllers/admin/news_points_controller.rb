module Admin
  class NewsPointsController < Admin::BaseController

    crudify :news_point, :xhr_paging => true

  end
end
