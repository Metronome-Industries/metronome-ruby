# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceListBreakdownsResponse < Metronome::Models::Invoice
      # @!attribute [rw] breakdown_end_timestamp
      #   @return [Time]
      required :breakdown_end_timestamp, Time

      # @!attribute [rw] breakdown_start_timestamp
      #   @return [Time]
      required :breakdown_start_timestamp, Time
    end
  end
end
