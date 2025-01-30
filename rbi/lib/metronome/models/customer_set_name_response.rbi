# typed: strong

module Metronome
  module Models
    class CustomerSetNameResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: Metronome::Models::Customer} }

      sig { returns(Metronome::Models::Customer) }
      attr_accessor :data

      sig { params(data: Metronome::Models::Customer).void }
      def initialize(data:); end

      sig { returns(Metronome::Models::CustomerSetNameResponse::Shape) }
      def to_h; end
    end
  end
end
