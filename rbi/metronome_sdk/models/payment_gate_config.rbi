# typed: strong

module MetronomeSDK
  module Models
    class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::PaymentGateConfig,
            MetronomeSDK::Internal::AnyHash
          )
        end

      # Gate access to the commit balance based on successful collection of payment.
      # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
      # facilitate payment using your own payment integration. Select NONE if you do not
      # wish to payment gate the commit balance.
      sig do
        returns(MetronomeSDK::PaymentGateConfig::PaymentGateType::OrSymbol)
      end
      attr_accessor :payment_gate_type

      # Only applicable if using PRECALCULATED as your tax type.
      sig do
        returns(
          T.nilable(MetronomeSDK::PaymentGateConfig::PrecalculatedTaxConfig)
        )
      end
      attr_reader :precalculated_tax_config

      sig do
        params(
          precalculated_tax_config:
            MetronomeSDK::PaymentGateConfig::PrecalculatedTaxConfig::OrHash
        ).void
      end
      attr_writer :precalculated_tax_config

      # Only applicable if using STRIPE as your payment gate type.
      sig { returns(T.nilable(MetronomeSDK::PaymentGateConfig::StripeConfig)) }
      attr_reader :stripe_config

      sig do
        params(
          stripe_config: MetronomeSDK::PaymentGateConfig::StripeConfig::OrHash
        ).void
      end
      attr_writer :stripe_config

      # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
      # not wish Metronome to calculate tax on your behalf. Leaving this field blank
      # will default to NONE.
      sig do
        returns(T.nilable(MetronomeSDK::PaymentGateConfig::TaxType::OrSymbol))
      end
      attr_reader :tax_type

      sig do
        params(
          tax_type: MetronomeSDK::PaymentGateConfig::TaxType::OrSymbol
        ).void
      end
      attr_writer :tax_type

      sig do
        params(
          payment_gate_type:
            MetronomeSDK::PaymentGateConfig::PaymentGateType::OrSymbol,
          precalculated_tax_config:
            MetronomeSDK::PaymentGateConfig::PrecalculatedTaxConfig::OrHash,
          stripe_config: MetronomeSDK::PaymentGateConfig::StripeConfig::OrHash,
          tax_type: MetronomeSDK::PaymentGateConfig::TaxType::OrSymbol
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
        # Only applicable if using STRIPE as your payment gate type.
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
              MetronomeSDK::PaymentGateConfig::PaymentGateType::OrSymbol,
            precalculated_tax_config:
              MetronomeSDK::PaymentGateConfig::PrecalculatedTaxConfig,
            stripe_config: MetronomeSDK::PaymentGateConfig::StripeConfig,
            tax_type: MetronomeSDK::PaymentGateConfig::TaxType::OrSymbol
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
            T.all(Symbol, MetronomeSDK::PaymentGateConfig::PaymentGateType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(
            :NONE,
            MetronomeSDK::PaymentGateConfig::PaymentGateType::TaggedSymbol
          )
        STRIPE =
          T.let(
            :STRIPE,
            MetronomeSDK::PaymentGateConfig::PaymentGateType::TaggedSymbol
          )
        EXTERNAL =
          T.let(
            :EXTERNAL,
            MetronomeSDK::PaymentGateConfig::PaymentGateType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::PaymentGateConfig::PaymentGateType::TaggedSymbol
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
              MetronomeSDK::PaymentGateConfig::PrecalculatedTaxConfig,
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
              MetronomeSDK::PaymentGateConfig::StripeConfig,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # If left blank, will default to INVOICE
        sig do
          returns(
            MetronomeSDK::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
          )
        end
        attr_accessor :payment_type

        # Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
        # your payment type.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :invoice_metadata

        sig { params(invoice_metadata: T::Hash[Symbol, String]).void }
        attr_writer :invoice_metadata

        # Only applicable if using STRIPE as your payment gate type.
        sig do
          params(
            payment_type:
              MetronomeSDK::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                MetronomeSDK::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol,
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
                MetronomeSDK::PaymentGateConfig::StripeConfig::PaymentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVOICE =
            T.let(
              :INVOICE,
              MetronomeSDK::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
            )
          PAYMENT_INTENT =
            T.let(
              :PAYMENT_INTENT,
              MetronomeSDK::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
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
            T.all(Symbol, MetronomeSDK::PaymentGateConfig::TaxType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(:NONE, MetronomeSDK::PaymentGateConfig::TaxType::TaggedSymbol)
        STRIPE =
          T.let(:STRIPE, MetronomeSDK::PaymentGateConfig::TaxType::TaggedSymbol)
        ANROK =
          T.let(:ANROK, MetronomeSDK::PaymentGateConfig::TaxType::TaggedSymbol)
        AVALARA =
          T.let(
            :AVALARA,
            MetronomeSDK::PaymentGateConfig::TaxType::TaggedSymbol
          )
        PRECALCULATED =
          T.let(
            :PRECALCULATED,
            MetronomeSDK::PaymentGateConfig::TaxType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[MetronomeSDK::PaymentGateConfig::TaxType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
