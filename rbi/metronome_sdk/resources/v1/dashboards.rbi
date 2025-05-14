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
