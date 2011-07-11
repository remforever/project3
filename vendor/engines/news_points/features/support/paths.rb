module NavigationHelpers
  module Refinery
    module NewsPoints
      def path_to(page_name)
        case page_name
        when /the list of news_points/
          admin_news_points_path

         when /the new news_point form/
          new_admin_news_point_path
        else
          nil
        end
      end
    end
  end
end
