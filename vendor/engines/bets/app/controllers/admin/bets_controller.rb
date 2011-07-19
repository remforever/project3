module Admin
  class BetsController < Admin::BaseController

    crudify :bet,
            :title_attribute => 'result', :xhr_paging => true


    def add_team
      if params[:league]
        @teams=Team.where("league_id=?",params[:league])
        respond_to do |format|
          format.js
        end
      end
    end

    def search_match
      @match=FootballMatch.find(params[:match_id])
      respond_to do |format|
        format.js
      end
    end

    def settings

    end


  end
end
