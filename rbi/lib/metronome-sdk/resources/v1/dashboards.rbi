# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Dashboards
        sig do
          params(
            customer_id: String,
            dashboard: Symbol,
            bm_group_key_overrides: T::Array[MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::BmGroupKeyOverride],
            color_overrides: T::Array[MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::ColorOverride],
            dashboard_options: T::Array[MetronomeSDK::Models::V1::DashboardGetEmbeddableURLParams::DashboardOption],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse)
        end
        def get_embeddable_url(
          customer_id:,
          dashboard:,
          bm_group_key_overrides: nil,
          color_overrides: nil,
          dashboard_options: nil,
          request_options: {}
        )
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
