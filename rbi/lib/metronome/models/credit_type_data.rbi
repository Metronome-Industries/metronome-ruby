# typed: strong

module Metronome
  module Models
    class CreditTypeData < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :name

      sig { params(id: String, name: String).void }
      def initialize(id:, name:)
      end

      sig { override.returns({id: String, name: String}) }
      def to_hash
      end
    end
  end
end
