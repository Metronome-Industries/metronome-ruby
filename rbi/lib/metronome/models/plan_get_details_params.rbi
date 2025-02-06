# typed: strong

module Metronome
  module Models
    class PlanGetDetailsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :plan_id

      sig do
        params(
          plan_id: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(plan_id:, request_options: {}); end

      sig { override.returns({plan_id: String, request_options: Metronome::RequestOptions}) }
      def to_hash; end
    end
  end
end
