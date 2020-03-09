# frozen_string_literal: true

module Metabase
  module Endpoint
    module Dashboard
      # Fetch all dashboards.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidashboard
      def dashboards(**params)
        get('/api/dashboard', params)
      end

      # Fetch a dashboard.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidashboardid
      def dashboard(dashboard_id, **params)
        get("/api/dashboard/#{dashboard_id}", params)
      end
    end
  end
end
