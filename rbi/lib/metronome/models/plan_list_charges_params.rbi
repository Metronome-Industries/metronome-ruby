# typed: strong

module Metronome
  module Models
    class PlanListChargesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all({plan_id: String, limit: Integer, next_page: String}, Metronome::RequestParameters::Shape)
      end

      sig { returns(String) }
      attr_accessor :plan_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig do
        params(
          plan_id: String,
          limit: Integer,
          next_page: String,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(plan_id:, limit: nil, next_page: nil, request_options: {}); end

      sig { returns(Metronome::Models::PlanListChargesParams::Shape) }
      def to_h; end
    end
  end
end
