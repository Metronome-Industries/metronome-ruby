# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Dashboards
        # Retrieve an embeddable dashboard url for a customer. The dashboard can be
        #   embedded using an iframe in a website. This will show information such as usage
        #   data and customer invoices.
        #
        # @param params [MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::Dashboard] :dashboard The type of dashboard to retrieve.
        #
        #   @option params [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>] :bm_group_key_overrides Optional list of billable metric group key overrides
        #
        #   @option params [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride>] :color_overrides Optional list of colors to override
        #
        #   @option params [Array<MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::DashboardOption>] :dashboard_options Optional dashboard specific options
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse]
        #
        def get_embeddable_url(params)
          parsed, options = MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/dashboards/getEmbeddableUrl",
            body: parsed,
            model: MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse,
            options: options
          )
        end

        # @param client [MetronomeSDK::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
