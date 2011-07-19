module NavigationHelpers
  module Refinery
    module Bets
      def path_to(page_name)
        case page_name
        when /the list of bets/
          admin_bets_path

         when /the new bet form/
          new_admin_bet_path
        else
          nil
        end
      end
    end
  end
end
