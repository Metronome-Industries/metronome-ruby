# typed: strong

module Metronome
  module Models
    class PlanGetDetailsResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::PlanDetail) }
      def data
      end

      sig { params(_: Metronome::Models::PlanDetail).returns(Metronome::Models::PlanDetail) }
      def data=(_)
      end

      sig { params(data: Metronome::Models::PlanDetail).void }
      def initialize(data:)
      end

      sig { override.returns({data: Metronome::Models::PlanDetail}) }
      def to_hash
      end
    end
  end
end
