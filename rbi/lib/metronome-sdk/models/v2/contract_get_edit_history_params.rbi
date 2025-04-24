# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractGetEditHistoryParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def contract_id
        end

        sig { params(_: String).returns(String) }
        def contract_id=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig do
          params(
            contract_id: String,
            customer_id: String,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(contract_id:, customer_id:, request_options: {})
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
