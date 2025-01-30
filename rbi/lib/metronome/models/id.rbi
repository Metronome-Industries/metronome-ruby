# typed: strong

module Metronome
  module Models
    class ID < Metronome::BaseModel
      Shape = T.type_alias { {id: String} }

      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).void }
      def initialize(id:); end

      sig { returns(Metronome::Models::ID::Shape) }
      def to_h; end
    end
  end
end
