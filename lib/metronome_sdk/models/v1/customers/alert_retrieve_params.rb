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

          # @!attribute alert_specifiers
          #   Can be used with only `low_remaining_contract_credit_and_commit_balance_reached`
          #   notifications. Used to filter the alert by the custom field key-value pair.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier>, nil]
          optional :alert_specifiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier] }

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

          # @!method initialize(alert_id:, customer_id:, alert_specifiers: nil, group_values: nil, plans_or_contracts: nil, seat_filter: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::AlertRetrieveParams} for more details.
          #
          #   @param alert_id [String] The Metronome ID of the threshold notification
          #
          #   @param customer_id [String] The Metronome ID of the customer
          #
          #   @param alert_specifiers [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier>] Can be used with only `low_remaining_contract_credit_and_commit_balance_reached`
          #
          #   @param group_values [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::GroupValue>] Only present for `spend_threshold_reached` notifications. Retrieve the notificat
          #
          #   @param plans_or_contracts [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::PlansOrContracts] When parallel threshold notifications are enabled during migration, this flag de
          #
          #   @param seat_filter [MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::SeatFilter] Only allowed for `low_remaining_seat_balance_reached` notifications. This filter
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          class AlertSpecifier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute custom_field_filters
            #   A list of custom field filters for notification types that support advanced
            #   filtering
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter>]
            required :custom_field_filters,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter] }

            # @!attribute exclude
            #   If provided, the specifier will not apply to balances that matches the inclusion
            #   criteria and any of the excluding values.
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude>, nil]
            optional :exclude,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude] }

            # @!method initialize(custom_field_filters:, exclude: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier} for
            #   more details.
            #
            #   @param custom_field_filters [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter>] A list of custom field filters for notification types that support advanced filt
            #
            #   @param exclude [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude>] If provided, the specifier will not apply to balances that matches the inclusion

            class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute entity
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity]
              required :entity,
                       enum: -> { MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity }

              # @!attribute key
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #
              #   @return [String]
              required :value, String

              # @!method initialize(entity:, key:, value:)
              #   @param entity [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter::Entity]
              #   @param key [String]
              #   @param value [String]

              # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::CustomFieldFilter#entity
              module Entity
                extend MetronomeSDK::Internal::Type::Enum

                CONTRACT = :Contract
                COMMIT = :Commit
                CONTRACT_CREDIT = :ContractCredit
                CONTRACT_CREDIT_OR_COMMIT = :ContractCreditOrCommit

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Exclude < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute custom_field_filters
              #   A list of custom field filters for notification types that support advanced
              #   filtering
              #
              #   @return [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter>, nil]
              optional :custom_field_filters,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter] }

              # @!method initialize(custom_field_filters: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude}
              #   for more details.
              #
              #   @param custom_field_filters [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter>] A list of custom field filters for notification types that support advanced filt

              class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute entity
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity]
                required :entity,
                         enum: -> { MetronomeSDK::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity }

                # @!attribute key
                #
                #   @return [String]
                required :key, String

                # @!attribute value
                #
                #   @return [String]
                required :value, String

                # @!method initialize(entity:, key:, value:)
                #   @param entity [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter::Entity]
                #   @param key [String]
                #   @param value [String]

                # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::AlertSpecifier::Exclude::CustomFieldFilter#entity
                module Entity
                  extend MetronomeSDK::Internal::Type::Enum

                  CONTRACT = :Contract
                  COMMIT = :Commit
                  CONTRACT_CREDIT = :ContractCredit
                  CONTRACT_CREDIT_OR_COMMIT = :ContractCreditOrCommit

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end

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
