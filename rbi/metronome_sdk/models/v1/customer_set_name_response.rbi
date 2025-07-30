# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetNameResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CustomerSetNameResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::V1::Customer) }
        attr_reader :data

        sig { params(data: MetronomeSDK::V1::Customer::OrHash).void }
        attr_writer :data

        sig do
          params(data: MetronomeSDK::V1::Customer::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: MetronomeSDK::V1::Customer }) }
        def to_hash
        end
      end
    end
  end
end
