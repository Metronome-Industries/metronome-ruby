# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceRetrieveResponse < MetronomeSDK::BaseModel
          sig { returns(MetronomeSDK::Models::V1::Customers::Invoice) }
          def data
          end

          sig do
            params(_: MetronomeSDK::Models::V1::Customers::Invoice)
              .returns(MetronomeSDK::Models::V1::Customers::Invoice)
          end
          def data=(_)
          end

          sig { params(data: MetronomeSDK::Models::V1::Customers::Invoice).void }
          def initialize(data:)
          end

          sig { override.returns({data: MetronomeSDK::Models::V1::Customers::Invoice}) }
          def to_hash
          end
        end
      end
    end
  end
end
