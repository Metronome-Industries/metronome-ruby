# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Alerts#list
        class AlertListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute customer_id
          #   The Metronome ID of the customer
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute next_page
          #   Cursor that indicates where the next page of results should start.
          #
          #   @return [String, nil]
          optional :next_page, String

          # @!attribute alert_statuses
          #   Optionally filter by threshold notification status. If absent, only enabled
          #   notifications will be returned.
          #
          #   @return [Array<Symbol, MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus>, nil]
          optional :alert_statuses,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[enum: MetronomeSDK::V1::Customers::AlertListParams::AlertStatus] }

          # @!method initialize(customer_id:, next_page: nil, alert_statuses: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::AlertListParams} for more details.
          #
          #   @param customer_id [String] The Metronome ID of the customer
          #
          #   @param next_page [String] Cursor that indicates where the next page of results should start.
          #
          #   @param alert_statuses [Array<Symbol, MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus>] Optionally filter by threshold notification status. If absent, only enabled noti
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          module AlertStatus
            extend MetronomeSDK::Internal::Type::Enum

            ENABLED = :ENABLED
            DISABLED = :DISABLED
            ARCHIVED = :ARCHIVED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
