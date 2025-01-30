# typed: strong

module Metronome
  module Models
    class CustomerListBillableMetricsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            customer_id: String,
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            on_current_plan: T::Boolean
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :customer_id

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

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :on_current_plan

      sig { params(on_current_plan: T::Boolean).void }
      attr_writer :on_current_plan

      sig do
        params(
          customer_id: String,
          include_archived: T::Boolean,
          limit: Integer,
          next_page: String,
          on_current_plan: T::Boolean,
          request_options: Metronome::RequestOpts
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

      sig { returns(Metronome::Models::CustomerListBillableMetricsParams::Shape) }
      def to_h; end
    end
  end
end
