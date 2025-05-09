# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractGetEditHistoryParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :contract_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          params(
            contract_id: String,
            customer_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(contract_id:, customer_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              contract_id: String,
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
