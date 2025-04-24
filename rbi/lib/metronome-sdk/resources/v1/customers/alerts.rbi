# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Alerts
          sig do
            params(
              alert_id: String,
              customer_id: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse)
          end
          def retrieve(alert_id:, customer_id:, request_options: {})
          end

          sig do
            params(
              customer_id: String,
              next_page: String,
              alert_statuses: T::Array[Symbol],
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Customers::AlertListResponse)
          end
          def list(customer_id:, next_page: nil, alert_statuses: nil, request_options: {})
          end

          sig do
            params(
              alert_id: String,
              customer_id: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .void
          end
          def reset(alert_id:, customer_id:, request_options: {})
          end

          sig { params(client: MetronomeSDK::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
