# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Dashboards
        # Generate secure, embeddable dashboard URLs that allow you to seamlessly
        # integrate Metronome's billing visualizations directly into your application.
        # This endpoint creates authenticated iframe-ready URLs for customer-specific
        # dashboards, providing a white-labeled billing experience without building custom
        # UI.
        #
        # ### Use this endpoint to:
        #
        # - Embed billing dashboards directly in your customer portal or admin interface
        # - Provide self-service access to invoices, usage data, and credit balances
        # - Build white-labeled billing experiences with minimal development effort
        #
        # ### Key response fields:
        #
        # - A secure, time-limited URL that can be embedded in an iframe
        # - The URL includes authentication tokens and configuration parameters
        # - URLs are customer-specific and respect your security settings
        #
        # ### Usage guidelines:
        #
        # - Dashboard types: Choose from invoices, usage, or commits_and_credits
        # - Customization options:
        #   - dashboard_options: Configure whether you want invoices to show zero usage
        #     line items
        #   - color_overrides: Match your brand's color palette
        #   - bm_group_key_overrides: Customize how dimensions are displayed (for the
        #     usage embeddable dashboard)
        # - Iframe implementation: Embed the returned URL directly in an iframe element
        # - Responsive design: Dashboards automatically adapt to container dimensions
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
