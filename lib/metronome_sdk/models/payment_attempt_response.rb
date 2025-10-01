# frozen_string_literal: true

module MetronomeSDK
  module Models
    # @see MetronomeSDK::Resources::Payments#attempt
    class PaymentAttemptResponse < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [MetronomeSDK::Models::PaymentAttemptResponse::Data]
      required :data, -> { MetronomeSDK::Models::PaymentAttemptResponse::Data }

      # @!method initialize(data:)
      #   @param data [MetronomeSDK::Models::PaymentAttemptResponse::Data]

      # @see MetronomeSDK::Models::PaymentAttemptResponse#data
      class Data < MetronomeSDK::Internal::Type::BaseModel
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
        #   @return [MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway, nil]
        optional :payment_gateway, -> { MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway }

        # @!attribute status
        #
        #   @return [Symbol, MetronomeSDK::Models::PaymentAttemptResponse::Data::Status, nil]
        optional :status, enum: -> { MetronomeSDK::Models::PaymentAttemptResponse::Data::Status }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id:, amount: nil, amount_paid: nil, contract_id: nil, created_at: nil, customer_id: nil, error_message: nil, fiat_credit_type: nil, invoice_id: nil, payment_gateway: nil, status: nil, updated_at: nil)
        #   @param id [String]
        #   @param amount [Float]
        #   @param amount_paid [Float]
        #   @param contract_id [String]
        #   @param created_at [Time]
        #   @param customer_id [String]
        #   @param error_message [String]
        #   @param fiat_credit_type [MetronomeSDK::Models::CreditTypeData]
        #   @param invoice_id [String]
        #   @param payment_gateway [MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway]
        #   @param status [Symbol, MetronomeSDK::Models::PaymentAttemptResponse::Data::Status]
        #   @param updated_at [Time]

        # @see MetronomeSDK::Models::PaymentAttemptResponse::Data#payment_gateway
        class PaymentGateway < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute stripe
          #
          #   @return [MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Stripe]
          required :stripe, -> { MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Stripe }

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Type]
          required :type, enum: -> { MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Type }

          # @!method initialize(stripe:, type:)
          #   @param stripe [MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Stripe]
          #   @param type [Symbol, MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Type]

          # @see MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway#stripe
          class Stripe < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_intent_id
            #
            #   @return [String]
            required :payment_intent_id, String

            # @!attribute error
            #
            #   @return [MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Stripe::Error, nil]
            optional :error, -> { MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Stripe::Error }

            # @!method initialize(payment_intent_id:, error: nil)
            #   @param payment_intent_id [String]
            #   @param error [MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Stripe::Error]

            # @see MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway::Stripe#error
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

          # @see MetronomeSDK::Models::PaymentAttemptResponse::Data::PaymentGateway#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            STRIPE = :stripe

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PaymentAttemptResponse::Data#status
        module Status
          extend MetronomeSDK::Internal::Type::Enum

          PENDING = :pending
          REQUIRES_INTERVENTION = :requires_intervention
          PAID = :paid
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
