# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(MetronomeSDK::Models::V1::Customers::CustomerAlert) }
          attr_reader :data

          sig do
            params(data: T.any(MetronomeSDK::Models::V1::Customers::CustomerAlert, MetronomeSDK::Internal::AnyHash))
              .void
          end
          attr_writer :data

          sig do
            params(data: T.any(MetronomeSDK::Models::V1::Customers::CustomerAlert, MetronomeSDK::Internal::AnyHash))
              .returns(T.attached_class)
          end
          def self.new(data:); end

          sig { override.returns({data: MetronomeSDK::Models::V1::Customers::CustomerAlert}) }
          def to_hash; end
        end
      end
    end
  end
end
