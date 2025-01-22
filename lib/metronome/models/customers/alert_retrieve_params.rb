# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class AlertRetrieveParams < Metronome::BaseModel
        # @!attribute alert_id
        #   The Metronome ID of the alert
        #
        #   @return [String]
        required :alert_id, String

        # @!attribute customer_id
        #   The Metronome ID of the customer
        #
        #   @return [String]
        required :customer_id, String

        # @!parse
        #   # @param alert_id [String]
        #   # @param customer_id [String]
        #   #
        #   def initialize(alert_id:, customer_id:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
