# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceListBreakdownsResponse < MetronomeSDK::Models::V1::Customers::Invoice
          # @!attribute breakdown_end_timestamp
          #
          #   @return [Time]
          required :breakdown_end_timestamp, Time

          # @!attribute breakdown_start_timestamp
          #
          #   @return [Time]
          required :breakdown_start_timestamp, Time

          # @!parse
          #   # @param breakdown_end_timestamp [Time]
          #   # @param breakdown_start_timestamp [Time]
          #   #
          #   def initialize(breakdown_end_timestamp:, breakdown_start_timestamp:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
