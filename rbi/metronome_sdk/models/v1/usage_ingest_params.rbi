# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageIngestParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::UsageIngestParams::Usage])) }
        attr_reader :usage

        sig do
          params(
            usage: T::Array[T.any(MetronomeSDK::Models::V1::UsageIngestParams::Usage, MetronomeSDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :usage

        sig do
          params(
            usage: T::Array[T.any(MetronomeSDK::Models::V1::UsageIngestParams::Usage, MetronomeSDK::Internal::AnyHash)],
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(usage: nil, request_options: {}); end

        sig do
          override
            .returns(
              {
                usage: T::Array[MetronomeSDK::Models::V1::UsageIngestParams::Usage],
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end

        class Usage < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(String) }
          attr_accessor :event_type

          # RFC 3339 formatted
          sig { returns(String) }
          attr_accessor :timestamp

          sig { returns(String) }
          attr_accessor :transaction_id

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :properties

          sig { params(properties: T::Hash[Symbol, T.anything]).void }
          attr_writer :properties

          sig do
            params(
              customer_id: String,
              event_type: String,
              timestamp: String,
              transaction_id: String,
              properties: T::Hash[Symbol, T.anything]
            )
              .returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            event_type:,
            # RFC 3339 formatted
            timestamp:,
            transaction_id:,
            properties: nil
          ); end
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
          def to_hash; end
        end
      end
    end
  end
end
