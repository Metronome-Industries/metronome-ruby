# typed: strong

module Metronome
  module Models
    class ID < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { params(id: String).void }
      def initialize(id:)
      end

      sig { override.returns({id: String}) }
      def to_hash
      end
    end
  end
end
