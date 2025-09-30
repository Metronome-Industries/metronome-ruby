# frozen_string_literal: true

module MetronomeSDK
  module Models
    class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute payment_gate_type
      #   Gate access to the commit balance based on successful collection of payment.
      #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
      #   facilitate payment using your own payment integration. Select NONE if you do not
      #   wish to payment gate the commit balance.
      #
      #   @return [Symbol, MetronomeSDK::Models::PaymentGateConfig::PaymentGateType]
      required :payment_gate_type, enum: -> { MetronomeSDK::PaymentGateConfig::PaymentGateType }

      # @!attribute precalculated_tax_config
      #   Only applicable if using PRECALCULATED as your tax type.
      #
      #   @return [MetronomeSDK::Models::PaymentGateConfig::PrecalculatedTaxConfig, nil]
      optional :precalculated_tax_config, -> { MetronomeSDK::PaymentGateConfig::PrecalculatedTaxConfig }

      # @!attribute stripe_config
      #   Only applicable if using STRIPE as your payment gate type.
      #
      #   @return [MetronomeSDK::Models::PaymentGateConfig::StripeConfig, nil]
      optional :stripe_config, -> { MetronomeSDK::PaymentGateConfig::StripeConfig }

      # @!attribute tax_type
      #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
      #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
      #   will default to NONE.
      #
      #   @return [Symbol, MetronomeSDK::Models::PaymentGateConfig::TaxType, nil]
      optional :tax_type, enum: -> { MetronomeSDK::PaymentGateConfig::TaxType }

      # @!method initialize(payment_gate_type:, precalculated_tax_config: nil, stripe_config: nil, tax_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::PaymentGateConfig} for more details.
      #
      #   @param payment_gate_type [Symbol, MetronomeSDK::Models::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
      #
      #   @param precalculated_tax_config [MetronomeSDK::Models::PaymentGateConfig::PrecalculatedTaxConfig] Only applicable if using PRECALCULATED as your tax type.
      #
      #   @param stripe_config [MetronomeSDK::Models::PaymentGateConfig::StripeConfig] Only applicable if using STRIPE as your payment gate type.
      #
      #   @param tax_type [Symbol, MetronomeSDK::Models::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

      # Gate access to the commit balance based on successful collection of payment.
      # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
      # facilitate payment using your own payment integration. Select NONE if you do not
      # wish to payment gate the commit balance.
      #
      # @see MetronomeSDK::Models::PaymentGateConfig#payment_gate_type
      module PaymentGateType
        extend MetronomeSDK::Internal::Type::Enum

        NONE = :NONE
        STRIPE = :STRIPE
        EXTERNAL = :EXTERNAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::PaymentGateConfig#precalculated_tax_config
      class PrecalculatedTaxConfig < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute tax_amount
        #   Amount of tax to be applied. This should be in the same currency and
        #   denomination as the commit's invoice schedule
        #
        #   @return [Float]
        required :tax_amount, Float

        # @!attribute tax_name
        #   Name of the tax to be applied. This may be used in an invoice line item
        #   description.
        #
        #   @return [String, nil]
        optional :tax_name, String

        # @!method initialize(tax_amount:, tax_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PaymentGateConfig::PrecalculatedTaxConfig} for more
        #   details.
        #
        #   Only applicable if using PRECALCULATED as your tax type.
        #
        #   @param tax_amount [Float] Amount of tax to be applied. This should be in the same currency and denominatio
        #
        #   @param tax_name [String] Name of the tax to be applied. This may be used in an invoice line item descript
      end

      # @see MetronomeSDK::Models::PaymentGateConfig#stripe_config
      class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute payment_type
        #   If left blank, will default to INVOICE
        #
        #   @return [Symbol, MetronomeSDK::Models::PaymentGateConfig::StripeConfig::PaymentType]
        required :payment_type, enum: -> { MetronomeSDK::PaymentGateConfig::StripeConfig::PaymentType }

        # @!attribute invoice_metadata
        #   Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
        #   your payment type.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :invoice_metadata, MetronomeSDK::Internal::Type::HashOf[String]

        # @!method initialize(payment_type:, invoice_metadata: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PaymentGateConfig::StripeConfig} for more details.
        #
        #   Only applicable if using STRIPE as your payment gate type.
        #
        #   @param payment_type [Symbol, MetronomeSDK::Models::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE
        #
        #   @param invoice_metadata [Hash{Symbol=>String}] Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as

        # If left blank, will default to INVOICE
        #
        # @see MetronomeSDK::Models::PaymentGateConfig::StripeConfig#payment_type
        module PaymentType
          extend MetronomeSDK::Internal::Type::Enum

          INVOICE = :INVOICE
          PAYMENT_INTENT = :PAYMENT_INTENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
      # not wish Metronome to calculate tax on your behalf. Leaving this field blank
      # will default to NONE.
      #
      # @see MetronomeSDK::Models::PaymentGateConfig#tax_type
      module TaxType
        extend MetronomeSDK::Internal::Type::Enum

        NONE = :NONE
        STRIPE = :STRIPE
        ANROK = :ANROK
        AVALARA = :AVALARA
        PRECALCULATED = :PRECALCULATED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
