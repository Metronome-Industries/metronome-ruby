# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractListResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[MetronomeSDK::Contract]) }
        attr_accessor :data

        sig do
          params(data: T::Array[MetronomeSDK::Contract::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: T::Array[MetronomeSDK::Contract] }) }
        def to_hash
        end
      end
    end
  end
end
