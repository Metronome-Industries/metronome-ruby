# typed: strong

module Metronome
  module Models
    module Customers
      class Invoice < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Metronome::Models::CreditTypeData) }
        def credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def credit_type=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(T::Array[Metronome::Models::Customers::Invoice::LineItem]) }
        def line_items
        end

        sig do
          params(_: T::Array[Metronome::Models::Customers::Invoice::LineItem])
            .returns(T::Array[Metronome::Models::Customers::Invoice::LineItem])
        end
        def line_items=(_)
        end

        sig { returns(String) }
        def status
        end

        sig { params(_: String).returns(String) }
        def status=(_)
        end

        sig { returns(Float) }
        def total
        end

        sig { params(_: Float).returns(Float) }
        def total=(_)
        end

        sig { returns(String) }
        def type
        end

        sig { params(_: String).returns(String) }
        def type=(_)
        end

        sig { returns(T.nilable(String)) }
        def amendment_id
        end

        sig { params(_: String).returns(String) }
        def amendment_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def billable_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def billable_status=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def contract_custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def contract_custom_fields=(_)
        end

        sig { returns(T.nilable(String)) }
        def contract_id
        end

        sig { params(_: String).returns(String) }
        def contract_id=(_)
        end

        sig { returns(T.nilable(Metronome::Models::Customers::Invoice::CorrectionRecord)) }
        def correction_record
        end

        sig do
          params(_: Metronome::Models::Customers::Invoice::CorrectionRecord)
            .returns(Metronome::Models::Customers::Invoice::CorrectionRecord)
        end
        def correction_record=(_)
        end

        sig { returns(T.nilable(Time)) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def custom_fields=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def customer_custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def customer_custom_fields=(_)
        end

        sig { returns(T.nilable(Time)) }
        def end_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def end_timestamp=(_)
        end

        sig { returns(T.nilable(Metronome::Models::Customers::Invoice::ExternalInvoice)) }
        def external_invoice
        end

        sig do
          params(_: T.nilable(Metronome::Models::Customers::Invoice::ExternalInvoice))
            .returns(T.nilable(Metronome::Models::Customers::Invoice::ExternalInvoice))
        end
        def external_invoice=(_)
        end

        sig { returns(T.nilable(T::Array[Metronome::Models::Customers::Invoice::InvoiceAdjustment])) }
        def invoice_adjustments
        end

        sig do
          params(_: T::Array[Metronome::Models::Customers::Invoice::InvoiceAdjustment])
            .returns(T::Array[Metronome::Models::Customers::Invoice::InvoiceAdjustment])
        end
        def invoice_adjustments=(_)
        end

        sig { returns(T.nilable(Time)) }
        def issued_at
        end

        sig { params(_: Time).returns(Time) }
        def issued_at=(_)
        end

        sig { returns(T.nilable(Float)) }
        def net_payment_terms_days
        end

        sig { params(_: Float).returns(Float) }
        def net_payment_terms_days=(_)
        end

        sig { returns(T.nilable(String)) }
        def netsuite_sales_order_id
        end

        sig { params(_: String).returns(String) }
        def netsuite_sales_order_id=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def plan_custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def plan_custom_fields=(_)
        end

        sig { returns(T.nilable(String)) }
        def plan_id
        end

        sig { params(_: String).returns(String) }
        def plan_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def plan_name
        end

        sig { params(_: String).returns(String) }
        def plan_name=(_)
        end

        sig { returns(T.nilable(Metronome::Models::Customers::Invoice::ResellerRoyalty)) }
        def reseller_royalty
        end

        sig do
          params(_: Metronome::Models::Customers::Invoice::ResellerRoyalty)
            .returns(Metronome::Models::Customers::Invoice::ResellerRoyalty)
        end
        def reseller_royalty=(_)
        end

        sig { returns(T.nilable(String)) }
        def salesforce_opportunity_id
        end

        sig { params(_: String).returns(String) }
        def salesforce_opportunity_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def start_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def start_timestamp=(_)
        end

        sig { returns(T.nilable(Float)) }
        def subtotal
        end

        sig { params(_: Float).returns(Float) }
        def subtotal=(_)
        end

        sig do
          params(
            id: String,
            credit_type: Metronome::Models::CreditTypeData,
            customer_id: String,
            line_items: T::Array[Metronome::Models::Customers::Invoice::LineItem],
            status: String,
            total: Float,
            type: String,
            amendment_id: String,
            billable_status: Symbol,
            contract_custom_fields: T::Hash[Symbol, String],
            contract_id: String,
            correction_record: Metronome::Models::Customers::Invoice::CorrectionRecord,
            created_at: Time,
            custom_fields: T::Hash[Symbol, T.anything],
            customer_custom_fields: T::Hash[Symbol, String],
            end_timestamp: Time,
            external_invoice: T.nilable(Metronome::Models::Customers::Invoice::ExternalInvoice),
            invoice_adjustments: T::Array[Metronome::Models::Customers::Invoice::InvoiceAdjustment],
            issued_at: Time,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            plan_custom_fields: T::Hash[Symbol, String],
            plan_id: String,
            plan_name: String,
            reseller_royalty: Metronome::Models::Customers::Invoice::ResellerRoyalty,
            salesforce_opportunity_id: String,
            start_timestamp: Time,
            subtotal: Float
          )
            .void
        end
        def initialize(
          id:,
          credit_type:,
          customer_id:,
          line_items:,
          status:,
          total:,
          type:,
          amendment_id: nil,
          billable_status: nil,
          contract_custom_fields: nil,
          contract_id: nil,
          correction_record: nil,
          created_at: nil,
          custom_fields: nil,
          customer_custom_fields: nil,
          end_timestamp: nil,
          external_invoice: nil,
          invoice_adjustments: nil,
          issued_at: nil,
          net_payment_terms_days: nil,
          netsuite_sales_order_id: nil,
          plan_custom_fields: nil,
          plan_id: nil,
          plan_name: nil,
          reseller_royalty: nil,
          salesforce_opportunity_id: nil,
          start_timestamp: nil,
          subtotal: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                credit_type: Metronome::Models::CreditTypeData,
                customer_id: String,
                line_items: T::Array[Metronome::Models::Customers::Invoice::LineItem],
                status: String,
                total: Float,
                type: String,
                amendment_id: String,
                billable_status: Symbol,
                contract_custom_fields: T::Hash[Symbol, String],
                contract_id: String,
                correction_record: Metronome::Models::Customers::Invoice::CorrectionRecord,
                created_at: Time,
                custom_fields: T::Hash[Symbol, T.anything],
                customer_custom_fields: T::Hash[Symbol, String],
                end_timestamp: Time,
                external_invoice: T.nilable(Metronome::Models::Customers::Invoice::ExternalInvoice),
                invoice_adjustments: T::Array[Metronome::Models::Customers::Invoice::InvoiceAdjustment],
                issued_at: Time,
                net_payment_terms_days: Float,
                netsuite_sales_order_id: String,
                plan_custom_fields: T::Hash[Symbol, String],
                plan_id: String,
                plan_name: String,
                reseller_royalty: Metronome::Models::Customers::Invoice::ResellerRoyalty,
                salesforce_opportunity_id: String,
                start_timestamp: Time,
                subtotal: Float
              }
            )
        end
        def to_hash
        end

        class LineItem < Metronome::BaseModel
          sig { returns(Metronome::Models::CreditTypeData) }
          def credit_type
          end

          sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
          def credit_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Float) }
          def total
          end

          sig { params(_: Float).returns(Float) }
          def total=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit)) }
          def applied_commit_or_credit
          end

          sig do
            params(_: Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit)
              .returns(Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit)
          end
          def applied_commit_or_credit=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def commit_custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def commit_custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def commit_id
          end

          sig { params(_: String).returns(String) }
          def commit_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def commit_netsuite_item_id
          end

          sig { params(_: String).returns(String) }
          def commit_netsuite_item_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def commit_netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def commit_netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def commit_segment_id
          end

          sig { params(_: String).returns(String) }
          def commit_segment_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def commit_type
          end

          sig { params(_: String).returns(String) }
          def commit_type=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def custom_fields=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(String)) }
          def group_key
          end

          sig { params(_: String).returns(String) }
          def group_key=(_)
          end

          sig { returns(T.nilable(String)) }
          def group_value
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def group_value=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_prorated
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_prorated=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Rate)) }
          def list_price
          end

          sig { params(_: Metronome::Models::Rate).returns(Metronome::Models::Rate) }
          def list_price=(_)
          end

          sig { returns(T.nilable(String)) }
          def metadata
          end

          sig { params(_: String).returns(String) }
          def metadata=(_)
          end

          sig { returns(T.nilable(Time)) }
          def netsuite_invoice_billing_end
          end

          sig { params(_: Time).returns(Time) }
          def netsuite_invoice_billing_end=(_)
          end

          sig { returns(T.nilable(Time)) }
          def netsuite_invoice_billing_start
          end

          sig { params(_: Time).returns(Time) }
          def netsuite_invoice_billing_start=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_item_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_item_id=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit)) }
          def postpaid_commit
          end

          sig do
            params(_: Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit)
              .returns(Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit)
          end
          def postpaid_commit=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def presentation_group_values
          end

          sig { params(_: T::Hash[Symbol, T.nilable(String)]).returns(T::Hash[Symbol, T.nilable(String)]) }
          def presentation_group_values=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def pricing_group_values
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def pricing_group_values=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def product_custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def product_custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def product_type
          end

          sig { params(_: String).returns(String) }
          def product_type=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def professional_service_custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def professional_service_custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def professional_service_id
          end

          sig { params(_: String).returns(String) }
          def professional_service_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def reseller_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reseller_type=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def scheduled_charge_custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def scheduled_charge_custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def scheduled_charge_id
          end

          sig { params(_: String).returns(String) }
          def scheduled_charge_id=(_)
          end

          sig { returns(T.nilable(Time)) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem])) }
          def sub_line_items
          end

          sig do
            params(_: T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem])
              .returns(T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem])
          end
          def sub_line_items=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::LineItem::Tier)) }
          def tier
          end

          sig do
            params(_: Metronome::Models::Customers::Invoice::LineItem::Tier)
              .returns(Metronome::Models::Customers::Invoice::LineItem::Tier)
          end
          def tier=(_)
          end

          sig { returns(T.nilable(Float)) }
          def unit_price
          end

          sig { params(_: Float).returns(Float) }
          def unit_price=(_)
          end

          sig do
            params(
              credit_type: Metronome::Models::CreditTypeData,
              name: String,
              total: Float,
              applied_commit_or_credit: Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit,
              commit_custom_fields: T::Hash[Symbol, String],
              commit_id: String,
              commit_netsuite_item_id: String,
              commit_netsuite_sales_order_id: String,
              commit_segment_id: String,
              commit_type: String,
              custom_fields: T::Hash[Symbol, String],
              ending_before: Time,
              group_key: String,
              group_value: T.nilable(String),
              is_prorated: T::Boolean,
              list_price: Metronome::Models::Rate,
              metadata: String,
              netsuite_invoice_billing_end: Time,
              netsuite_invoice_billing_start: Time,
              netsuite_item_id: String,
              postpaid_commit: Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit,
              presentation_group_values: T::Hash[Symbol, T.nilable(String)],
              pricing_group_values: T::Hash[Symbol, String],
              product_custom_fields: T::Hash[Symbol, String],
              product_id: String,
              product_type: String,
              professional_service_custom_fields: T::Hash[Symbol, String],
              professional_service_id: String,
              quantity: Float,
              reseller_type: Symbol,
              scheduled_charge_custom_fields: T::Hash[Symbol, String],
              scheduled_charge_id: String,
              starting_at: Time,
              sub_line_items: T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem],
              tier: Metronome::Models::Customers::Invoice::LineItem::Tier,
              unit_price: Float
            )
              .void
          end
          def initialize(
            credit_type:,
            name:,
            total:,
            applied_commit_or_credit: nil,
            commit_custom_fields: nil,
            commit_id: nil,
            commit_netsuite_item_id: nil,
            commit_netsuite_sales_order_id: nil,
            commit_segment_id: nil,
            commit_type: nil,
            custom_fields: nil,
            ending_before: nil,
            group_key: nil,
            group_value: nil,
            is_prorated: nil,
            list_price: nil,
            metadata: nil,
            netsuite_invoice_billing_end: nil,
            netsuite_invoice_billing_start: nil,
            netsuite_item_id: nil,
            postpaid_commit: nil,
            presentation_group_values: nil,
            pricing_group_values: nil,
            product_custom_fields: nil,
            product_id: nil,
            product_type: nil,
            professional_service_custom_fields: nil,
            professional_service_id: nil,
            quantity: nil,
            reseller_type: nil,
            scheduled_charge_custom_fields: nil,
            scheduled_charge_id: nil,
            starting_at: nil,
            sub_line_items: nil,
            tier: nil,
            unit_price: nil
          )
          end

          sig do
            override
              .returns(
                {
                  credit_type: Metronome::Models::CreditTypeData,
                  name: String,
                  total: Float,
                  applied_commit_or_credit: Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit,
                  commit_custom_fields: T::Hash[Symbol, String],
                  commit_id: String,
                  commit_netsuite_item_id: String,
                  commit_netsuite_sales_order_id: String,
                  commit_segment_id: String,
                  commit_type: String,
                  custom_fields: T::Hash[Symbol, String],
                  ending_before: Time,
                  group_key: String,
                  group_value: T.nilable(String),
                  is_prorated: T::Boolean,
                  list_price: Metronome::Models::Rate,
                  metadata: String,
                  netsuite_invoice_billing_end: Time,
                  netsuite_invoice_billing_start: Time,
                  netsuite_item_id: String,
                  postpaid_commit: Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit,
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_custom_fields: T::Hash[Symbol, String],
                  product_id: String,
                  product_type: String,
                  professional_service_custom_fields: T::Hash[Symbol, String],
                  professional_service_id: String,
                  quantity: Float,
                  reseller_type: Symbol,
                  scheduled_charge_custom_fields: T::Hash[Symbol, String],
                  scheduled_charge_id: String,
                  starting_at: Time,
                  sub_line_items: T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem],
                  tier: Metronome::Models::Customers::Invoice::LineItem::Tier,
                  unit_price: Float
                }
              )
          end
          def to_hash
          end

          class AppliedCommitOrCredit < Metronome::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(id: String, type: Symbol).void }
            def initialize(id:, type:)
            end

            sig { override.returns({id: String, type: Symbol}) }
            def to_hash
            end

            class Type < Metronome::Enum
              abstract!

              PREPAID = :PREPAID
              POSTPAID = :POSTPAID
              CREDIT = :CREDIT

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class PostpaidCommit < Metronome::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { params(id: String).void }
            def initialize(id:)
            end

            sig { override.returns({id: String}) }
            def to_hash
            end
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

          class SubLineItem < Metronome::BaseModel
            sig { returns(T::Hash[Symbol, String]) }
            def custom_fields
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def custom_fields=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Float) }
            def subtotal
            end

            sig { params(_: Float).returns(Float) }
            def subtotal=(_)
            end

            sig { returns(T.nilable(String)) }
            def charge_id
            end

            sig { params(_: String).returns(String) }
            def charge_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def credit_grant_id
            end

            sig { params(_: String).returns(String) }
            def credit_grant_id=(_)
            end

            sig { returns(T.nilable(Time)) }
            def end_date
            end

            sig { params(_: Time).returns(Time) }
            def end_date=(_)
            end

            sig { returns(T.nilable(Float)) }
            def price
            end

            sig { params(_: Float).returns(Float) }
            def price=(_)
            end

            sig { returns(T.nilable(Time)) }
            def start_date
            end

            sig { params(_: Time).returns(Time) }
            def start_date=(_)
            end

            sig { returns(T.nilable(Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod)) }
            def tier_period
            end

            sig do
              params(_: Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod)
                .returns(Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod)
            end
            def tier_period=(_)
            end

            sig { returns(T.nilable(T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier])) }
            def tiers
            end

            sig do
              params(_: T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier])
                .returns(T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier])
            end
            def tiers=(_)
            end

            sig do
              params(
                custom_fields: T::Hash[Symbol, String],
                name: String,
                quantity: Float,
                subtotal: Float,
                charge_id: String,
                credit_grant_id: String,
                end_date: Time,
                price: Float,
                start_date: Time,
                tier_period: Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod,
                tiers: T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier]
              )
                .void
            end
            def initialize(
              custom_fields:,
              name:,
              quantity:,
              subtotal:,
              charge_id: nil,
              credit_grant_id: nil,
              end_date: nil,
              price: nil,
              start_date: nil,
              tier_period: nil,
              tiers: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    custom_fields: T::Hash[Symbol, String],
                    name: String,
                    quantity: Float,
                    subtotal: Float,
                    charge_id: String,
                    credit_grant_id: String,
                    end_date: Time,
                    price: Float,
                    start_date: Time,
                    tier_period: Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod,
                    tiers: T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier]
                  }
                )
            end
            def to_hash
            end

            class TierPeriod < Metronome::BaseModel
              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { returns(T.nilable(Time)) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { params(starting_at: Time, ending_before: Time).void }
              def initialize(starting_at:, ending_before: nil)
              end

              sig { override.returns({starting_at: Time, ending_before: Time}) }
              def to_hash
              end
            end

            class Tier < Metronome::BaseModel
              sig { returns(Float) }
              def price
              end

              sig { params(_: Float).returns(Float) }
              def price=(_)
              end

              sig { returns(Float) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(Float) }
              def starting_at
              end

              sig { params(_: Float).returns(Float) }
              def starting_at=(_)
              end

              sig { returns(Float) }
              def subtotal
              end

              sig { params(_: Float).returns(Float) }
              def subtotal=(_)
              end

              sig { params(price: Float, quantity: Float, starting_at: Float, subtotal: Float).void }
              def initialize(price:, quantity:, starting_at:, subtotal:)
              end

              sig { override.returns({price: Float, quantity: Float, starting_at: Float, subtotal: Float}) }
              def to_hash
              end
            end
          end

          class Tier < Metronome::BaseModel
            sig { returns(Float) }
            def level
            end

            sig { params(_: Float).returns(Float) }
            def level=(_)
            end

            sig { returns(String) }
            def starting_at
            end

            sig { params(_: String).returns(String) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(String)) }
            def size
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def size=(_)
            end

            sig { params(level: Float, starting_at: String, size: T.nilable(String)).void }
            def initialize(level:, starting_at:, size: nil)
            end

            sig { override.returns({level: Float, starting_at: String, size: T.nilable(String)}) }
            def to_hash
            end
          end
        end

        class BillableStatus < Metronome::Enum
          abstract!

          BILLABLE = :billable
          UNBILLABLE = :unbillable

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CorrectionRecord < Metronome::BaseModel
          sig { returns(String) }
          def corrected_invoice_id
          end

          sig { params(_: String).returns(String) }
          def corrected_invoice_id=(_)
          end

          sig { returns(String) }
          def memo
          end

          sig { params(_: String).returns(String) }
          def memo=(_)
          end

          sig { returns(String) }
          def reason
          end

          sig { params(_: String).returns(String) }
          def reason=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice)) }
          def corrected_external_invoice
          end

          sig do
            params(_: Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice)
              .returns(Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice)
          end
          def corrected_external_invoice=(_)
          end

          sig do
            params(
              corrected_invoice_id: String,
              memo: String,
              reason: String,
              corrected_external_invoice: Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice
            )
              .void
          end
          def initialize(corrected_invoice_id:, memo:, reason:, corrected_external_invoice: nil)
          end

          sig do
            override
              .returns(
                {
                  corrected_invoice_id: String,
                  memo: String,
                  reason: String,
                  corrected_external_invoice: Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice
                }
              )
          end
          def to_hash
          end

          class CorrectedExternalInvoice < Metronome::BaseModel
            sig { returns(Symbol) }
            def billing_provider_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def billing_provider_type=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def external_status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def external_status=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_id
            end

            sig { params(_: String).returns(String) }
            def invoice_id=(_)
            end

            sig { returns(T.nilable(Time)) }
            def issued_at_timestamp
            end

            sig { params(_: Time).returns(Time) }
            def issued_at_timestamp=(_)
            end

            sig do
              params(
                billing_provider_type: Symbol,
                external_status: Symbol,
                invoice_id: String,
                issued_at_timestamp: Time
              )
                .void
            end
            def initialize(
              billing_provider_type:,
              external_status: nil,
              invoice_id: nil,
              issued_at_timestamp: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    billing_provider_type: Symbol,
                    external_status: Symbol,
                    invoice_id: String,
                    issued_at_timestamp: Time
                  }
                )
            end
            def to_hash
            end

            class BillingProviderType < Metronome::Enum
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

            class ExternalStatus < Metronome::Enum
              abstract!

              DRAFT = :DRAFT
              FINALIZED = :FINALIZED
              PAID = :PAID
              UNCOLLECTIBLE = :UNCOLLECTIBLE
              VOID = :VOID
              DELETED = :DELETED
              PAYMENT_FAILED = :PAYMENT_FAILED
              INVALID_REQUEST_ERROR = :INVALID_REQUEST_ERROR
              SKIPPED = :SKIPPED
              SENT = :SENT
              QUEUED = :QUEUED

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end

        class ExternalInvoice < Metronome::BaseModel
          sig { returns(Symbol) }
          def billing_provider_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def billing_provider_type=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def external_status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def external_status=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_id
          end

          sig { params(_: String).returns(String) }
          def invoice_id=(_)
          end

          sig { returns(T.nilable(Time)) }
          def issued_at_timestamp
          end

          sig { params(_: Time).returns(Time) }
          def issued_at_timestamp=(_)
          end

          sig do
            params(
              billing_provider_type: Symbol,
              external_status: Symbol,
              invoice_id: String,
              issued_at_timestamp: Time
            )
              .void
          end
          def initialize(
            billing_provider_type:,
            external_status: nil,
            invoice_id: nil,
            issued_at_timestamp: nil
          )
          end

          sig do
            override
              .returns(
                {
                  billing_provider_type: Symbol,
                  external_status: Symbol,
                  invoice_id: String,
                  issued_at_timestamp: Time
                }
              )
          end
          def to_hash
          end

          class BillingProviderType < Metronome::Enum
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

          class ExternalStatus < Metronome::Enum
            abstract!

            DRAFT = :DRAFT
            FINALIZED = :FINALIZED
            PAID = :PAID
            UNCOLLECTIBLE = :UNCOLLECTIBLE
            VOID = :VOID
            DELETED = :DELETED
            PAYMENT_FAILED = :PAYMENT_FAILED
            INVALID_REQUEST_ERROR = :INVALID_REQUEST_ERROR
            SKIPPED = :SKIPPED
            SENT = :SENT
            QUEUED = :QUEUED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class InvoiceAdjustment < Metronome::BaseModel
          sig { returns(Metronome::Models::CreditTypeData) }
          def credit_type
          end

          sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
          def credit_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Float) }
          def total
          end

          sig { params(_: Float).returns(Float) }
          def total=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def credit_grant_custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def credit_grant_custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def credit_grant_id
          end

          sig { params(_: String).returns(String) }
          def credit_grant_id=(_)
          end

          sig do
            params(
              credit_type: Metronome::Models::CreditTypeData,
              name: String,
              total: Float,
              credit_grant_custom_fields: T::Hash[Symbol, String],
              credit_grant_id: String
            )
              .void
          end
          def initialize(credit_type:, name:, total:, credit_grant_custom_fields: nil, credit_grant_id: nil)
          end

          sig do
            override
              .returns(
                {
                  credit_type: Metronome::Models::CreditTypeData,
                  name: String,
                  total: Float,
                  credit_grant_custom_fields: T::Hash[Symbol, String],
                  credit_grant_id: String
                }
              )
          end
          def to_hash
          end
        end

        class ResellerRoyalty < Metronome::BaseModel
          sig { returns(String) }
          def fraction
          end

          sig { params(_: String).returns(String) }
          def fraction=(_)
          end

          sig { returns(String) }
          def netsuite_reseller_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_reseller_id=(_)
          end

          sig { returns(Symbol) }
          def reseller_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reseller_type=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions)) }
          def aws_options
          end

          sig do
            params(_: Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions)
              .returns(Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions)
          end
          def aws_options=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions)) }
          def gcp_options
          end

          sig do
            params(_: Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions)
              .returns(Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions)
          end
          def gcp_options=(_)
          end

          sig do
            params(
              fraction: String,
              netsuite_reseller_id: String,
              reseller_type: Symbol,
              aws_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions,
              gcp_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions
            )
              .void
          end
          def initialize(fraction:, netsuite_reseller_id:, reseller_type:, aws_options: nil, gcp_options: nil)
          end

          sig do
            override
              .returns(
                {
                  fraction: String,
                  netsuite_reseller_id: String,
                  reseller_type: Symbol,
                  aws_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions,
                  gcp_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions
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

          class AwsOptions < Metronome::BaseModel
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

            sig do
              params(aws_account_number: String, aws_offer_id: String, aws_payer_reference_id: String).void
            end
            def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil)
            end

            sig do
              override.returns(
                {
                  aws_account_number: String,
                  aws_offer_id: String,
                  aws_payer_reference_id: String
                }
              )
            end
            def to_hash
            end
          end

          class GcpOptions < Metronome::BaseModel
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

            sig { params(gcp_account_id: String, gcp_offer_id: String).void }
            def initialize(gcp_account_id: nil, gcp_offer_id: nil)
            end

            sig { override.returns({gcp_account_id: String, gcp_offer_id: String}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
