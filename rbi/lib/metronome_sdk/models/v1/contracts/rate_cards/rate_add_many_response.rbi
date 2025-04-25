# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddManyResponse < MetronomeSDK::Internal::Type::BaseModel
            # The ID of the rate card to which the rates were added.
            sig { returns(MetronomeSDK::Models::ID) }
            attr_reader :data

            sig { params(data: T.any(MetronomeSDK::Models::ID, MetronomeSDK::Internal::AnyHash)).void }
            attr_writer :data

            sig { params(data: T.any(MetronomeSDK::Models::ID, MetronomeSDK::Internal::AnyHash)).returns(T.attached_class) }
            def self.new(
              # The ID of the rate card to which the rates were added.
              data:
            ); end
            sig { override.returns({data: MetronomeSDK::Models::ID}) }
            def to_hash; end
          end
        end
      end
    end
  end
end
