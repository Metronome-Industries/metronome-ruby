# typed: strong

module Metronome
  module Models
    class BillableMetricListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {include_archived: T::Boolean, limit: Integer, next_page: String},
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_archived

      sig { params(include_archived: T::Boolean).void }
      attr_writer :include_archived

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
          include_archived: T::Boolean,
          limit: Integer,
          next_page: String,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(include_archived: nil, limit: nil, next_page: nil, request_options: {}); end

      sig { returns(Metronome::Models::BillableMetricListParams::Shape) }
      def to_h; end
    end
  end
end
