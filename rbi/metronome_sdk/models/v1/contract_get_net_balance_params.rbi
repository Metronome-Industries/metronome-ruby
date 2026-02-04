# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractGetNetBalanceParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractGetNetBalanceParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The ID of the customer.
        sig { returns(String) }
        attr_accessor :customer_id

        # The ID of the credit type (can be fiat or a custom pricing unit) to get the
        # balance for. Defaults to USD (cents) if not specified.
        sig { returns(T.nilable(String)) }
        attr_reader :credit_type_id

        sig { params(credit_type_id: String).void }
        attr_writer :credit_type_id

        # Balance filters are OR'd together, so if a given commit or credit matches any of
        # the filters, it will be included in the net balance.
        sig { returns(T.nilable(T::Array[MetronomeSDK::BalanceFilter])) }
        attr_reader :filters

        sig do
          params(filters: T::Array[MetronomeSDK::BalanceFilter::OrHash]).void
        end
        attr_writer :filters

        # Controls which invoices are considered when calculating the remaining balance.
        # `FINALIZED` considers only deductions from finalized invoices.
        # `FINALIZED_AND_DRAFT` also includes deductions from pending draft invoices.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode::OrSymbol
            )
          )
        end
        attr_reader :invoice_inclusion_mode

        sig do
          params(
            invoice_inclusion_mode:
              MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode::OrSymbol
          ).void
        end
        attr_writer :invoice_inclusion_mode

        sig do
          params(
            customer_id: String,
            credit_type_id: String,
            filters: T::Array[MetronomeSDK::BalanceFilter::OrHash],
            invoice_inclusion_mode:
              MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode::OrSymbol,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the customer.
          customer_id:,
          # The ID of the credit type (can be fiat or a custom pricing unit) to get the
          # balance for. Defaults to USD (cents) if not specified.
          credit_type_id: nil,
          # Balance filters are OR'd together, so if a given commit or credit matches any of
          # the filters, it will be included in the net balance.
          filters: nil,
          # Controls which invoices are considered when calculating the remaining balance.
          # `FINALIZED` considers only deductions from finalized invoices.
          # `FINALIZED_AND_DRAFT` also includes deductions from pending draft invoices.
          invoice_inclusion_mode: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              credit_type_id: String,
              filters: T::Array[MetronomeSDK::BalanceFilter],
              invoice_inclusion_mode:
                MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode::OrSymbol,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Controls which invoices are considered when calculating the remaining balance.
        # `FINALIZED` considers only deductions from finalized invoices.
        # `FINALIZED_AND_DRAFT` also includes deductions from pending draft invoices.
        module InvoiceInclusionMode
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FINALIZED =
            T.let(
              :FINALIZED,
              MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode::TaggedSymbol
            )
          FINALIZED_AND_DRAFT =
            T.let(
              :FINALIZED_AND_DRAFT,
              MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::ContractGetNetBalanceParams::InvoiceInclusionMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
