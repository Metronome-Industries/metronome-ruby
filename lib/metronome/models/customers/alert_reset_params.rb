# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class AlertResetParams < Metronome::BaseModel
        # @!attribute [rw] alert_id
        #   The Metronome ID of the alert
        #   @return [String]
        required :alert_id, String

        # @!attribute [rw] customer_id
        #   The Metronome ID of the customer
        #   @return [String]
        required :customer_id, String
      end
    end
  end
end
