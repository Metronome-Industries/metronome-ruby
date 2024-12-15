# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceListBreakdownsResponse < Metronome::Models::Customers::Invoice
        # @!attribute breakdown_end_timestamp
        #
        #   @return [Time]
        required :breakdown_end_timestamp, Time

        # @!attribute breakdown_start_timestamp
        #
        #   @return [Time]
        required :breakdown_start_timestamp, Time
      end
    end
  end
end
