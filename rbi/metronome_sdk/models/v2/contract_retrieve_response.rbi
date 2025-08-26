# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V2::ContractRetrieveResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::ContractV2) }
        attr_reader :data

        sig { params(data: MetronomeSDK::ContractV2::OrHash).void }
        attr_writer :data

        sig do
          params(data: MetronomeSDK::ContractV2::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: MetronomeSDK::ContractV2 }) }
        def to_hash
        end
      end
    end
  end
end
