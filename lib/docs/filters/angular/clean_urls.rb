module Docs
  class Angular
    class CleanUrlsFilter < Filter
      def call
        html.gsub! "angularjs.org/#{Angular.release}/docs/partials/api/", "angularjs.org/#{Angular.release}/docs/api/"
        html.gsub! %r{angularjs.org/#{Angular.release}/docs/api/(.+?)\.html}, "angularjs.org/#{Angular.release}/docs/api/\1"
        html
      end
    end
  end
end
