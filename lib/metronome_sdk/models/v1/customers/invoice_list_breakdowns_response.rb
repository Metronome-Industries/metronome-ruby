# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Invoices#list_breakdowns
        class InvoiceListBreakdownsResponse < MetronomeSDK::Models::V1::Customers::Invoice
          # @!attribute breakdown_end_timestamp
          #
          #   @return [Time]
          required :breakdown_end_timestamp, Time

          # @!attribute breakdown_start_timestamp
          #
          #   @return [Time]
          required :breakdown_start_timestamp, Time

          # @!method initialize(breakdown_end_timestamp:, breakdown_start_timestamp:)
          #   @param breakdown_end_timestamp [Time]
          #   @param breakdown_start_timestamp [Time]
        end
      end
    end
  end
end
