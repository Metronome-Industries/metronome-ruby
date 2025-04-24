# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertListParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def next_page
          end

          sig { params(_: String).returns(String) }
          def next_page=(_)
          end

          sig { returns(T.nilable(T::Array[Symbol])) }
          def alert_statuses
          end

          sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
          def alert_statuses=(_)
          end

          sig do
            params(
              customer_id: String,
              next_page: String,
              alert_statuses: T::Array[Symbol],
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(customer_id:, next_page: nil, alert_statuses: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  customer_id: String,
                  next_page: String,
                  alert_statuses: T::Array[Symbol],
                  request_options: MetronomeSDK::RequestOptions
                }
              )
          end
          def to_hash
          end

          class AlertStatus < MetronomeSDK::Enum
            abstract!

            ENABLED = :ENABLED
            DISABLED = :DISABLED
            ARCHIVED = :ARCHIVED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
