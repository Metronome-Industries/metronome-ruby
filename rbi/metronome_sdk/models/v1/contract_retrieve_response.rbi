# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractRetrieveResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::Contract) }
        attr_reader :data

        sig { params(data: MetronomeSDK::Contract::OrHash).void }
        attr_writer :data

        sig do
          params(data: MetronomeSDK::Contract::OrHash).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig { override.returns({ data: MetronomeSDK::Contract }) }
        def to_hash
        end
      end
    end
  end
end
