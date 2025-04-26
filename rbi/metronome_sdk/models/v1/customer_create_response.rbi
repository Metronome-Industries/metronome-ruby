# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerCreateResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(MetronomeSDK::Models::V1::Customer) }
        attr_reader :data

        sig { params(data: T.any(MetronomeSDK::Models::V1::Customer, MetronomeSDK::Internal::AnyHash)).void }
        attr_writer :data

        sig do
          params(data: T.any(MetronomeSDK::Models::V1::Customer, MetronomeSDK::Internal::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(data:); end

        sig { override.returns({data: MetronomeSDK::Models::V1::Customer}) }
        def to_hash; end
      end
    end
  end
end
