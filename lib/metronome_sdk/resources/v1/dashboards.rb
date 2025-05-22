# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Dashboards
        # Retrieve an embeddable dashboard url for a customer. The dashboard can be
        # embedded using an iframe in a website. This will show information such as usage
        # data and customer invoices.
        #
        # @overload get_embeddable_url(customer_id:, dashboard:, bm_group_key_overrides: nil, color_overrides: nil, dashboard_options: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param dashboard [Symbol, MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::Dashboard] The type of dashboard to retrieve.
        #
        # @param bm_group_key_overrides [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>] Optional list of billable metric group key overrides
        #
        # @param color_overrides [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride>] Optional list of colors to override
        #
        # @param dashboard_options [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::DashboardOption>] Optional dashboard specific options
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse]
        #
        # @see MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams
        def get_embeddable_url(params)
          parsed, options = MetronomeSDK::V1::DashboardGetEmbeddableURLParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/dashboards/getEmbeddableUrl",
            body: parsed,
            model: MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
