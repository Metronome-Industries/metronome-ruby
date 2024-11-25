# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class Invoice < Metronome::BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] line_items
        #   @return [Array<Metronome::Models::Customers::Invoice::LineItem>]
        required :line_items, Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice::LineItem })

        # @!attribute [rw] status
        #   @return [String]
        required :status, String

        # @!attribute [rw] total
        #   @return [Float]
        required :total, Float

        # @!attribute [rw] type
        #   @return [String]
        required :type, String

        # @!attribute [rw] amendment_id
        #   @return [String]
        optional :amendment_id, String

        # @!attribute [rw] billable_status
        #   This field's availability is dependent on your client's configuration.
        #   @return [Symbol, Metronome::Models::Customers::Invoice::BillableStatus]
        optional :billable_status, enum: -> { Metronome::Models::Customers::Invoice::BillableStatus }

        # @!attribute [rw] contract_custom_fields
        #   @return [Hash]
        optional :contract_custom_fields, Hash

        # @!attribute [rw] contract_id
        #   @return [String]
        optional :contract_id, String

        # @!attribute [rw] correction_record
        #   @return [Metronome::Models::Customers::Invoice::CorrectionRecord]
        optional :correction_record, -> { Metronome::Models::Customers::Invoice::CorrectionRecord }

        # @!attribute [rw] created_at
        #   When the invoice was created (UTC). This field is present for correction invoices only.
        #   @return [Time]
        optional :created_at, Time

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] customer_custom_fields
        #   @return [Hash]
        optional :customer_custom_fields, Hash

        # @!attribute [rw] end_timestamp
        #   End of the usage period this invoice covers (UTC)
        #   @return [Time]
        optional :end_timestamp, Time

        # @!attribute [rw] external_invoice
        #   @return [Metronome::Models::Customers::Invoice::ExternalInvoice]
        optional :external_invoice, -> { Metronome::Models::Customers::Invoice::ExternalInvoice }

        # @!attribute [rw] invoice_adjustments
        #   @return [Array<Metronome::Models::Customers::Invoice::InvoiceAdjustment>]
        optional :invoice_adjustments,
                 Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice::InvoiceAdjustment })

        # @!attribute [rw] issued_at
        #   When the invoice was issued (UTC)
        #   @return [Time]
        optional :issued_at, Time

        # @!attribute [rw] net_payment_terms_days
        #   @return [Float]
        optional :net_payment_terms_days, Float

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute [rw] plan_custom_fields
        #   @return [Hash]
        optional :plan_custom_fields, Hash

        # @!attribute [rw] plan_id
        #   @return [String]
        optional :plan_id, String

        # @!attribute [rw] plan_name
        #   @return [String]
        optional :plan_name, String

        # @!attribute [rw] reseller_royalty
        #   only present for beta contract invoices with reseller royalties
        #   @return [Metronome::Models::Customers::Invoice::ResellerRoyalty]
        optional :reseller_royalty, -> { Metronome::Models::Customers::Invoice::ResellerRoyalty }

        # @!attribute [rw] salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :salesforce_opportunity_id, String

        # @!attribute [rw] start_timestamp
        #   Beginning of the usage period this invoice covers (UTC)
        #   @return [Time]
        optional :start_timestamp, Time

        # @!attribute [rw] subtotal
        #   @return [Float]
        optional :subtotal, Float

        class LineItem < Metronome::BaseModel
          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::CreditTypeData]
          required :credit_type, -> { Metronome::Models::CreditTypeData }

          # @!attribute [rw] name
          #   @return [String]
          required :name, String

          # @!attribute [rw] total
          #   @return [Float]
          required :total, Float

          # @!attribute [rw] applied_commit_or_credit
          #   only present for beta contract invoices
          #   @return [Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit]
          optional :applied_commit_or_credit,
                   -> { Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit }

          # @!attribute [rw] commit_custom_fields
          #   only present for beta contract invoices
          #   @return [Hash]
          optional :commit_custom_fields, Hash

          # @!attribute [rw] commit_id
          #   only present for beta contract invoices
          #   @return [String]
          optional :commit_id, String

          # @!attribute [rw] commit_netsuite_item_id
          #   only present for beta contract invoices. This field's availability is dependent on your client's configuration.
          #   @return [String]
          optional :commit_netsuite_item_id, String

          # @!attribute [rw] commit_netsuite_sales_order_id
          #   only present for beta contract invoices. This field's availability is dependent on your client's configuration.
          #   @return [String]
          optional :commit_netsuite_sales_order_id, String

          # @!attribute [rw] commit_segment_id
          #   only present for beta contract invoices
          #   @return [String]
          optional :commit_segment_id, String

          # @!attribute [rw] commit_type
          #   only present for beta contract invoices
          #   @return [String]
          optional :commit_type, String

          # @!attribute [rw] custom_fields
          #   @return [Hash]
          optional :custom_fields, Hash

          # @!attribute [rw] ending_before
          #   only present for beta contract invoices
          #   @return [Time]
          optional :ending_before, Time

          # @!attribute [rw] group_key
          #   @return [String]
          optional :group_key, String

          # @!attribute [rw] group_value
          #   @return [String]
          optional :group_value, String

          # @!attribute [rw] is_prorated
          #   only present for beta contract invoices
          #   @return [Boolean]
          optional :is_prorated, Metronome::BooleanModel

          # @!attribute [rw] list_price
          #   Only present for contract invoices and when the include_list_prices query parameter is set to true. This will include the list rate for the charge if applicable.  Only present for usage and subscription line items.
          #
          #   @return [Metronome::Models::Rate]
          optional :list_price, -> { Metronome::Models::Rate }

          # @!attribute [rw] metadata
          #   @return [String]
          optional :metadata, String

          # @!attribute [rw] netsuite_invoice_billing_end
          #   The end date for the billing period on the invoice.
          #   @return [Time]
          optional :netsuite_invoice_billing_end, Time

          # @!attribute [rw] netsuite_invoice_billing_start
          #   The start date for the billing period on the invoice.
          #   @return [Time]
          optional :netsuite_invoice_billing_start, Time

          # @!attribute [rw] netsuite_item_id
          #   only present for beta contract invoices. This field's availability is dependent on your client's configuration.
          #   @return [String]
          optional :netsuite_item_id, String

          # @!attribute [rw] postpaid_commit
          #   only present for beta contract invoices
          #   @return [Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit]
          optional :postpaid_commit, -> { Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit }

          # @!attribute [rw] presentation_group_values
          #   if presentation groups are used, this will contain the values used to break down the line item
          #   @return [Hash]
          optional :presentation_group_values, Hash

          # @!attribute [rw] pricing_group_values
          #   if pricing groups are used, this will contain the values used to calculate the price
          #   @return [Hash]
          optional :pricing_group_values, Hash

          # @!attribute [rw] product_custom_fields
          #   @return [Hash]
          optional :product_custom_fields, Hash

          # @!attribute [rw] product_id
          #   @return [String]
          optional :product_id, String

          # @!attribute [rw] product_type
          #   @return [String]
          optional :product_type, String

          # @!attribute [rw] professional_service_custom_fields
          #   only present for beta contract invoices
          #   @return [Hash]
          optional :professional_service_custom_fields, Hash

          # @!attribute [rw] professional_service_id
          #   only present for beta contract invoices
          #   @return [String]
          optional :professional_service_id, String

          # @!attribute [rw] quantity
          #   @return [Float]
          optional :quantity, Float

          # @!attribute [rw] reseller_type
          #   @return [Symbol, Metronome::Models::Customers::Invoice::LineItem::ResellerType]
          optional :reseller_type, enum: -> { Metronome::Models::Customers::Invoice::LineItem::ResellerType }

          # @!attribute [rw] scheduled_charge_custom_fields
          #   @return [Hash]
          optional :scheduled_charge_custom_fields, Hash

          # @!attribute [rw] scheduled_charge_id
          #   only present for beta contract invoices
          #   @return [String]
          optional :scheduled_charge_id, String

          # @!attribute [rw] starting_at
          #   only present for beta contract invoices
          #   @return [Time]
          optional :starting_at, Time

          # @!attribute [rw] sub_line_items
          #   @return [Array<Metronome::Models::Customers::Invoice::LineItem::SubLineItem>]
          optional :sub_line_items,
                   Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice::LineItem::SubLineItem })

          # @!attribute [rw] unit_price
          #   only present for beta contract invoices
          #   @return [Float]
          optional :unit_price, Float

          class AppliedCommitOrCredit < Metronome::BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] type
            #   @return [Symbol, Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type]
            required :type,
                     enum: -> {
                       Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type
                     }

            class Type < Metronome::Enum
              PREPAID = :PREPAID
              POSTPAID = :POSTPAID
              CREDIT = :CREDIT
            end

            # @!parse
            #   # Create a new instance of AppliedCommitOrCredit from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :id
            #   #   @option data [String] :type
            #   def initialize(data = {}) = super
          end

          class PostpaidCommit < Metronome::BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!parse
            #   # Create a new instance of PostpaidCommit from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :id
            #   def initialize(data = {}) = super
          end

          class ResellerType < Metronome::Enum
            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE
          end

          class SubLineItem < Metronome::BaseModel
            # @!attribute [rw] custom_fields
            #   @return [Hash]
            required :custom_fields, Hash

            # @!attribute [rw] name
            #   @return [String]
            required :name, String

            # @!attribute [rw] quantity
            #   @return [Float]
            required :quantity, Float

            # @!attribute [rw] subtotal
            #   @return [Float]
            required :subtotal, Float

            # @!attribute [rw] charge_id
            #   @return [String]
            optional :charge_id, String

            # @!attribute [rw] credit_grant_id
            #   @return [String]
            optional :credit_grant_id, String

            # @!attribute [rw] end_date
            #   The end date for the charge (for seats charges only).
            #   @return [Time]
            optional :end_date, Time

            # @!attribute [rw] price
            #   the unit price for this charge, present only if the charge is not tiered and the quantity is nonzero
            #   @return [Float]
            optional :price, Float

            # @!attribute [rw] start_date
            #   The start date for the charge (for seats charges only).
            #   @return [Time]
            optional :start_date, Time

            # @!attribute [rw] tier_period
            #   when the current tier started and ends (for tiered charges only)
            #   @return [Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod]
            optional :tier_period,
                     -> {
                       Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod
                     }

            # @!attribute [rw] tiers
            #   @return [Array<Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier>]
            optional :tiers,
                     Metronome::ArrayOf.new(
                       -> {
                         Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier
                       }
                     )

            class TierPeriod < Metronome::BaseModel
              # @!attribute [rw] starting_at
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [rw] ending_before
              #   @return [Time]
              optional :ending_before, Time

              # @!parse
              #   # Create a new instance of TierPeriod from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :starting_at
              #   #   @option data [String, nil] :ending_before
              #   def initialize(data = {}) = super
            end

            class Tier < Metronome::BaseModel
              # @!attribute [rw] price
              #   @return [Float]
              required :price, Float

              # @!attribute [rw] quantity
              #   @return [Float]
              required :quantity, Float

              # @!attribute [rw] starting_at
              #   at what metric amount this tier begins
              #   @return [Float]
              required :starting_at, Float

              # @!attribute [rw] subtotal
              #   @return [Float]
              required :subtotal, Float

              # @!parse
              #   # Create a new instance of Tier from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [Float] :price
              #   #   @option data [Float] :quantity
              #   #   @option data [Float] :starting_at at what metric amount this tier begins
              #   #   @option data [Float] :subtotal
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of SubLineItem from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Hash] :custom_fields
            #   #   @option data [String] :name
            #   #   @option data [Float] :quantity
            #   #   @option data [Float] :subtotal
            #   #   @option data [String, nil] :charge_id
            #   #   @option data [String, nil] :credit_grant_id
            #   #   @option data [String, nil] :end_date The end date for the charge (for seats charges only).
            #   #   @option data [Float, nil] :price the unit price for this charge, present only if the charge is not tiered and the
            #   #     quantity is nonzero
            #   #   @option data [String, nil] :start_date The start date for the charge (for seats charges only).
            #   #   @option data [Object, nil] :tier_period when the current tier started and ends (for tiered charges only)
            #   #   @option data [Array<Object>, nil] :tiers
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of LineItem from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :credit_type
          #   #   @option data [String] :name
          #   #   @option data [Float] :total
          #   #   @option data [Object, nil] :applied_commit_or_credit only present for beta contract invoices
          #   #   @option data [Hash, nil] :commit_custom_fields only present for beta contract invoices
          #   #   @option data [String, nil] :commit_id only present for beta contract invoices
          #   #   @option data [String, nil] :commit_netsuite_item_id only present for beta contract invoices. This field's availability is dependent
          #   #     on your client's configuration.
          #   #   @option data [String, nil] :commit_netsuite_sales_order_id only present for beta contract invoices. This field's availability is dependent
          #   #     on your client's configuration.
          #   #   @option data [String, nil] :commit_segment_id only present for beta contract invoices
          #   #   @option data [String, nil] :commit_type only present for beta contract invoices
          #   #   @option data [Hash, nil] :custom_fields
          #   #   @option data [String, nil] :ending_before only present for beta contract invoices
          #   #   @option data [String, nil] :group_key
          #   #   @option data [String, nil] :group_value
          #   #   @option data [Hash, nil] :is_prorated only present for beta contract invoices
          #   #   @option data [Object, nil] :list_price Only present for contract invoices and when the include_list_prices query
          #   #     parameter is set to true. This will include the list rate for the charge if
          #   #     applicable. Only present for usage and subscription line items.
          #   #   @option data [String, nil] :metadata
          #   #   @option data [String, nil] :netsuite_invoice_billing_end The end date for the billing period on the invoice.
          #   #   @option data [String, nil] :netsuite_invoice_billing_start The start date for the billing period on the invoice.
          #   #   @option data [String, nil] :netsuite_item_id only present for beta contract invoices. This field's availability is dependent
          #   #     on your client's configuration.
          #   #   @option data [Object, nil] :postpaid_commit only present for beta contract invoices
          #   #   @option data [Hash, nil] :presentation_group_values if presentation groups are used, this will contain the values used to break down
          #   #     the line item
          #   #   @option data [Hash, nil] :pricing_group_values if pricing groups are used, this will contain the values used to calculate the
          #   #     price
          #   #   @option data [Hash, nil] :product_custom_fields
          #   #   @option data [String, nil] :product_id
          #   #   @option data [String, nil] :product_type
          #   #   @option data [Hash, nil] :professional_service_custom_fields only present for beta contract invoices
          #   #   @option data [String, nil] :professional_service_id only present for beta contract invoices
          #   #   @option data [Float, nil] :quantity
          #   #   @option data [String, nil] :reseller_type
          #   #   @option data [Hash, nil] :scheduled_charge_custom_fields
          #   #   @option data [String, nil] :scheduled_charge_id only present for beta contract invoices
          #   #   @option data [String, nil] :starting_at only present for beta contract invoices
          #   #   @option data [Array<Object>, nil] :sub_line_items
          #   #   @option data [Float, nil] :unit_price only present for beta contract invoices
          #   def initialize(data = {}) = super
        end

        # This field's availability is dependent on your client's configuration.
        class BillableStatus < Metronome::Enum
          BILLABLE = :billable
          UNBILLABLE = :unbillable
        end

        class CorrectionRecord < Metronome::BaseModel
          # @!attribute [rw] corrected_invoice_id
          #   @return [String]
          required :corrected_invoice_id, String

          # @!attribute [rw] memo
          #   @return [String]
          required :memo, String

          # @!attribute [rw] reason
          #   @return [String]
          required :reason, String

          # @!attribute [rw] corrected_external_invoice
          #   @return [Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice]
          optional :corrected_external_invoice,
                   -> { Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice }

          class CorrectedExternalInvoice < Metronome::BaseModel
            # @!attribute [rw] billing_provider_type
            #   @return [Symbol, Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType]
            required :billing_provider_type,
                     enum: -> {
                       Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType
                     }

            # @!attribute [rw] external_status
            #   @return [Symbol, Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus]
            optional :external_status,
                     enum: -> {
                       Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus
                     }

            # @!attribute [rw] invoice_id
            #   @return [String]
            optional :invoice_id, String

            # @!attribute [rw] issued_at_timestamp
            #   @return [Time]
            optional :issued_at_timestamp, Time

            class BillingProviderType < Metronome::Enum
              AWS_MARKETPLACE = :aws_marketplace
              STRIPE = :stripe
              NETSUITE = :netsuite
              CUSTOM = :custom
              AZURE_MARKETPLACE = :azure_marketplace
              QUICKBOOKS_ONLINE = :quickbooks_online
              WORKDAY = :workday
              GCP_MARKETPLACE = :gcp_marketplace
            end

            class ExternalStatus < Metronome::Enum
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
            end

            # @!parse
            #   # Create a new instance of CorrectedExternalInvoice from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :billing_provider_type
            #   #   @option data [String, nil] :external_status
            #   #   @option data [String, nil] :invoice_id
            #   #   @option data [String, nil] :issued_at_timestamp
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of CorrectionRecord from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :corrected_invoice_id
          #   #   @option data [String] :memo
          #   #   @option data [String] :reason
          #   #   @option data [Object, nil] :corrected_external_invoice
          #   def initialize(data = {}) = super
        end

        class ExternalInvoice < Metronome::BaseModel
          # @!attribute [rw] billing_provider_type
          #   @return [Symbol, Metronome::Models::Customers::Invoice::ExternalInvoice::BillingProviderType]
          required :billing_provider_type,
                   enum: -> { Metronome::Models::Customers::Invoice::ExternalInvoice::BillingProviderType }

          # @!attribute [rw] external_status
          #   @return [Symbol, Metronome::Models::Customers::Invoice::ExternalInvoice::ExternalStatus]
          optional :external_status,
                   enum: -> { Metronome::Models::Customers::Invoice::ExternalInvoice::ExternalStatus }

          # @!attribute [rw] invoice_id
          #   @return [String]
          optional :invoice_id, String

          # @!attribute [rw] issued_at_timestamp
          #   @return [Time]
          optional :issued_at_timestamp, Time

          class BillingProviderType < Metronome::Enum
            AWS_MARKETPLACE = :aws_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite
            CUSTOM = :custom
            AZURE_MARKETPLACE = :azure_marketplace
            QUICKBOOKS_ONLINE = :quickbooks_online
            WORKDAY = :workday
            GCP_MARKETPLACE = :gcp_marketplace
          end

          class ExternalStatus < Metronome::Enum
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
          end

          # @!parse
          #   # Create a new instance of ExternalInvoice from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :billing_provider_type
          #   #   @option data [String, nil] :external_status
          #   #   @option data [String, nil] :invoice_id
          #   #   @option data [String, nil] :issued_at_timestamp
          #   def initialize(data = {}) = super
        end

        class InvoiceAdjustment < Metronome::BaseModel
          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::CreditTypeData]
          required :credit_type, -> { Metronome::Models::CreditTypeData }

          # @!attribute [rw] name
          #   @return [String]
          required :name, String

          # @!attribute [rw] total
          #   @return [Float]
          required :total, Float

          # @!attribute [rw] credit_grant_custom_fields
          #   @return [Hash]
          optional :credit_grant_custom_fields, Hash

          # @!attribute [rw] credit_grant_id
          #   @return [String]
          optional :credit_grant_id, String

          # @!parse
          #   # Create a new instance of InvoiceAdjustment from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :credit_type
          #   #   @option data [String] :name
          #   #   @option data [Float] :total
          #   #   @option data [Hash, nil] :credit_grant_custom_fields
          #   #   @option data [String, nil] :credit_grant_id
          #   def initialize(data = {}) = super
        end

        class ResellerRoyalty < Metronome::BaseModel
          # @!attribute [rw] fraction
          #   @return [String]
          required :fraction, String

          # @!attribute [rw] netsuite_reseller_id
          #   @return [String]
          required :netsuite_reseller_id, String

          # @!attribute [rw] reseller_type
          #   @return [Symbol, Metronome::Models::Customers::Invoice::ResellerRoyalty::ResellerType]
          required :reseller_type,
                   enum: -> {
                     Metronome::Models::Customers::Invoice::ResellerRoyalty::ResellerType
                   }

          # @!attribute [rw] aws_options
          #   @return [Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions]
          optional :aws_options, -> { Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions }

          # @!attribute [rw] gcp_options
          #   @return [Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions]
          optional :gcp_options, -> { Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions }

          class ResellerType < Metronome::Enum
            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE
          end

          class AwsOptions < Metronome::BaseModel
            # @!attribute [rw] aws_account_number
            #   @return [String]
            optional :aws_account_number, String

            # @!attribute [rw] aws_offer_id
            #   @return [String]
            optional :aws_offer_id, String

            # @!attribute [rw] aws_payer_reference_id
            #   @return [String]
            optional :aws_payer_reference_id, String

            # @!parse
            #   # Create a new instance of AwsOptions from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String, nil] :aws_account_number
            #   #   @option data [String, nil] :aws_offer_id
            #   #   @option data [String, nil] :aws_payer_reference_id
            #   def initialize(data = {}) = super
          end

          class GcpOptions < Metronome::BaseModel
            # @!attribute [rw] gcp_account_id
            #   @return [String]
            optional :gcp_account_id, String

            # @!attribute [rw] gcp_offer_id
            #   @return [String]
            optional :gcp_offer_id, String

            # @!parse
            #   # Create a new instance of GcpOptions from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String, nil] :gcp_account_id
            #   #   @option data [String, nil] :gcp_offer_id
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of ResellerRoyalty from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :fraction
          #   #   @option data [String] :netsuite_reseller_id
          #   #   @option data [String] :reseller_type
          #   #   @option data [Object, nil] :aws_options
          #   #   @option data [Object, nil] :gcp_options
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Invoice from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [Object] :credit_type
        #   #   @option data [String] :customer_id
        #   #   @option data [Array<Object>] :line_items
        #   #   @option data [String] :status
        #   #   @option data [Float] :total
        #   #   @option data [String] :type
        #   #   @option data [String, nil] :amendment_id
        #   #   @option data [String, nil] :billable_status This field's availability is dependent on your client's configuration.
        #   #   @option data [Hash, nil] :contract_custom_fields
        #   #   @option data [String, nil] :contract_id
        #   #   @option data [Object, nil] :correction_record
        #   #   @option data [String, nil] :created_at When the invoice was created (UTC). This field is present for correction
        #   #     invoices only.
        #   #   @option data [Hash, nil] :custom_fields
        #   #   @option data [Hash, nil] :customer_custom_fields
        #   #   @option data [String, nil] :end_timestamp End of the usage period this invoice covers (UTC)
        #   #   @option data [Object, nil] :external_invoice
        #   #   @option data [Array<Object>, nil] :invoice_adjustments
        #   #   @option data [String, nil] :issued_at When the invoice was issued (UTC)
        #   #   @option data [Float, nil] :net_payment_terms_days
        #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #   #   @option data [Hash, nil] :plan_custom_fields
        #   #   @option data [String, nil] :plan_id
        #   #   @option data [String, nil] :plan_name
        #   #   @option data [Object, nil] :reseller_royalty only present for beta contract invoices with reseller royalties
        #   #   @option data [String, nil] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
        #   #   @option data [String, nil] :start_timestamp Beginning of the usage period this invoice covers (UTC)
        #   #   @option data [Float, nil] :subtotal
        #   def initialize(data = {}) = super
      end
    end
  end
end
