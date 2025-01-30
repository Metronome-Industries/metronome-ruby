# typed: strong

module Metronome
  module Models
    class PlanGetDetailsResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: Metronome::Models::PlanDetail} }

      sig { returns(Metronome::Models::PlanDetail) }
      attr_accessor :data

      sig { params(data: Metronome::Models::PlanDetail).void }
      def initialize(data:); end

      sig { returns(Metronome::Models::PlanGetDetailsResponse::Shape) }
      def to_h; end
    end
  end
end
