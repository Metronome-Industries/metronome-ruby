# typed: strong

module Metronome
  module Models
    class ID < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).void }
      def initialize(id:)
      end

      sig { override.returns({id: String}) }
      def to_hash
      end
    end
  end
end
