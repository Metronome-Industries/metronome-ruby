# typed: strong

module Metronome
  module Models
    class PlanGetDetailsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias { T.all({plan_id: String}, Metronome::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :plan_id

      sig { params(plan_id: String, request_options: Metronome::RequestOpts).void }
      def initialize(plan_id:, request_options: {}); end

      sig { returns(Metronome::Models::PlanGetDetailsParams::Shape) }
      def to_h; end
    end
  end
end
