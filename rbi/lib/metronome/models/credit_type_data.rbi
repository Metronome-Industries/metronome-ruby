# typed: strong

module Metronome
  module Models
    class CreditTypeData < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { params(id: String, name: String).void }
      def initialize(id:, name:)
      end

      sig { override.returns({id: String, name: String}) }
      def to_hash
      end
    end
  end
end
