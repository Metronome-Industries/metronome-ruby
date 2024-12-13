# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class AlertRetrieveParams < Metronome::BaseModel
        # @!attribute alert_id
        #   The Metronome ID of the alert
        #   @return [String]
        required :alert_id, String

        # @!attribute customer_id
        #   The Metronome ID of the customer
        #   @return [String]
        required :customer_id, String
      end
    end
  end
end
