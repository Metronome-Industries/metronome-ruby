# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Payments#list
      class Payment < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #
        #   @return [Float, nil]
        optional :amount, Float

        # @!attribute amount_paid
        #
        #   @return [Float, nil]
        optional :amount_paid, Float

        # @!attribute contract_id
        #
        #   @return [String, nil]
        optional :contract_id, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String

        # @!attribute fiat_credit_type
        #
        #   @return [MetronomeSDK::Models::CreditTypeData, nil]
        optional :fiat_credit_type, -> { MetronomeSDK::CreditTypeData }

        # @!attribute invoice_id
        #
        #   @return [String, nil]
        optional :invoice_id, String

        # @!attribute payment_gateway
        #
        #   @return [MetronomeSDK::Models::V1::Payment::PaymentGateway, nil]
        optional :payment_gateway, -> { MetronomeSDK::V1::Payment::PaymentGateway }

        # @!attribute revenue_system_payments
        #
        #   @return [Array<MetronomeSDK::Models::V1::Payment::RevenueSystemPayment>, nil]
        optional :revenue_system_payments,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Payment::RevenueSystemPayment] }

        # @!attribute status
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PaymentStatus, nil]
        optional :status, enum: -> { MetronomeSDK::V1::PaymentStatus }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id:, amount: nil, amount_paid: nil, contract_id: nil, created_at: nil, customer_id: nil, error_message: nil, fiat_credit_type: nil, invoice_id: nil, payment_gateway: nil, revenue_system_payments: nil, status: nil, updated_at: nil)
        #   @param id [String]
        #   @param amount [Float]
        #   @param amount_paid [Float]
        #   @param contract_id [String]
        #   @param created_at [Time]
        #   @param customer_id [String]
        #   @param error_message [String]
        #   @param fiat_credit_type [MetronomeSDK::Models::CreditTypeData]
        #   @param invoice_id [String]
        #   @param payment_gateway [MetronomeSDK::Models::V1::Payment::PaymentGateway]
        #   @param revenue_system_payments [Array<MetronomeSDK::Models::V1::Payment::RevenueSystemPayment>]
        #   @param status [Symbol, MetronomeSDK::Models::V1::PaymentStatus]
        #   @param updated_at [Time]

        # @see MetronomeSDK::Models::V1::Payment#payment_gateway
        class PaymentGateway < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute stripe
          #
          #   @return [MetronomeSDK::Models::V1::Payment::PaymentGateway::Stripe]
          required :stripe, -> { MetronomeSDK::V1::Payment::PaymentGateway::Stripe }

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Payment::PaymentGateway::Type]
          required :type, enum: -> { MetronomeSDK::V1::Payment::PaymentGateway::Type }

          # @!method initialize(stripe:, type:)
          #   @param stripe [MetronomeSDK::Models::V1::Payment::PaymentGateway::Stripe]
          #   @param type [Symbol, MetronomeSDK::Models::V1::Payment::PaymentGateway::Type]

          # @see MetronomeSDK::Models::V1::Payment::PaymentGateway#stripe
          class Stripe < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_intent_id
            #
            #   @return [String]
            required :payment_intent_id, String

            # @!attribute error
            #
            #   @return [MetronomeSDK::Models::V1::Payment::PaymentGateway::Stripe::Error, nil]
            optional :error, -> { MetronomeSDK::V1::Payment::PaymentGateway::Stripe::Error }

            # @!attribute payment_method_id
            #
            #   @return [String, nil]
            optional :payment_method_id, String

            # @!method initialize(payment_intent_id:, error: nil, payment_method_id: nil)
            #   @param payment_intent_id [String]
            #   @param error [MetronomeSDK::Models::V1::Payment::PaymentGateway::Stripe::Error]
            #   @param payment_method_id [String]

            # @see MetronomeSDK::Models::V1::Payment::PaymentGateway::Stripe#error
            class Error < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute code
              #
              #   @return [String, nil]
              optional :code, String

              # @!attribute decline_code
              #
              #   @return [String, nil]
              optional :decline_code, String

              # @!attribute type
              #
              #   @return [String, nil]
              optional :type, String

              # @!method initialize(code: nil, decline_code: nil, type: nil)
              #   @param code [String]
              #   @param decline_code [String]
              #   @param type [String]
            end
          end

          # @see MetronomeSDK::Models::V1::Payment::PaymentGateway#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            STRIPE = :stripe

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class RevenueSystemPayment < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute revenue_system_provider
          #
          #   @return [String]
          required :revenue_system_provider, String

          # @!attribute sync_status
          #
          #   @return [String]
          required :sync_status, String

          # @!attribute error_message
          #   The error message from the revenue system, if available.
          #
          #   @return [String, nil]
          optional :error_message, String

          # @!attribute revenue_system_external_payment_id
          #
          #   @return [String, nil]
          optional :revenue_system_external_payment_id, String

          # @!method initialize(revenue_system_provider:, sync_status:, error_message: nil, revenue_system_external_payment_id: nil)
          #   @param revenue_system_provider [String]
          #
          #   @param sync_status [String]
          #
          #   @param error_message [String] The error message from the revenue system, if available.
          #
          #   @param revenue_system_external_payment_id [String]
        end
      end
    end
  end
end
