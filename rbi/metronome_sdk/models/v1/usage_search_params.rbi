# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageSearchParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::UsageSearchParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The transaction IDs of the events to retrieve
        sig { returns(T::Array[String]) }
        attr_accessor :transaction_ids

        sig do
          params(
            transaction_ids: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The transaction IDs of the events to retrieve
          transaction_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              transaction_ids: T::Array[String],
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
