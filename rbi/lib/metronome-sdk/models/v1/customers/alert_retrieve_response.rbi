# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertRetrieveResponse < MetronomeSDK::BaseModel
          sig { returns(MetronomeSDK::Models::V1::Customers::CustomerAlert) }
          def data
          end

          sig do
            params(_: MetronomeSDK::Models::V1::Customers::CustomerAlert)
              .returns(MetronomeSDK::Models::V1::Customers::CustomerAlert)
          end
          def data=(_)
          end

          sig { params(data: MetronomeSDK::Models::V1::Customers::CustomerAlert).void }
          def initialize(data:)
          end

          sig { override.returns({data: MetronomeSDK::Models::V1::Customers::CustomerAlert}) }
          def to_hash
          end
        end
      end
    end
  end
end
