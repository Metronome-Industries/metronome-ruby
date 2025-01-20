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

        # @!parse
        #   # @param breakdown_end_timestamp [String]
        #   # @param breakdown_start_timestamp [String]
        #   #
        #   def initialize(breakdown_end_timestamp:, breakdown_start_timestamp:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
