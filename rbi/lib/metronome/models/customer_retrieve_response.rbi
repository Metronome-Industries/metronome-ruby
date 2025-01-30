# typed: strong

module Metronome
  module Models
    class CustomerRetrieveResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: Metronome::Models::CustomerDetail} }

      sig { returns(Metronome::Models::CustomerDetail) }
      attr_accessor :data

      sig { params(data: Metronome::Models::CustomerDetail).void }
      def initialize(data:); end

      sig { returns(Metronome::Models::CustomerRetrieveResponse::Shape) }
      def to_h; end
    end
  end
end
