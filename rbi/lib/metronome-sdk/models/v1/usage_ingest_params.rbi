# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageIngestParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::UsageIngestParams::Usage])) }
        def usage
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::UsageIngestParams::Usage])
            .returns(T::Array[MetronomeSDK::Models::V1::UsageIngestParams::Usage])
        end
        def usage=(_)
        end

        sig do
          params(
            usage: T::Array[MetronomeSDK::Models::V1::UsageIngestParams::Usage],
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(usage: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                usage: T::Array[MetronomeSDK::Models::V1::UsageIngestParams::Usage],
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Usage < MetronomeSDK::BaseModel
          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(String) }
          def event_type
          end

          sig { params(_: String).returns(String) }
          def event_type=(_)
          end

          sig { returns(String) }
          def timestamp
          end

          sig { params(_: String).returns(String) }
          def timestamp=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          def properties
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def properties=(_)
          end

          sig do
            params(
              customer_id: String,
              event_type: String,
              timestamp: String,
              transaction_id: String,
              properties: T::Hash[Symbol, T.anything]
            )
              .void
          end
          def initialize(customer_id:, event_type:, timestamp:, transaction_id:, properties: nil)
          end

          sig do
            override
              .returns(
                {
                  customer_id: String,
                  event_type: String,
                  timestamp: String,
                  transaction_id: String,
                  properties: T::Hash[Symbol, T.anything]
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
