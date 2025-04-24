# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertResetParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

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
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(alert_id:, customer_id:, request_options: {}, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
