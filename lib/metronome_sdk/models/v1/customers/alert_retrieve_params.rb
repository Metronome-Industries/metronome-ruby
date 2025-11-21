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

          # @!attribute seat_filter
          #   Only allowed for `low_remaining_seat_balance_reached` notifications. This
          #   filters alerts by the seat group key-value pair.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::SeatFilter, nil]
          optional :seat_filter, -> { MetronomeSDK::V1::Customers::AlertRetrieveParams::SeatFilter }

          # @!method initialize(alert_id:, customer_id:, group_values: nil, plans_or_contracts: nil, seat_filter: nil, request_options: {})
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
          #   @param seat_filter [MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::SeatFilter] Only allowed for `low_remaining_seat_balance_reached` notifications. This filter
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

          class SeatFilter < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute seat_group_key
            #   The seat group key (e.g., "seat_id", "user_id")
            #
            #   @return [String]
            required :seat_group_key, String

            # @!attribute seat_group_value
            #   The specific seat identifier to filter by
            #
            #   @return [String]
            required :seat_group_value, String

            # @!method initialize(seat_group_key:, seat_group_value:)
            #   Only allowed for `low_remaining_seat_balance_reached` notifications. This
            #   filters alerts by the seat group key-value pair.
            #
            #   @param seat_group_key [String] The seat group key (e.g., "seat_id", "user_id")
            #
            #   @param seat_group_value [String] The specific seat identifier to filter by
          end
        end
      end
    end
  end
end
