# typed: strong

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
        # Use this endpoint to:
        #
        # - Embed billing dashboards directly in your customer portal or admin interface
        # - Provide self-service access to invoices, usage data, and credit balances
        # - Build white-labeled billing experiences with minimal development effort
        #
        # Key response fields:
        #
        # - A secure, time-limited URL that can be embedded in an iframe
        # - The URL includes authentication tokens and configuration parameters
        # - URLs are customer-specific and respect your security settings
        #
        # Usage guidelines:
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
        sig do
          params(
            customer_id: String,
            dashboard:
              MetronomeSDK::V1::DashboardGetEmbeddableURLParams::Dashboard::OrSymbol,
            bm_group_key_overrides:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride::OrHash
              ],
            color_overrides:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::ColorOverride::OrHash
              ],
            dashboard_options:
              T::Array[
                MetronomeSDK::V1::DashboardGetEmbeddableURLParams::DashboardOption::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse)
        end
        def get_embeddable_url(
          customer_id:,
          # The type of dashboard to retrieve.
          dashboard:,
          # Optional list of billable metric group key overrides
          bm_group_key_overrides: nil,
          # Optional list of colors to override
          color_overrides: nil,
          # Optional dashboard specific options
          dashboard_options: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
