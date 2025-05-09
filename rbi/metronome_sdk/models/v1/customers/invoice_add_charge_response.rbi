# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceAddChargeResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

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
