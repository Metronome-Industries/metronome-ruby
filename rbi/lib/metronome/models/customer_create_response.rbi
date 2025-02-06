# typed: strong

module Metronome
  module Models
    class CustomerCreateResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::Customer) }
      attr_accessor :data

      sig { params(data: Metronome::Models::Customer).void }
      def initialize(data:)
      end

      sig { override.returns({data: Metronome::Models::Customer}) }
      def to_hash
      end
    end
  end
end
