# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricRetrieveParams < Metronome::BaseModel
      # @!attribute billable_metric_id
      #
      #   @return [String]
      required :billable_metric_id, String

      # @!parse
      #   # @param billable_metric_id [String]
      #   #
      #   def initialize(billable_metric_id:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
