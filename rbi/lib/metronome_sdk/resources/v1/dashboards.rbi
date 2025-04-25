# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Dashboards
        # Retrieve an embeddable dashboard url for a customer. The dashboard can be
        # embedded using an iframe in a website. This will show information such as usage
        # data and customer invoices.
        sig do
          params(
            customer_id: String,
            dashboard: MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::Dashboard::OrSymbol,
            bm_group_key_overrides: T::Array[
              T.any(
                MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride,
                MetronomeSDK::Internal::AnyHash
              )
            ],
            color_overrides: T::Array[
              T.any(
                MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride,
                MetronomeSDK::Internal::AnyHash
              )
            ],
            dashboard_options: T::Array[
              T.any(
                MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::DashboardOption,
                MetronomeSDK::Internal::AnyHash
              )
            ],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse)
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
        ); end
        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
