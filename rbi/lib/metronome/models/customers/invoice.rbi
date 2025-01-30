# typed: strong

module Metronome
  module Models
    module Customers
      class Invoice < Metronome::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Metronome::Models::CreditTypeData) }
        attr_accessor :credit_type

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T::Array[Metronome::Models::Customers::Invoice::LineItem]) }
        attr_accessor :line_items

        sig { returns(String) }
        attr_accessor :status

        sig { returns(Float) }
        attr_accessor :total

        sig { returns(String) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :amendment_id

        sig { params(amendment_id: String).void }
        attr_writer :amendment_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :billable_status

        sig { params(billable_status: Symbol).void }
        attr_writer :billable_status

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :contract_custom_fields

        sig { params(contract_custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :contract_custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :contract_id

        sig { params(contract_id: String).void }
        attr_writer :contract_id

        sig { returns(T.nilable(Metronome::Models::Customers::Invoice::CorrectionRecord)) }
        attr_reader :correction_record

        sig { params(correction_record: Metronome::Models::Customers::Invoice::CorrectionRecord).void }
        attr_writer :correction_record

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, T.anything]).void }
        attr_writer :custom_fields

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :customer_custom_fields

        sig { params(customer_custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :customer_custom_fields

        sig { returns(T.nilable(Time)) }
        attr_reader :end_timestamp

        sig { params(end_timestamp: Time).void }
        attr_writer :end_timestamp

        sig { returns(T.nilable(Metronome::Models::Customers::Invoice::ExternalInvoice)) }
        attr_accessor :external_invoice

        sig { returns(T::Array[Metronome::Models::Customers::Invoice::InvoiceAdjustment]) }
        attr_reader :invoice_adjustments

        sig do
          params(invoice_adjustments: T::Array[Metronome::Models::Customers::Invoice::InvoiceAdjustment]).void
        end
        attr_writer :invoice_adjustments

        sig { returns(T.nilable(Time)) }
        attr_reader :issued_at

        sig { params(issued_at: Time).void }
        attr_writer :issued_at

        sig { returns(T.nilable(Float)) }
        attr_reader :net_payment_terms_days

        sig { params(net_payment_terms_days: Float).void }
        attr_writer :net_payment_terms_days

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :plan_custom_fields

        sig { params(plan_custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :plan_custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :plan_id

        sig { params(plan_id: String).void }
        attr_writer :plan_id

        sig { returns(T.nilable(String)) }
        attr_reader :plan_name

        sig { params(plan_name: String).void }
        attr_writer :plan_name

        sig { returns(T.nilable(Metronome::Models::Customers::Invoice::ResellerRoyalty)) }
        attr_reader :reseller_royalty

        sig { params(reseller_royalty: Metronome::Models::Customers::Invoice::ResellerRoyalty).void }
        attr_writer :reseller_royalty

        sig { returns(T.nilable(String)) }
        attr_reader :salesforce_opportunity_id

        sig { params(salesforce_opportunity_id: String).void }
        attr_writer :salesforce_opportunity_id

        sig { returns(T.nilable(Time)) }
        attr_reader :start_timestamp

        sig { params(start_timestamp: Time).void }
        attr_writer :start_timestamp

        sig { returns(T.nilable(Float)) }
        attr_reader :subtotal

        sig { params(subtotal: Float).void }
        attr_writer :subtotal

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
          ).void
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
        ); end

        sig { returns(Metronome::Models::Customers::Invoice::Shape) }
        def to_h; end

        class LineItem < Metronome::BaseModel
          Shape = T.type_alias do
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
              presentation_group_values: T.nilable(T::Hash[Symbol, T.nilable(String)]),
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
          end

          sig { returns(Metronome::Models::CreditTypeData) }
          attr_accessor :credit_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :total

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit)) }
          attr_reader :applied_commit_or_credit

          sig do
            params(applied_commit_or_credit: Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit).void
          end
          attr_writer :applied_commit_or_credit

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :commit_custom_fields

          sig { params(commit_custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :commit_custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :commit_id

          sig { params(commit_id: String).void }
          attr_writer :commit_id

          sig { returns(T.nilable(String)) }
          attr_reader :commit_netsuite_item_id

          sig { params(commit_netsuite_item_id: String).void }
          attr_writer :commit_netsuite_item_id

          sig { returns(T.nilable(String)) }
          attr_reader :commit_netsuite_sales_order_id

          sig { params(commit_netsuite_sales_order_id: String).void }
          attr_writer :commit_netsuite_sales_order_id

          sig { returns(T.nilable(String)) }
          attr_reader :commit_segment_id

          sig { params(commit_segment_id: String).void }
          attr_writer :commit_segment_id

          sig { returns(T.nilable(String)) }
          attr_reader :commit_type

          sig { params(commit_type: String).void }
          attr_writer :commit_type

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig { returns(T.nilable(String)) }
          attr_reader :group_key

          sig { params(group_key: String).void }
          attr_writer :group_key

          sig { returns(T.nilable(String)) }
          attr_accessor :group_value

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_prorated

          sig { params(is_prorated: T::Boolean).void }
          attr_writer :is_prorated

          sig { returns(T.nilable(Metronome::Models::Rate)) }
          attr_reader :list_price

          sig { params(list_price: Metronome::Models::Rate).void }
          attr_writer :list_price

          sig { returns(T.nilable(String)) }
          attr_reader :metadata

          sig { params(metadata: String).void }
          attr_writer :metadata

          sig { returns(T.nilable(Time)) }
          attr_reader :netsuite_invoice_billing_end

          sig { params(netsuite_invoice_billing_end: Time).void }
          attr_writer :netsuite_invoice_billing_end

          sig { returns(T.nilable(Time)) }
          attr_reader :netsuite_invoice_billing_start

          sig { params(netsuite_invoice_billing_start: Time).void }
          attr_writer :netsuite_invoice_billing_start

          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_item_id

          sig { params(netsuite_item_id: String).void }
          attr_writer :netsuite_item_id

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit)) }
          attr_reader :postpaid_commit

          sig do
            params(postpaid_commit: Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit).void
          end
          attr_writer :postpaid_commit

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_reader :presentation_group_values

          sig { params(presentation_group_values: T.nilable(T::Hash[Symbol, T.nilable(String)])).void }
          attr_writer :presentation_group_values

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :pricing_group_values

          sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
          attr_writer :pricing_group_values

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :product_custom_fields

          sig { params(product_custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :product_custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :product_id

          sig { params(product_id: String).void }
          attr_writer :product_id

          sig { returns(T.nilable(String)) }
          attr_reader :product_type

          sig { params(product_type: String).void }
          attr_writer :product_type

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :professional_service_custom_fields

          sig { params(professional_service_custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :professional_service_custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :professional_service_id

          sig { params(professional_service_id: String).void }
          attr_writer :professional_service_id

          sig { returns(T.nilable(Float)) }
          attr_reader :quantity

          sig { params(quantity: Float).void }
          attr_writer :quantity

          sig { returns(T.nilable(Symbol)) }
          attr_reader :reseller_type

          sig { params(reseller_type: Symbol).void }
          attr_writer :reseller_type

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :scheduled_charge_custom_fields

          sig { params(scheduled_charge_custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :scheduled_charge_custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :scheduled_charge_id

          sig { params(scheduled_charge_id: String).void }
          attr_writer :scheduled_charge_id

          sig { returns(T.nilable(Time)) }
          attr_reader :starting_at

          sig { params(starting_at: Time).void }
          attr_writer :starting_at

          sig { returns(T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem]) }
          attr_reader :sub_line_items

          sig do
            params(sub_line_items: T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem]).void
          end
          attr_writer :sub_line_items

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::LineItem::Tier)) }
          attr_reader :tier

          sig { params(tier: Metronome::Models::Customers::Invoice::LineItem::Tier).void }
          attr_writer :tier

          sig { returns(T.nilable(Float)) }
          attr_reader :unit_price

          sig { params(unit_price: Float).void }
          attr_writer :unit_price

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
              presentation_group_values: T.nilable(T::Hash[Symbol, T.nilable(String)]),
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
            ).void
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
          ); end

          sig { returns(Metronome::Models::Customers::Invoice::LineItem::Shape) }
          def to_h; end

          class AppliedCommitOrCredit < Metronome::BaseModel
            Shape = T.type_alias { {id: String, type: Symbol} }

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :type

            sig { params(id: String, type: Symbol).void }
            def initialize(id:, type:); end

            sig { returns(Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit::Shape) }
            def to_h; end

            class Type < Metronome::Enum
              abstract!

              PREPAID = :PREPAID
              POSTPAID = :POSTPAID
              CREDIT = :CREDIT

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class PostpaidCommit < Metronome::BaseModel
            Shape = T.type_alias { {id: String} }

            sig { returns(String) }
            attr_accessor :id

            sig { params(id: String).void }
            def initialize(id:); end

            sig { returns(Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit::Shape) }
            def to_h; end
          end

          class ResellerType < Metronome::Enum
            abstract!

            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end

          class SubLineItem < Metronome::BaseModel
            Shape = T.type_alias do
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
            end

            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :custom_fields

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Float) }
            attr_accessor :subtotal

            sig { returns(T.nilable(String)) }
            attr_reader :charge_id

            sig { params(charge_id: String).void }
            attr_writer :charge_id

            sig { returns(T.nilable(String)) }
            attr_reader :credit_grant_id

            sig { params(credit_grant_id: String).void }
            attr_writer :credit_grant_id

            sig { returns(T.nilable(Time)) }
            attr_reader :end_date

            sig { params(end_date: Time).void }
            attr_writer :end_date

            sig { returns(T.nilable(Float)) }
            attr_reader :price

            sig { params(price: Float).void }
            attr_writer :price

            sig { returns(T.nilable(Time)) }
            attr_reader :start_date

            sig { params(start_date: Time).void }
            attr_writer :start_date

            sig do
              returns(T.nilable(Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod))
            end
            attr_reader :tier_period

            sig do
              params(tier_period: Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod).void
            end
            attr_writer :tier_period

            sig { returns(T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier]) }
            attr_reader :tiers

            sig do
              params(tiers: T::Array[Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier]).void
            end
            attr_writer :tiers

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
              ).void
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
            ); end

            sig { returns(Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Shape) }
            def to_h; end

            class TierPeriod < Metronome::BaseModel
              Shape = T.type_alias { {starting_at: Time, ending_before: Time} }

              sig { returns(Time) }
              attr_accessor :starting_at

              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              sig { params(starting_at: Time, ending_before: Time).void }
              def initialize(starting_at:, ending_before: nil); end

              sig { returns(Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod::Shape) }
              def to_h; end
            end

            class Tier < Metronome::BaseModel
              Shape = T.type_alias { {price: Float, quantity: Float, starting_at: Float, subtotal: Float} }

              sig { returns(Float) }
              attr_accessor :price

              sig { returns(Float) }
              attr_accessor :quantity

              sig { returns(Float) }
              attr_accessor :starting_at

              sig { returns(Float) }
              attr_accessor :subtotal

              sig { params(price: Float, quantity: Float, starting_at: Float, subtotal: Float).void }
              def initialize(price:, quantity:, starting_at:, subtotal:); end

              sig { returns(Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier::Shape) }
              def to_h; end
            end
          end

          class Tier < Metronome::BaseModel
            Shape = T.type_alias { {level: Float, starting_at: String, size: T.nilable(String)} }

            sig { returns(Float) }
            attr_accessor :level

            sig { returns(String) }
            attr_accessor :starting_at

            sig { returns(T.nilable(String)) }
            attr_accessor :size

            sig { params(level: Float, starting_at: String, size: T.nilable(String)).void }
            def initialize(level:, starting_at:, size: nil); end

            sig { returns(Metronome::Models::Customers::Invoice::LineItem::Tier::Shape) }
            def to_h; end
          end
        end

        class BillableStatus < Metronome::Enum
          abstract!

          BILLABLE = :billable
          UNBILLABLE = :unbillable

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class CorrectionRecord < Metronome::BaseModel
          Shape = T.type_alias do
            {
              corrected_invoice_id: String,
              memo: String,
              reason: String,
              corrected_external_invoice: Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice
            }
          end

          sig { returns(String) }
          attr_accessor :corrected_invoice_id

          sig { returns(String) }
          attr_accessor :memo

          sig { returns(String) }
          attr_accessor :reason

          sig do
            returns(T.nilable(Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice))
          end
          attr_reader :corrected_external_invoice

          sig do
            params(
              corrected_external_invoice: Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice
            ).void
          end
          attr_writer :corrected_external_invoice

          sig do
            params(
              corrected_invoice_id: String,
              memo: String,
              reason: String,
              corrected_external_invoice: Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice
            ).void
          end
          def initialize(corrected_invoice_id:, memo:, reason:, corrected_external_invoice: nil); end

          sig { returns(Metronome::Models::Customers::Invoice::CorrectionRecord::Shape) }
          def to_h; end

          class CorrectedExternalInvoice < Metronome::BaseModel
            Shape = T.type_alias do
              {
                billing_provider_type: Symbol,
                external_status: Symbol,
                invoice_id: String,
                issued_at_timestamp: Time
              }
            end

            sig { returns(Symbol) }
            attr_accessor :billing_provider_type

            sig { returns(T.nilable(Symbol)) }
            attr_reader :external_status

            sig { params(external_status: Symbol).void }
            attr_writer :external_status

            sig { returns(T.nilable(String)) }
            attr_reader :invoice_id

            sig { params(invoice_id: String).void }
            attr_writer :invoice_id

            sig { returns(T.nilable(Time)) }
            attr_reader :issued_at_timestamp

            sig { params(issued_at_timestamp: Time).void }
            attr_writer :issued_at_timestamp

            sig do
              params(
                billing_provider_type: Symbol,
                external_status: Symbol,
                invoice_id: String,
                issued_at_timestamp: Time
              ).void
            end
            def initialize(
              billing_provider_type:,
              external_status: nil,
              invoice_id: nil,
              issued_at_timestamp: nil
            )
            end

            sig do
              returns(Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::Shape)
            end
            def to_h; end

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
              def self.values; end
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
              def self.values; end
            end
          end
        end

        class ExternalInvoice < Metronome::BaseModel
          Shape = T.type_alias do
            {
              billing_provider_type: Symbol,
              external_status: Symbol,
              invoice_id: String,
              issued_at_timestamp: Time
            }
          end

          sig { returns(Symbol) }
          attr_accessor :billing_provider_type

          sig { returns(T.nilable(Symbol)) }
          attr_reader :external_status

          sig { params(external_status: Symbol).void }
          attr_writer :external_status

          sig { returns(T.nilable(String)) }
          attr_reader :invoice_id

          sig { params(invoice_id: String).void }
          attr_writer :invoice_id

          sig { returns(T.nilable(Time)) }
          attr_reader :issued_at_timestamp

          sig { params(issued_at_timestamp: Time).void }
          attr_writer :issued_at_timestamp

          sig do
            params(
              billing_provider_type: Symbol,
              external_status: Symbol,
              invoice_id: String,
              issued_at_timestamp: Time
            ).void
          end
          def initialize(
            billing_provider_type:,
            external_status: nil,
            invoice_id: nil,
            issued_at_timestamp: nil
          )
          end

          sig { returns(Metronome::Models::Customers::Invoice::ExternalInvoice::Shape) }
          def to_h; end

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
            def self.values; end
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
            def self.values; end
          end
        end

        class InvoiceAdjustment < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type: Metronome::Models::CreditTypeData,
              name: String,
              total: Float,
              credit_grant_custom_fields: T::Hash[Symbol, String],
              credit_grant_id: String
            }
          end

          sig { returns(Metronome::Models::CreditTypeData) }
          attr_accessor :credit_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Float) }
          attr_accessor :total

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :credit_grant_custom_fields

          sig { params(credit_grant_custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :credit_grant_custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :credit_grant_id

          sig { params(credit_grant_id: String).void }
          attr_writer :credit_grant_id

          sig do
            params(
              credit_type: Metronome::Models::CreditTypeData,
              name: String,
              total: Float,
              credit_grant_custom_fields: T::Hash[Symbol, String],
              credit_grant_id: String
            ).void
          end
          def initialize(credit_type:, name:, total:, credit_grant_custom_fields: nil, credit_grant_id: nil)
          end

          sig { returns(Metronome::Models::Customers::Invoice::InvoiceAdjustment::Shape) }
          def to_h; end
        end

        class ResellerRoyalty < Metronome::BaseModel
          Shape = T.type_alias do
            {
              fraction: String,
              netsuite_reseller_id: String,
              reseller_type: Symbol,
              aws_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions,
              gcp_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions
            }
          end

          sig { returns(String) }
          attr_accessor :fraction

          sig { returns(String) }
          attr_accessor :netsuite_reseller_id

          sig { returns(Symbol) }
          attr_accessor :reseller_type

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions)) }
          attr_reader :aws_options

          sig { params(aws_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions).void }
          attr_writer :aws_options

          sig { returns(T.nilable(Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions)) }
          attr_reader :gcp_options

          sig { params(gcp_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions).void }
          attr_writer :gcp_options

          sig do
            params(
              fraction: String,
              netsuite_reseller_id: String,
              reseller_type: Symbol,
              aws_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions,
              gcp_options: Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions
            ).void
          end
          def initialize(
            fraction:,
            netsuite_reseller_id:,
            reseller_type:,
            aws_options: nil,
            gcp_options: nil
          )
          end

          sig { returns(Metronome::Models::Customers::Invoice::ResellerRoyalty::Shape) }
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

          class AwsOptions < Metronome::BaseModel
            Shape = T.type_alias do
              {aws_account_number: String, aws_offer_id: String, aws_payer_reference_id: String}
            end

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

            sig do
              params(aws_account_number: String, aws_offer_id: String, aws_payer_reference_id: String).void
            end
            def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil); end

            sig { returns(Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions::Shape) }
            def to_h; end
          end

          class GcpOptions < Metronome::BaseModel
            Shape = T.type_alias { {gcp_account_id: String, gcp_offer_id: String} }

            sig { returns(T.nilable(String)) }
            attr_reader :gcp_account_id

            sig { params(gcp_account_id: String).void }
            attr_writer :gcp_account_id

            sig { returns(T.nilable(String)) }
            attr_reader :gcp_offer_id

            sig { params(gcp_offer_id: String).void }
            attr_writer :gcp_offer_id

            sig { params(gcp_account_id: String, gcp_offer_id: String).void }
            def initialize(gcp_account_id: nil, gcp_offer_id: nil); end

            sig { returns(Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions::Shape) }
            def to_h; end
          end
        end
      end
    end
  end
end
