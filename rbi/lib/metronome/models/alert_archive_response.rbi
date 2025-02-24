# typed: strong

module Metronome
  module Models
    class AlertArchiveResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::ID) }
      def data
      end

      sig { params(_: Metronome::Models::ID).returns(Metronome::Models::ID) }
      def data=(_)
      end

      sig { params(data: Metronome::Models::ID).void }
      def initialize(data:)
      end

      sig { override.returns({data: Metronome::Models::ID}) }
      def to_hash
      end
    end
  end
end
