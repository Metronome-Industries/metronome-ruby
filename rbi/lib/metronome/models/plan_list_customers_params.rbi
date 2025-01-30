# typed: strong

module Metronome
  module Models
    class PlanListCustomersParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {plan_id: String, limit: Integer, next_page: String, status: Symbol},
          Metronome::RequestParameters::Shape
        )
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

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          plan_id: String,
          limit: Integer,
          next_page: String,
          status: Symbol,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(plan_id:, limit: nil, next_page: nil, status: nil, request_options: {}); end

      sig { returns(Metronome::Models::PlanListCustomersParams::Shape) }
      def to_h; end

      class Status < Metronome::Enum
        abstract!

        ALL = :all
        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
