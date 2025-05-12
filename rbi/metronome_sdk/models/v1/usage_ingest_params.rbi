# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageIngestParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::UsageIngestParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::UsageIngestParams::Usage])
          )
        end
        attr_reader :usage

        sig do
          params(
            usage: T::Array[MetronomeSDK::V1::UsageIngestParams::Usage::OrHash]
          ).void
        end
        attr_writer :usage

        sig do
          params(
            usage: T::Array[MetronomeSDK::V1::UsageIngestParams::Usage::OrHash],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(usage: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              usage: T::Array[MetronomeSDK::V1::UsageIngestParams::Usage],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Usage < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::UsageIngestParams::Usage,
                MetronomeSDK::Internal::AnyHash
              )
            end

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
            ).returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            event_type:,
            # RFC 3339 formatted
            timestamp:,
            transaction_id:,
            properties: nil
          )
          end

          sig do
            override.returns(
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
