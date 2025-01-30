# typed: strong

module Metronome
  module Models
    class ContractArchiveResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: Metronome::Models::ID} }

      sig { returns(Metronome::Models::ID) }
      attr_accessor :data

      sig { params(data: Metronome::Models::ID).void }
      def initialize(data:); end

      sig { returns(Metronome::Models::ContractArchiveResponse::Shape) }
      def to_h; end
    end
  end
end
