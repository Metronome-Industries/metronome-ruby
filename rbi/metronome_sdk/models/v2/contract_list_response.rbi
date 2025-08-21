# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractListResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V2::ContractListResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[MetronomeSDK::ContractV2]) }
        attr_accessor :data

        sig do
          params(data: T::Array[MetronomeSDK::ContractV2::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: T::Array[MetronomeSDK::ContractV2] }) }
        def to_hash
        end
      end
    end
  end
end
