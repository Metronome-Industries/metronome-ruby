# typed: strong

module Metronome
  module Models
    class BillableMetricRetrieveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias { T.all({billable_metric_id: String}, Metronome::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :billable_metric_id

      sig { params(billable_metric_id: String, request_options: Metronome::RequestOpts).void }
      def initialize(billable_metric_id:, request_options: {}); end

      sig { returns(Metronome::Models::BillableMetricRetrieveParams::Shape) }
      def to_h; end
    end
  end
end
