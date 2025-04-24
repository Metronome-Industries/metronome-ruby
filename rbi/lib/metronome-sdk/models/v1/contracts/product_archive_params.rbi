# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductArchiveParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig do
            params(
              product_id: String,
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(product_id:, request_options: {})
          end

          sig { override.returns({product_id: String, request_options: MetronomeSDK::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
