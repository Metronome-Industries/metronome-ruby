# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(MetronomeSDK::Models::V1::CustomerDetail) }
        attr_reader :data

        sig { params(data: T.any(MetronomeSDK::Models::V1::CustomerDetail, MetronomeSDK::Internal::AnyHash)).void }
        attr_writer :data

        sig do
          params(data: T.any(MetronomeSDK::Models::V1::CustomerDetail, MetronomeSDK::Internal::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(data:); end

        sig { override.returns({data: MetronomeSDK::Models::V1::CustomerDetail}) }
        def to_hash; end
      end
    end
  end
end
