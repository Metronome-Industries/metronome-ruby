# typed: strong

module Metronome
  module Models
    class ContractRetrieveResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::ContractRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: Metronome::Models::ContractRetrieveResponse::Data).returns(Metronome::Models::ContractRetrieveResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: Metronome::Models::ContractRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Metronome::Models::ContractRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment]) }
        def amendments
        end

        sig do
          params(_: T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment]).returns(T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment])
        end
        def amendments=(_)
        end

        sig { returns(Metronome::Models::ContractWithoutAmendments) }
        def current
        end

        sig do
          params(_: Metronome::Models::ContractWithoutAmendments).returns(Metronome::Models::ContractWithoutAmendments)
        end
        def current=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(Metronome::Models::ContractWithoutAmendments) }
        def initial
        end

        sig do
          params(_: Metronome::Models::ContractWithoutAmendments).returns(Metronome::Models::ContractWithoutAmendments)
        end
        def initial=(_)
        end

        sig { returns(T.nilable(Time)) }
        def archived_at
        end

        sig { params(_: Time).returns(Time) }
        def archived_at=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig do
          returns(T.nilable(Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration))
        end
        def customer_billing_provider_configuration
        end

        sig do
          params(_: Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration).returns(Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration)
        end
        def customer_billing_provider_configuration=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def scheduled_charges_on_usage_invoices
        end

        sig { params(_: Symbol).returns(Symbol) }
        def scheduled_charges_on_usage_invoices=(_)
        end

        sig { returns(T.nilable(String)) }
        def uniqueness_key
        end

        sig { params(_: String).returns(String) }
        def uniqueness_key=(_)
        end

        sig do
          params(
            id: String,
            amendments: T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment],
            current: Metronome::Models::ContractWithoutAmendments,
            customer_id: String,
            initial: Metronome::Models::ContractWithoutAmendments,
            archived_at: Time,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configuration: Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration,
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amendments: T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment],
              current: Metronome::Models::ContractWithoutAmendments,
              customer_id: String,
              initial: Metronome::Models::ContractWithoutAmendments,
              archived_at: Time,
              custom_fields: T::Hash[Symbol, String],
              customer_billing_provider_configuration: Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration,
              scheduled_charges_on_usage_invoices: Symbol,
              uniqueness_key: String
            }
          )
        end
        def to_hash
        end

        class Amendment < Metronome::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T::Array[Metronome::Models::Commit]) }
          def commits
          end

          sig { params(_: T::Array[Metronome::Models::Commit]).returns(T::Array[Metronome::Models::Commit]) }
          def commits=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def created_by
          end

          sig { params(_: String).returns(String) }
          def created_by=(_)
          end

          sig { returns(T::Array[Metronome::Models::Override]) }
          def overrides
          end

          sig do
            params(_: T::Array[Metronome::Models::Override]).returns(T::Array[Metronome::Models::Override])
          end
          def overrides=(_)
          end

          sig { returns(T::Array[Metronome::Models::ScheduledCharge]) }
          def scheduled_charges
          end

          sig do
            params(_: T::Array[Metronome::Models::ScheduledCharge]).returns(T::Array[Metronome::Models::ScheduledCharge])
          end
          def scheduled_charges=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(T::Array[Metronome::Models::Credit])) }
          def credits
          end

          sig { params(_: T::Array[Metronome::Models::Credit]).returns(T::Array[Metronome::Models::Credit]) }
          def credits=(_)
          end

          sig { returns(T.nilable(T::Array[Metronome::Models::Discount])) }
          def discounts
          end

          sig do
            params(_: T::Array[Metronome::Models::Discount]).returns(T::Array[Metronome::Models::Discount])
          end
          def discounts=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(T::Array[Metronome::Models::ProService])) }
          def professional_services
          end

          sig do
            params(_: T::Array[Metronome::Models::ProService]).returns(T::Array[Metronome::Models::ProService])
          end
          def professional_services=(_)
          end

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty]))
          end
          def reseller_royalties
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty]).returns(T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty])
          end
          def reseller_royalties=(_)
          end

          sig { returns(T.nilable(String)) }
          def salesforce_opportunity_id
          end

          sig { params(_: String).returns(String) }
          def salesforce_opportunity_id=(_)
          end

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
              reseller_royalties: T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty],
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
          )
          end

          sig do
            override.returns(
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
                reseller_royalties: T::Array[Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty],
                salesforce_opportunity_id: String
              }
            )
          end
          def to_hash
          end

          class ResellerRoyalty < Metronome::BaseModel
            sig { returns(Symbol) }
            def reseller_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def reseller_type=(_)
            end

            sig { returns(T.nilable(String)) }
            def aws_account_number
            end

            sig { params(_: String).returns(String) }
            def aws_account_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def aws_offer_id
            end

            sig { params(_: String).returns(String) }
            def aws_offer_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def aws_payer_reference_id
            end

            sig { params(_: String).returns(String) }
            def aws_payer_reference_id=(_)
            end

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
            def ending_before=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fraction
            end

            sig { params(_: Float).returns(Float) }
            def fraction=(_)
            end

            sig { returns(T.nilable(String)) }
            def gcp_account_id
            end

            sig { params(_: String).returns(String) }
            def gcp_account_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def gcp_offer_id
            end

            sig { params(_: String).returns(String) }
            def gcp_offer_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def netsuite_reseller_id
            end

            sig { params(_: String).returns(String) }
            def netsuite_reseller_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def reseller_contract_value
            end

            sig { params(_: Float).returns(Float) }
            def reseller_contract_value=(_)
            end

            sig { returns(T.nilable(Time)) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

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
            )
            end

            sig do
              override.returns(
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
              )
            end
            def to_hash
            end

            class ResellerType < Metronome::Enum
              abstract!

              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end

        class CustomerBillingProviderConfiguration < Metronome::BaseModel
          sig { returns(Symbol) }
          def billing_provider
          end

          sig { params(_: Symbol).returns(Symbol) }
          def billing_provider=(_)
          end

          sig { returns(Symbol) }
          def delivery_method
          end

          sig { params(_: Symbol).returns(Symbol) }
          def delivery_method=(_)
          end

          sig { params(billing_provider: Symbol, delivery_method: Symbol).void }
          def initialize(billing_provider:, delivery_method:)
          end

          sig { override.returns({billing_provider: Symbol, delivery_method: Symbol}) }
          def to_hash
          end

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
            def self.values
            end
          end

          class DeliveryMethod < Metronome::Enum
            abstract!

            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            TACKLE = :tackle
            AWS_SNS = :aws_sns

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class ScheduledChargesOnUsageInvoices < Metronome::Enum
          abstract!

          ALL = :ALL

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
