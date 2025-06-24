# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Contracts::RateCardRetrieveParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            params(
              id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, request_options: {})
          end

          sig do
            override.returns(
              { id: String, request_options: MetronomeSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
