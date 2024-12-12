# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class AlertListParams < Metronome::BaseModel
        # @!attribute [rw] customer_id
        #   The Metronome ID of the customer
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] next_page
        #   Cursor that indicates where the next page of results should start.
        #   @return [String]
        optional :next_page, String

        # @!attribute [rw] alert_statuses
        #   Optionally filter by alert status. If absent, only enabled alerts will be returned.
        #   @return [Array<Symbol, Metronome::Models::Customers::AlertListParams::AlertStatus>]
        optional :alert_statuses,
                 Metronome::ArrayOf.new(
                   enum: -> {
                     Metronome::Models::Customers::AlertListParams::AlertStatus
                   }
                 )

        class AlertStatus < Metronome::Enum
          ENABLED = :ENABLED
          DISABLED = :DISABLED
          ARCHIVED = :ARCHIVED
        end
      end
    end
  end
end
