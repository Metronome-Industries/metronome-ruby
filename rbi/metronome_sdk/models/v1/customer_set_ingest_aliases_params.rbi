# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetIngestAliasesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerSetIngestAliasesParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T::Array[String]) }
        attr_accessor :ingest_aliases

        sig do
          params(
            customer_id: String,
            ingest_aliases: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(customer_id:, ingest_aliases:, request_options: {})
        end

        sig do
          override.returns(
            {
              customer_id: String,
              ingest_aliases: T::Array[String],
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
