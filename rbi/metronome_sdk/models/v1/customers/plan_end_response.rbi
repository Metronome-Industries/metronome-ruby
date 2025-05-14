# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanEndResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Customers::PlanEndResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T.attached_class) }
          def self.new
          end

          sig { override.returns({}) }
          def to_hash
          end
        end
      end
    end
  end
end
