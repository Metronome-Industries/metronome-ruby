# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditCommitResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(MetronomeSDK::Models::ID) }
        attr_reader :data

        sig { params(data: T.any(MetronomeSDK::Models::ID, MetronomeSDK::Internal::AnyHash)).void }
        attr_writer :data

        sig { params(data: T.any(MetronomeSDK::Models::ID, MetronomeSDK::Internal::AnyHash)).returns(T.attached_class) }
        def self.new(data:); end

        sig { override.returns({data: MetronomeSDK::Models::ID}) }
        def to_hash; end
      end
    end
  end
end
