# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricRetrieveParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute billable_metric_id
      #
      #   @return [String]
      required :billable_metric_id, String

      # @!parse
      #   # @param billable_metric_id [String]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(billable_metric_id:, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
