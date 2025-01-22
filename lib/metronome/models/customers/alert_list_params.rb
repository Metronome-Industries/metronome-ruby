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

        # @!attribute [r] next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @return [String]
        #   attr_writer :next_page

        # @!attribute [r] alert_statuses
        #   Optionally filter by alert status. If absent, only enabled alerts will be
        #     returned.
        #
        #   @return [Array<Symbol, Metronome::Models::Customers::AlertListParams::AlertStatus>]
        optional :alert_statuses,
                 -> { Metronome::ArrayOf[enum: Metronome::Models::Customers::AlertListParams::AlertStatus] }

        # @!parse
        #   # @return [Array<Symbol, Metronome::Models::Customers::AlertListParams::AlertStatus>]
        #   attr_writer :alert_statuses

        # @!parse
        #   # @param customer_id [String]
        #   # @param next_page [String]
        #   # @param alert_statuses [Array<String>]
        #   #
        #   def initialize(customer_id:, next_page: nil, alert_statuses: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
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
