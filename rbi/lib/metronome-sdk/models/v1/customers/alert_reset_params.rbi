# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertResetParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def alert_id
          end

          sig { params(_: String).returns(String) }
          def alert_id=(_)
          end

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig do
            params(
              alert_id: String,
              customer_id: String,
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(alert_id:, customer_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                alert_id: String,
                customer_id: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
