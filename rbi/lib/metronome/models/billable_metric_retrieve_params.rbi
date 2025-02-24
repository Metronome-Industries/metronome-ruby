# typed: strong

module Metronome
  module Models
    class BillableMetricRetrieveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def billable_metric_id
      end

      sig { params(_: String).returns(String) }
      def billable_metric_id=(_)
      end

      sig do
        params(
          billable_metric_id: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(billable_metric_id:, request_options: {})
      end

      sig { override.returns({billable_metric_id: String, request_options: Metronome::RequestOptions}) }
      def to_hash
      end
    end
  end
end
