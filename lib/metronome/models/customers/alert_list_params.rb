# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class AlertListParams < Metronome::BaseModel
        # @!attribute customer_id
        #   The Metronome ID of the customer
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String]
        optional :next_page, String

        # @!attribute alert_statuses
        #   Optionally filter by alert status. If absent, only enabled alerts will be returned.
        #
        #   @return [Array<Symbol, Metronome::Models::Customers::AlertListParams::AlertStatus>]
        optional :alert_statuses,
                 -> { Metronome::ArrayOf[enum: Metronome::Models::Customers::AlertListParams::AlertStatus] }

        # @!parse
        #   # @param customer_id [String] The Metronome ID of the customer
        #   #
        #   # @param next_page [String] Cursor that indicates where the next page of results should start.
        #   #
        #   # @param alert_statuses [Array<String>] Optionally filter by alert status. If absent, only enabled alerts will be
        #   #   returned.
        #   #
        #   def initialize(customer_id:, next_page: nil, alert_statuses: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case alert_status
        # in :ENABLED
        #   # ...
        # in :DISABLED
        #   # ...
        # in :ARCHIVED
        #   # ...
        # end
        # ```
        class AlertStatus < Metronome::Enum
          ENABLED = :ENABLED
          DISABLED = :DISABLED
          ARCHIVED = :ARCHIVED

          finalize!
        end
      end
    end
  end
end
