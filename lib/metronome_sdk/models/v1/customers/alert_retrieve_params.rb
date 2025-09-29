# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Alerts#retrieve
        class AlertRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute alert_id
          #   The Metronome ID of the threshold notification
          #
          #   @return [String]
          required :alert_id, String

          # @!attribute customer_id
          #   The Metronome ID of the customer
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute group_values
          #   Only present for `spend_threshold_reached` notifications. Retrieve the
          #   notification for a specific group key-value pair.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::GroupValue>, nil]
          optional :group_values,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue] }

          # @!attribute plans_or_contracts
          #   When parallel threshold notifications are enabled during migration, this flag
          #   denotes whether to fetch notifications for plans or contracts.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::PlansOrContracts, nil]
          optional :plans_or_contracts,
                   enum: -> { MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts }

          # @!method initialize(alert_id:, customer_id:, group_values: nil, plans_or_contracts: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::AlertRetrieveParams} for more details.
          #
          #   @param alert_id [String] The Metronome ID of the threshold notification
          #
          #   @param customer_id [String] The Metronome ID of the customer
          #
          #   @param group_values [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::GroupValue>] Only present for `spend_threshold_reached` notifications. Retrieve the notificat
          #
          #   @param plans_or_contracts [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::PlansOrContracts] When parallel threshold notifications are enabled during migration, this flag de
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          class GroupValue < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute key
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #
            #   @return [String]
            required :value, String

            # @!method initialize(key:, value:)
            #   Scopes threshold notification evaluation to a specific presentation group key on
            #   individual line items. Only present for spend notifications.
            #
            #   @param key [String]
            #   @param value [String]
          end

          # When parallel threshold notifications are enabled during migration, this flag
          # denotes whether to fetch notifications for plans or contracts.
          module PlansOrContracts
            extend MetronomeSDK::Internal::Type::Enum

            PLANS = :PLANS
            CONTRACTS = :CONTRACTS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
