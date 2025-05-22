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
          #   The Metronome ID of the alert
          #
          #   @return [String]
          required :alert_id, String

          # @!attribute customer_id
          #   The Metronome ID of the customer
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute plans_or_contracts
          #   When parallel alerts are enabled during migration, this flag denotes whether to
          #   fetch alerts for plans or contracts.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::PlansOrContracts, nil]
          optional :plans_or_contracts,
                   enum: -> { MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts }

          # @!method initialize(alert_id:, customer_id:, plans_or_contracts: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::AlertRetrieveParams} for more details.
          #
          #   @param alert_id [String] The Metronome ID of the alert
          #
          #   @param customer_id [String] The Metronome ID of the customer
          #
          #   @param plans_or_contracts [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::PlansOrContracts] When parallel alerts are enabled during migration, this flag denotes whether to
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          # When parallel alerts are enabled during migration, this flag denotes whether to
          # fetch alerts for plans or contracts.
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
