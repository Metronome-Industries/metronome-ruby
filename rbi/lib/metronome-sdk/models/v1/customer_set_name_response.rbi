# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetNameResponse < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::V1::Customer) }
        def data
        end

        sig { params(_: MetronomeSDK::Models::V1::Customer).returns(MetronomeSDK::Models::V1::Customer) }
        def data=(_)
        end

        sig { params(data: MetronomeSDK::Models::V1::Customer).void }
        def initialize(data:)
        end

        sig { override.returns({data: MetronomeSDK::Models::V1::Customer}) }
        def to_hash
        end
      end
    end
  end
end
