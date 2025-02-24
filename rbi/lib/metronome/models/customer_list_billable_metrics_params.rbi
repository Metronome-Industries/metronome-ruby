# typed: strong

module Metronome
  module Models
    class CustomerListBillableMetricsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

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

      sig { returns(T.nilable(T::Boolean)) }
      def on_current_plan
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def on_current_plan=(_)
      end

      sig do
        params(
          customer_id: String,
          include_archived: T::Boolean,
          limit: Integer,
          next_page: String,
          on_current_plan: T::Boolean,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        customer_id:,
        include_archived: nil,
        limit: nil,
        next_page: nil,
        on_current_plan: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            on_current_plan: T::Boolean,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
