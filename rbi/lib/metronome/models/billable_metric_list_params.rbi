# typed: strong

module Metronome
  module Models
    class BillableMetricListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      def include_archived
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_archived=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: String).returns(String) }
      def next_page=(_)
      end

      sig do
        params(
          include_archived: T::Boolean,
          limit: Integer,
          next_page: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(include_archived: nil, limit: nil, next_page: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
