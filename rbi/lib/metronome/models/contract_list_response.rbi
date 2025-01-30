# typed: strong

module Metronome
  module Models
    class ContractListResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: T::Array[Metronome::Models::ContractListResponse::Data]} }

      sig { returns(T::Array[Metronome::Models::ContractListResponse::Data]) }
      attr_accessor :data

      sig { params(data: T::Array[Metronome::Models::ContractListResponse::Data]).void }
      def initialize(data:); end

      sig { returns(Metronome::Models::ContractListResponse::Shape) }
      def to_h; end

      class Data < Metronome::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            amendments: T::Array[Metronome::Models::ContractListResponse::Data::Amendment],
            current: Metronome::Models::ContractWithoutAmendments,
            customer_id: String,
            initial: Metronome::Models::ContractWithoutAmendments,
            archived_at: Time,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configuration: Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration,
            scheduled_charges_on_usage_invoices: Symbol,
            uniqueness_key: String
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Array[Metronome::Models::ContractListResponse::Data::Amendment]) }
        attr_accessor :amendments

        sig { returns(Metronome::Models::ContractWithoutAmendments) }
        attr_accessor :current

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(Metronome::Models::ContractWithoutAmendments) }
        attr_accessor :initial

        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig do
          returns(T.nilable(Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration))
        end
        attr_reader :customer_billing_provider_configuration

        sig do
          params(
            customer_billing_provider_configuration: Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration
          ).void
        end
        attr_writer :customer_billing_provider_configuration

        sig { returns(T.nilable(Symbol)) }
        attr_reader :scheduled_charges_on_usage_invoices

        sig { params(scheduled_charges_on_usage_invoices: Symbol).void }
        attr_writer :scheduled_charges_on_usage_invoices

        sig { returns(T.nilable(String)) }
        attr_reader :uniqueness_key

        sig { params(uniqueness_key: String).void }
        attr_writer :uniqueness_key

        sig do
          params(
            id: String,
            amendments: T::Array[Metronome::Models::ContractListResponse::Data::Amendment],
            current: Metronome::Models::ContractWithoutAmendments,
            customer_id: String,
            initial: Metronome::Models::ContractWithoutAmendments,
            archived_at: Time,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configuration: Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration,
            scheduled_charges_on_usage_invoices: Symbol,
            uniqueness_key: String
          ).void
        end
        def initialize(
          id:,
          amendments:,
          current:,
          customer_id:,
          initial:,
          archived_at: nil,
          custom_fields: nil,
          customer_billing_provider_configuration: nil,
          scheduled_charges_on_usage_invoices: nil,
          uniqueness_key: nil
        ); end

        sig { returns(Metronome::Models::ContractListResponse::Data::Shape) }
        def to_h; end

        class Amendment < Metronome::BaseModel
          Shape = T.type_alias do
            {
              id: String,
              commits: T::Array[Metronome::Models::Commit],
              created_at: Time,
              created_by: String,
              overrides: T::Array[Metronome::Models::Override],
              scheduled_charges: T::Array[Metronome::Models::ScheduledCharge],
              starting_at: Time,
              credits: T::Array[Metronome::Models::Credit],
              discounts: T::Array[Metronome::Models::Discount],
              netsuite_sales_order_id: String,
              professional_services: T::Array[Metronome::Models::ProService],
              reseller_royalties: T::Array[Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty],
              salesforce_opportunity_id: String
            }
          end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T::Array[Metronome::Models::Commit]) }
          attr_accessor :commits

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :created_by

          sig { returns(T::Array[Metronome::Models::Override]) }
          attr_accessor :overrides

          sig { returns(T::Array[Metronome::Models::ScheduledCharge]) }
          attr_accessor :scheduled_charges

          sig { returns(Time) }
          attr_accessor :starting_at

          sig { returns(T.nilable(T::Array[Metronome::Models::Credit])) }
          attr_reader :credits

          sig { params(credits: T::Array[Metronome::Models::Credit]).void }
          attr_writer :credits

          sig { returns(T.nilable(T::Array[Metronome::Models::Discount])) }
          attr_reader :discounts

          sig { params(discounts: T::Array[Metronome::Models::Discount]).void }
          attr_writer :discounts

          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          sig { returns(T.nilable(T::Array[Metronome::Models::ProService])) }
          attr_reader :professional_services

          sig { params(professional_services: T::Array[Metronome::Models::ProService]).void }
          attr_writer :professional_services

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty]))
          end
          attr_reader :reseller_royalties

          sig do
            params(
              reseller_royalties: T::Array[Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty]
            ).void
          end
          attr_writer :reseller_royalties

          sig { returns(T.nilable(String)) }
          attr_reader :salesforce_opportunity_id

          sig { params(salesforce_opportunity_id: String).void }
          attr_writer :salesforce_opportunity_id

          sig do
            params(
              id: String,
              commits: T::Array[Metronome::Models::Commit],
              created_at: Time,
              created_by: String,
              overrides: T::Array[Metronome::Models::Override],
              scheduled_charges: T::Array[Metronome::Models::ScheduledCharge],
              starting_at: Time,
              credits: T::Array[Metronome::Models::Credit],
              discounts: T::Array[Metronome::Models::Discount],
              netsuite_sales_order_id: String,
              professional_services: T::Array[Metronome::Models::ProService],
              reseller_royalties: T::Array[Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty],
              salesforce_opportunity_id: String
            ).void
          end
          def initialize(
            id:,
            commits:,
            created_at:,
            created_by:,
            overrides:,
            scheduled_charges:,
            starting_at:,
            credits: nil,
            discounts: nil,
            netsuite_sales_order_id: nil,
            professional_services: nil,
            reseller_royalties: nil,
            salesforce_opportunity_id: nil
          ); end

          sig { returns(Metronome::Models::ContractListResponse::Data::Amendment::Shape) }
          def to_h; end

          class ResellerRoyalty < Metronome::BaseModel
            Shape = T.type_alias do
              {
                reseller_type: Symbol,
                aws_account_number: String,
                aws_offer_id: String,
                aws_payer_reference_id: String,
                ending_before: T.nilable(Time),
                fraction: Float,
                gcp_account_id: String,
                gcp_offer_id: String,
                netsuite_reseller_id: String,
                reseller_contract_value: Float,
                starting_at: Time
              }
            end

            sig { returns(Symbol) }
            attr_accessor :reseller_type

            sig { returns(T.nilable(String)) }
            attr_reader :aws_account_number

            sig { params(aws_account_number: String).void }
            attr_writer :aws_account_number

            sig { returns(T.nilable(String)) }
            attr_reader :aws_offer_id

            sig { params(aws_offer_id: String).void }
            attr_writer :aws_offer_id

            sig { returns(T.nilable(String)) }
            attr_reader :aws_payer_reference_id

            sig { params(aws_payer_reference_id: String).void }
            attr_writer :aws_payer_reference_id

            sig { returns(T.nilable(Time)) }
            attr_accessor :ending_before

            sig { returns(T.nilable(Float)) }
            attr_reader :fraction

            sig { params(fraction: Float).void }
            attr_writer :fraction

            sig { returns(T.nilable(String)) }
            attr_reader :gcp_account_id

            sig { params(gcp_account_id: String).void }
            attr_writer :gcp_account_id

            sig { returns(T.nilable(String)) }
            attr_reader :gcp_offer_id

            sig { params(gcp_offer_id: String).void }
            attr_writer :gcp_offer_id

            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_reseller_id

            sig { params(netsuite_reseller_id: String).void }
            attr_writer :netsuite_reseller_id

            sig { returns(T.nilable(Float)) }
            attr_reader :reseller_contract_value

            sig { params(reseller_contract_value: Float).void }
            attr_writer :reseller_contract_value

            sig { returns(T.nilable(Time)) }
            attr_reader :starting_at

            sig { params(starting_at: Time).void }
            attr_writer :starting_at

            sig do
              params(
                reseller_type: Symbol,
                aws_account_number: String,
                aws_offer_id: String,
                aws_payer_reference_id: String,
                ending_before: T.nilable(Time),
                fraction: Float,
                gcp_account_id: String,
                gcp_offer_id: String,
                netsuite_reseller_id: String,
                reseller_contract_value: Float,
                starting_at: Time
              ).void
            end
            def initialize(
              reseller_type:,
              aws_account_number: nil,
              aws_offer_id: nil,
              aws_payer_reference_id: nil,
              ending_before: nil,
              fraction: nil,
              gcp_account_id: nil,
              gcp_offer_id: nil,
              netsuite_reseller_id: nil,
              reseller_contract_value: nil,
              starting_at: nil
            ); end

            sig { returns(Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty::Shape) }
            def to_h; end

            class ResellerType < Metronome::Enum
              abstract!

              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end
        end

        class CustomerBillingProviderConfiguration < Metronome::BaseModel
          Shape = T.type_alias { {billing_provider: Symbol, delivery_method: Symbol} }

          sig { returns(Symbol) }
          attr_accessor :billing_provider

          sig { returns(Symbol) }
          attr_accessor :delivery_method

          sig { params(billing_provider: Symbol, delivery_method: Symbol).void }
          def initialize(billing_provider:, delivery_method:); end

          sig do
            returns(Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::Shape)
          end
          def to_h; end

          class BillingProvider < Metronome::Enum
            abstract!

            AWS_MARKETPLACE = :aws_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite
            CUSTOM = :custom
            AZURE_MARKETPLACE = :azure_marketplace
            QUICKBOOKS_ONLINE = :quickbooks_online
            WORKDAY = :workday
            GCP_MARKETPLACE = :gcp_marketplace

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end

          class DeliveryMethod < Metronome::Enum
            abstract!

            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            TACKLE = :tackle
            AWS_SNS = :aws_sns

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class ScheduledChargesOnUsageInvoices < Metronome::Enum
          abstract!

          ALL = :ALL

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
