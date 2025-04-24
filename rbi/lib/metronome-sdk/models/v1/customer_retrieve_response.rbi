# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveResponse < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::V1::CustomerDetail) }
        def data
        end

        sig { params(_: MetronomeSDK::Models::V1::CustomerDetail).returns(MetronomeSDK::Models::V1::CustomerDetail) }
        def data=(_)
        end

        sig { params(data: MetronomeSDK::Models::V1::CustomerDetail).void }
        def initialize(data:)
        end

        sig { override.returns({data: MetronomeSDK::Models::V1::CustomerDetail}) }
        def to_hash
        end
      end
    end
  end
end
