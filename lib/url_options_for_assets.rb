module Sprockets
  module Helpers
    module RailsHelper
      def asset_path_with_url_options(source, options = {})
        uri = Addressable::URI.parse(asset_path_without_url_options(source, options))
        default_url_options = url_options.dup.delete_if { |k,v|
          [:host, :port, :protocol, :_path_segments, :script_name].include?(k)
        }
        uri.query_values = default_url_options.merge(uri.query_values || {})
        uri.to_s
      end

      alias_method_chain :asset_path, :url_options
      alias_method :path_to_asset, :asset_path_with_url_options # aliased to avoid conflicts with an asset_path named route
    end
  end
end
