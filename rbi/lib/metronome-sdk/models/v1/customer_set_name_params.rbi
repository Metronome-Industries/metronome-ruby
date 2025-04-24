# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetNameParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig do
          params(
            customer_id: String,
            name: String,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(customer_id:, name:, request_options: {})
        end

        sig do
          override.returns({customer_id: String, name: String, request_options: MetronomeSDK::RequestOptions})
        end
        def to_hash
        end
      end
    end
  end
end
