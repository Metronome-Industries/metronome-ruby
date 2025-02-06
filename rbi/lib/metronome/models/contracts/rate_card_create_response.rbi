# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardCreateResponse < Metronome::BaseModel
        sig { returns(Metronome::Models::ID) }
        attr_accessor :data

        sig { params(data: Metronome::Models::ID).void }
        def initialize(data:)
        end

        sig { override.returns({data: Metronome::Models::ID}) }
        def to_hash
        end
      end
    end
  end
end
