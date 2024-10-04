# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceListBreakdownsResponse < Metronome::Models::Invoice
      # @!attribute [rw] breakdown_end_timestamp
      #   @return [DateTime]
      required :breakdown_end_timestamp, DateTime

      # @!attribute [rw] breakdown_start_timestamp
      #   @return [DateTime]
      required :breakdown_start_timestamp, DateTime
    end
  end
end
