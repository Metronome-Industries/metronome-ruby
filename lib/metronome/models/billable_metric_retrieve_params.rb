# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricRetrieveParams < Metronome::BaseModel
      # @!attribute billable_metric_id
      #
      #   @return [String]
      required :billable_metric_id, String
    end
  end
end
