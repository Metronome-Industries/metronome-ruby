# typed: strong

module MetronomeSDK
  module Models
    class PaymentGateConfigV2 < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::PaymentGateConfigV2,
            MetronomeSDK::Internal::AnyHash
          )
        end

      # Gate access to the commit balance based on successful collection of payment.
      # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
      # facilitate payment using your own payment integration. Select NONE if you do not
      # wish to payment gate the commit balance.
      sig do
        returns(MetronomeSDK::PaymentGateConfigV2::PaymentGateType::OrSymbol)
      end
      attr_accessor :payment_gate_type

      # Only applicable if using PRECALCULATED as your tax type.
      sig do
        returns(
          T.nilable(MetronomeSDK::PaymentGateConfigV2::PrecalculatedTaxConfig)
        )
      end
      attr_reader :precalculated_tax_config

      sig do
        params(
          precalculated_tax_config:
            MetronomeSDK::PaymentGateConfigV2::PrecalculatedTaxConfig::OrHash
        ).void
      end
      attr_writer :precalculated_tax_config

      # Only applicable if using STRIPE as your payment gateway type.
      sig do
        returns(T.nilable(MetronomeSDK::PaymentGateConfigV2::StripeConfig))
      end
      attr_reader :stripe_config

      sig do
        params(
          stripe_config: MetronomeSDK::PaymentGateConfigV2::StripeConfig::OrHash
        ).void
      end
      attr_writer :stripe_config

      # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
      # not wish Metronome to calculate tax on your behalf. Leaving this field blank
      # will default to NONE.
      sig do
        returns(T.nilable(MetronomeSDK::PaymentGateConfigV2::TaxType::OrSymbol))
      end
      attr_reader :tax_type

      sig do
        params(
          tax_type: MetronomeSDK::PaymentGateConfigV2::TaxType::OrSymbol
        ).void
      end
      attr_writer :tax_type

      sig do
        params(
          payment_gate_type:
            MetronomeSDK::PaymentGateConfigV2::PaymentGateType::OrSymbol,
          precalculated_tax_config:
            MetronomeSDK::PaymentGateConfigV2::PrecalculatedTaxConfig::OrHash,
          stripe_config:
            MetronomeSDK::PaymentGateConfigV2::StripeConfig::OrHash,
          tax_type: MetronomeSDK::PaymentGateConfigV2::TaxType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Gate access to the commit balance based on successful collection of payment.
        # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
        # facilitate payment using your own payment integration. Select NONE if you do not
        # wish to payment gate the commit balance.
        payment_gate_type:,
        # Only applicable if using PRECALCULATED as your tax type.
        precalculated_tax_config: nil,
        # Only applicable if using STRIPE as your payment gateway type.
        stripe_config: nil,
        # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
        # not wish Metronome to calculate tax on your behalf. Leaving this field blank
        # will default to NONE.
        tax_type: nil
      )
      end

      sig do
        override.returns(
          {
            payment_gate_type:
              MetronomeSDK::PaymentGateConfigV2::PaymentGateType::OrSymbol,
            precalculated_tax_config:
              MetronomeSDK::PaymentGateConfigV2::PrecalculatedTaxConfig,
            stripe_config: MetronomeSDK::PaymentGateConfigV2::StripeConfig,
            tax_type: MetronomeSDK::PaymentGateConfigV2::TaxType::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Gate access to the commit balance based on successful collection of payment.
      # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
      # facilitate payment using your own payment integration. Select NONE if you do not
      # wish to payment gate the commit balance.
      module PaymentGateType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::PaymentGateConfigV2::PaymentGateType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(
            :NONE,
            MetronomeSDK::PaymentGateConfigV2::PaymentGateType::TaggedSymbol
          )
        STRIPE =
          T.let(
            :STRIPE,
            MetronomeSDK::PaymentGateConfigV2::PaymentGateType::TaggedSymbol
          )
        EXTERNAL =
          T.let(
            :EXTERNAL,
            MetronomeSDK::PaymentGateConfigV2::PaymentGateType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::PaymentGateConfigV2::PaymentGateType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class PrecalculatedTaxConfig < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PaymentGateConfigV2::PrecalculatedTaxConfig,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Amount of tax to be applied. This should be in the same currency and
        # denomination as the commit's invoice schedule
        sig { returns(Float) }
        attr_accessor :tax_amount

        # Name of the tax to be applied. This may be used in an invoice line item
        # description.
        sig { returns(T.nilable(String)) }
        attr_reader :tax_name

        sig { params(tax_name: String).void }
        attr_writer :tax_name

        # Only applicable if using PRECALCULATED as your tax type.
        sig do
          params(tax_amount: Float, tax_name: String).returns(T.attached_class)
        end
        def self.new(
          # Amount of tax to be applied. This should be in the same currency and
          # denomination as the commit's invoice schedule
          tax_amount:,
          # Name of the tax to be applied. This may be used in an invoice line item
          # description.
          tax_name: nil
        )
        end

        sig { override.returns({ tax_amount: Float, tax_name: String }) }
        def to_hash
        end
      end

      class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PaymentGateConfigV2::StripeConfig,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # If left blank, will default to INVOICE
        sig do
          returns(
            MetronomeSDK::PaymentGateConfigV2::StripeConfig::PaymentType::OrSymbol
          )
        end
        attr_accessor :payment_type

        # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
        # your payment type.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :invoice_metadata

        sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
        attr_writer :invoice_metadata

        # Only applicable if using STRIPE as your payment gateway type.
        sig do
          params(
            payment_type:
              MetronomeSDK::PaymentGateConfigV2::StripeConfig::PaymentType::OrSymbol,
            invoice_metadata: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # If left blank, will default to INVOICE
          payment_type:,
          # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
          # your payment type.
          invoice_metadata: nil
        )
        end

        sig do
          override.returns(
            {
              payment_type:
                MetronomeSDK::PaymentGateConfigV2::StripeConfig::PaymentType::OrSymbol,
              invoice_metadata: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end

        # If left blank, will default to INVOICE
        module PaymentType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::PaymentGateConfigV2::StripeConfig::PaymentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVOICE =
            T.let(
              :INVOICE,
              MetronomeSDK::PaymentGateConfigV2::StripeConfig::PaymentType::TaggedSymbol
            )
          PAYMENT_INTENT =
            T.let(
              :PAYMENT_INTENT,
              MetronomeSDK::PaymentGateConfigV2::StripeConfig::PaymentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PaymentGateConfigV2::StripeConfig::PaymentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
      # not wish Metronome to calculate tax on your behalf. Leaving this field blank
      # will default to NONE.
      module TaxType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::PaymentGateConfigV2::TaxType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(:NONE, MetronomeSDK::PaymentGateConfigV2::TaxType::TaggedSymbol)
        STRIPE =
          T.let(
            :STRIPE,
            MetronomeSDK::PaymentGateConfigV2::TaxType::TaggedSymbol
          )
        ANROK =
          T.let(
            :ANROK,
            MetronomeSDK::PaymentGateConfigV2::TaxType::TaggedSymbol
          )
        PRECALCULATED =
          T.let(
            :PRECALCULATED,
            MetronomeSDK::PaymentGateConfigV2::TaxType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[MetronomeSDK::PaymentGateConfigV2::TaxType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
