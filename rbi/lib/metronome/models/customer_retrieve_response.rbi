# typed: strong

module Metronome
  module Models
    class CustomerRetrieveResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::CustomerDetail) }
      attr_accessor :data

      sig { params(data: Metronome::Models::CustomerDetail).void }
      def initialize(data:)
      end

      sig { override.returns({data: Metronome::Models::CustomerDetail}) }
      def to_hash
      end
    end
  end
end
