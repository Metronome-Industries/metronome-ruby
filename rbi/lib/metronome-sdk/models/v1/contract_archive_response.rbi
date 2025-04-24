# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractArchiveResponse < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::ID) }
        def data
        end

        sig { params(_: MetronomeSDK::Models::ID).returns(MetronomeSDK::Models::ID) }
        def data=(_)
        end

        sig { params(data: MetronomeSDK::Models::ID).void }
        def initialize(data:)
        end

        sig { override.returns({data: MetronomeSDK::Models::ID}) }
        def to_hash
        end
      end
    end
  end
end
