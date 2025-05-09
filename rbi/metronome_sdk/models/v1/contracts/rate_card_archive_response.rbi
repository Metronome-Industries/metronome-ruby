# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(MetronomeSDK::ID) }
          attr_reader :data

          sig { params(data: MetronomeSDK::ID::OrHash).void }
          attr_writer :data

          sig do
            params(data: MetronomeSDK::ID::OrHash).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig { override.returns({ data: MetronomeSDK::ID }) }
          def to_hash
          end
        end
      end
    end
  end
end
