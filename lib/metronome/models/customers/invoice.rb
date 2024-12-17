# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class Invoice < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute credit_type
        #
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute line_items
        #
        #   @return [Array<Metronome::Models::Customers::Invoice::LineItem>]
        required :line_items, Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice::LineItem })

        # @!attribute status
        #
        #   @return [String]
        required :status, String

        # @!attribute total
        #
        #   @return [Float]
        required :total, Float

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute amendment_id
        #
        #   @return [String]
        optional :amendment_id, String

        # @!attribute billable_status
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Symbol, Metronome::Models::Customers::Invoice::BillableStatus]
        optional :billable_status, enum: -> { Metronome::Models::Customers::Invoice::BillableStatus }

        # @!attribute contract_custom_fields
        #
        #   @return [Hash]
        optional :contract_custom_fields, Hash

        # @!attribute contract_id
        #
        #   @return [String]
        optional :contract_id, String

        # @!attribute correction_record
        #
        #   @return [Metronome::Models::Customers::Invoice::CorrectionRecord]
        optional :correction_record, -> { Metronome::Models::Customers::Invoice::CorrectionRecord }

        # @!attribute created_at
        #   When the invoice was created (UTC). This field is present for correction invoices only.
        #
        #   @return [Time]
        optional :created_at, Time

        # @!attribute custom_fields
        #
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute customer_custom_fields
        #
        #   @return [Hash]
        optional :customer_custom_fields, Hash

        # @!attribute end_timestamp
        #   End of the usage period this invoice covers (UTC)
        #
        #   @return [Time]
        optional :end_timestamp, Time

        # @!attribute external_invoice
        #
        #   @return [Metronome::Models::Customers::Invoice::ExternalInvoice]
        optional :external_invoice, -> { Metronome::Models::Customers::Invoice::ExternalInvoice }

        # @!attribute invoice_adjustments
        #
        #   @return [Array<Metronome::Models::Customers::Invoice::InvoiceAdjustment>]
        optional :invoice_adjustments,
                 Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice::InvoiceAdjustment })

        # @!attribute issued_at
        #   When the invoice was issued (UTC)
        #
        #   @return [Time]
        optional :issued_at, Time

        # @!attribute net_payment_terms_days
        #
        #   @return [Float]
        optional :net_payment_terms_days, Float

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute plan_custom_fields
        #
        #   @return [Hash]
        optional :plan_custom_fields, Hash

        # @!attribute plan_id
        #
        #   @return [String]
        optional :plan_id, String

        # @!attribute plan_name
        #
        #   @return [String]
        optional :plan_name, String

        # @!attribute reseller_royalty
        #   only present for beta contract invoices with reseller royalties
        #
        #   @return [Metronome::Models::Customers::Invoice::ResellerRoyalty]
        optional :reseller_royalty, -> { Metronome::Models::Customers::Invoice::ResellerRoyalty }

        # @!attribute salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :salesforce_opportunity_id, String

        # @!attribute start_timestamp
        #   Beginning of the usage period this invoice covers (UTC)
        #
        #   @return [Time]
        optional :start_timestamp, Time

        # @!attribute subtotal
        #
        #   @return [Float]
        optional :subtotal, Float

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param credit_type [Metronome::Models::CreditTypeData]
        #   #
        #   # @param customer_id [String]
        #   #
        #   # @param line_items [Array<Metronome::Models::Customers::Invoice::LineItem>]
        #   #
        #   # @param status [String]
        #   #
        #   # @param total [Float]
        #   #
        #   # @param type [String]
        #   #
        #   # @param amendment_id [String, nil]
        #   #
        #   # @param billable_status [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param contract_custom_fields [Hash, nil]
        #   #
        #   # @param contract_id [String, nil]
        #   #
        #   # @param correction_record [Metronome::Models::Customers::Invoice::CorrectionRecord, nil]
        #   #
        #   # @param created_at [String, nil] When the invoice was created (UTC). This field is present for correction
        #   #   invoices only.
        #   #
        #   # @param custom_fields [Hash, nil]
        #   #
        #   # @param customer_custom_fields [Hash, nil]
        #   #
        #   # @param end_timestamp [String, nil] End of the usage period this invoice covers (UTC)
        #   #
        #   # @param external_invoice [Metronome::Models::Customers::Invoice::ExternalInvoice, nil]
        #   #
        #   # @param invoice_adjustments [Array<Metronome::Models::Customers::Invoice::InvoiceAdjustment>, nil]
        #   #
        #   # @param issued_at [String, nil] When the invoice was issued (UTC)
        #   #
        #   # @param net_payment_terms_days [Float, nil]
        #   #
        #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param plan_custom_fields [Hash, nil]
        #   #
        #   # @param plan_id [String, nil]
        #   #
        #   # @param plan_name [String, nil]
        #   #
        #   # @param reseller_royalty [Metronome::Models::Customers::Invoice::ResellerRoyalty, nil] only present for beta contract invoices with reseller royalties
        #   #
        #   # @param salesforce_opportunity_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param start_timestamp [String, nil] Beginning of the usage period this invoice covers (UTC)
        #   #
        #   # @param subtotal [Float, nil]
        #   #
        #   def initialize(
        #     id:,
        #     credit_type:,
        #     customer_id:,
        #     line_items:,
        #     status:,
        #     total:,
        #     type:,
        #     amendment_id: nil,
        #     billable_status: nil,
        #     contract_custom_fields: nil,
        #     contract_id: nil,
        #     correction_record: nil,
        #     created_at: nil,
        #     custom_fields: nil,
        #     customer_custom_fields: nil,
        #     end_timestamp: nil,
        #     external_invoice: nil,
        #     invoice_adjustments: nil,
        #     issued_at: nil,
        #     net_payment_terms_days: nil,
        #     netsuite_sales_order_id: nil,
        #     plan_custom_fields: nil,
        #     plan_id: nil,
        #     plan_name: nil,
        #     reseller_royalty: nil,
        #     salesforce_opportunity_id: nil,
        #     start_timestamp: nil,
        #     subtotal: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class LineItem < Metronome::BaseModel
          # @!attribute credit_type
          #
          #   @return [Metronome::Models::CreditTypeData]
          required :credit_type, -> { Metronome::Models::CreditTypeData }

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute total
          #
          #   @return [Float]
          required :total, Float

          # @!attribute applied_commit_or_credit
          #   only present for beta contract invoices
          #
          #   @return [Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit]
          optional :applied_commit_or_credit,
                   -> { Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit }

          # @!attribute commit_custom_fields
          #   only present for beta contract invoices
          #
          #   @return [Hash]
          optional :commit_custom_fields, Hash

          # @!attribute commit_id
          #   only present for beta contract invoices
          #
          #   @return [String]
          optional :commit_id, String

          # @!attribute commit_netsuite_item_id
          #   only present for beta contract invoices. This field's availability is dependent on your client's configuration.
          #
          #   @return [String]
          optional :commit_netsuite_item_id, String

          # @!attribute commit_netsuite_sales_order_id
          #   only present for beta contract invoices. This field's availability is dependent on your client's configuration.
          #
          #   @return [String]
          optional :commit_netsuite_sales_order_id, String

          # @!attribute commit_segment_id
          #   only present for beta contract invoices
          #
          #   @return [String]
          optional :commit_segment_id, String

          # @!attribute commit_type
          #   only present for beta contract invoices
          #
          #   @return [String]
          optional :commit_type, String

          # @!attribute custom_fields
          #
          #   @return [Hash]
          optional :custom_fields, Hash

          # @!attribute ending_before
          #   only present for beta contract invoices
          #
          #   @return [Time]
          optional :ending_before, Time

          # @!attribute group_key
          #
          #   @return [String]
          optional :group_key, String

          # @!attribute group_value
          #
          #   @return [String]
          optional :group_value, String

          # @!attribute is_prorated
          #   only present for beta contract invoices
          #
          #   @return [Boolean]
          optional :is_prorated, Metronome::BooleanModel

          # @!attribute list_price
          #   Only present for contract invoices and when the include_list_prices query parameter is set to true. This will include the list rate for the charge if applicable.  Only present for usage and subscription line items.
          #
          #   @return [Metronome::Models::Rate]
          optional :list_price, -> { Metronome::Models::Rate }

          # @!attribute metadata
          #
          #   @return [String]
          optional :metadata, String

          # @!attribute netsuite_invoice_billing_end
          #   The end date for the billing period on the invoice.
          #
          #   @return [Time]
          optional :netsuite_invoice_billing_end, Time

          # @!attribute netsuite_invoice_billing_start
          #   The start date for the billing period on the invoice.
          #
          #   @return [Time]
          optional :netsuite_invoice_billing_start, Time

          # @!attribute netsuite_item_id
          #   only present for beta contract invoices. This field's availability is dependent on your client's configuration.
          #
          #   @return [String]
          optional :netsuite_item_id, String

          # @!attribute postpaid_commit
          #   only present for beta contract invoices
          #
          #   @return [Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit]
          optional :postpaid_commit, -> { Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit }

          # @!attribute presentation_group_values
          #   if presentation groups are used, this will contain the values used to break down the line item
          #
          #   @return [Hash]
          optional :presentation_group_values, Hash

          # @!attribute pricing_group_values
          #   if pricing groups are used, this will contain the values used to calculate the price
          #
          #   @return [Hash]
          optional :pricing_group_values, Hash

          # @!attribute product_custom_fields
          #
          #   @return [Hash]
          optional :product_custom_fields, Hash

          # @!attribute product_id
          #
          #   @return [String]
          optional :product_id, String

          # @!attribute product_type
          #
          #   @return [String]
          optional :product_type, String

          # @!attribute professional_service_custom_fields
          #   only present for beta contract invoices
          #
          #   @return [Hash]
          optional :professional_service_custom_fields, Hash

          # @!attribute professional_service_id
          #   only present for beta contract invoices
          #
          #   @return [String]
          optional :professional_service_id, String

          # @!attribute quantity
          #
          #   @return [Float]
          optional :quantity, Float

          # @!attribute reseller_type
          #
          #   @return [Symbol, Metronome::Models::Customers::Invoice::LineItem::ResellerType]
          optional :reseller_type, enum: -> { Metronome::Models::Customers::Invoice::LineItem::ResellerType }

          # @!attribute scheduled_charge_custom_fields
          #
          #   @return [Hash]
          optional :scheduled_charge_custom_fields, Hash

          # @!attribute scheduled_charge_id
          #   only present for beta contract invoices
          #
          #   @return [String]
          optional :scheduled_charge_id, String

          # @!attribute starting_at
          #   only present for beta contract invoices
          #
          #   @return [Time]
          optional :starting_at, Time

          # @!attribute sub_line_items
          #
          #   @return [Array<Metronome::Models::Customers::Invoice::LineItem::SubLineItem>]
          optional :sub_line_items,
                   Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice::LineItem::SubLineItem })

          # @!attribute tier
          #
          #   @return [Metronome::Models::Customers::Invoice::LineItem::Tier]
          optional :tier, -> { Metronome::Models::Customers::Invoice::LineItem::Tier }

          # @!attribute unit_price
          #   only present for beta contract invoices
          #
          #   @return [Float]
          optional :unit_price, Float

          # @!parse
          #   # @param credit_type [Metronome::Models::CreditTypeData]
          #   #
          #   # @param name [String]
          #   #
          #   # @param total [Float]
          #   #
          #   # @param applied_commit_or_credit [Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit, nil] only present for beta contract invoices
          #   #
          #   # @param commit_custom_fields [Hash, nil] only present for beta contract invoices
          #   #
          #   # @param commit_id [String, nil] only present for beta contract invoices
          #   #
          #   # @param commit_netsuite_item_id [String, nil] only present for beta contract invoices. This field's availability is dependent
          #   #   on your client's configuration.
          #   #
          #   # @param commit_netsuite_sales_order_id [String, nil] only present for beta contract invoices. This field's availability is dependent
          #   #   on your client's configuration.
          #   #
          #   # @param commit_segment_id [String, nil] only present for beta contract invoices
          #   #
          #   # @param commit_type [String, nil] only present for beta contract invoices
          #   #
          #   # @param custom_fields [Hash, nil]
          #   #
          #   # @param ending_before [String, nil] only present for beta contract invoices
          #   #
          #   # @param group_key [String, nil]
          #   #
          #   # @param group_value [String, nil]
          #   #
          #   # @param is_prorated [Boolean, nil] only present for beta contract invoices
          #   #
          #   # @param list_price [Metronome::Models::Rate, nil] Only present for contract invoices and when the include_list_prices query
          #   #   parameter is set to true. This will include the list rate for the charge if
          #   #   applicable. Only present for usage and subscription line items.
          #   #
          #   # @param metadata [String, nil]
          #   #
          #   # @param netsuite_invoice_billing_end [String, nil] The end date for the billing period on the invoice.
          #   #
          #   # @param netsuite_invoice_billing_start [String, nil] The start date for the billing period on the invoice.
          #   #
          #   # @param netsuite_item_id [String, nil] only present for beta contract invoices. This field's availability is dependent
          #   #   on your client's configuration.
          #   #
          #   # @param postpaid_commit [Metronome::Models::Customers::Invoice::LineItem::PostpaidCommit, nil] only present for beta contract invoices
          #   #
          #   # @param presentation_group_values [Hash, nil] if presentation groups are used, this will contain the values used to break down
          #   #   the line item
          #   #
          #   # @param pricing_group_values [Hash, nil] if pricing groups are used, this will contain the values used to calculate the
          #   #   price
          #   #
          #   # @param product_custom_fields [Hash, nil]
          #   #
          #   # @param product_id [String, nil]
          #   #
          #   # @param product_type [String, nil]
          #   #
          #   # @param professional_service_custom_fields [Hash, nil] only present for beta contract invoices
          #   #
          #   # @param professional_service_id [String, nil] only present for beta contract invoices
          #   #
          #   # @param quantity [Float, nil]
          #   #
          #   # @param reseller_type [String, nil]
          #   #
          #   # @param scheduled_charge_custom_fields [Hash, nil]
          #   #
          #   # @param scheduled_charge_id [String, nil] only present for beta contract invoices
          #   #
          #   # @param starting_at [String, nil] only present for beta contract invoices
          #   #
          #   # @param sub_line_items [Array<Metronome::Models::Customers::Invoice::LineItem::SubLineItem>, nil]
          #   #
          #   # @param tier [Metronome::Models::Customers::Invoice::LineItem::Tier, nil]
          #   #
          #   # @param unit_price [Float, nil] only present for beta contract invoices
          #   #
          #   def initialize(
          #     credit_type:,
          #     name:,
          #     total:,
          #     applied_commit_or_credit: nil,
          #     commit_custom_fields: nil,
          #     commit_id: nil,
          #     commit_netsuite_item_id: nil,
          #     commit_netsuite_sales_order_id: nil,
          #     commit_segment_id: nil,
          #     commit_type: nil,
          #     custom_fields: nil,
          #     ending_before: nil,
          #     group_key: nil,
          #     group_value: nil,
          #     is_prorated: nil,
          #     list_price: nil,
          #     metadata: nil,
          #     netsuite_invoice_billing_end: nil,
          #     netsuite_invoice_billing_start: nil,
          #     netsuite_item_id: nil,
          #     postpaid_commit: nil,
          #     presentation_group_values: nil,
          #     pricing_group_values: nil,
          #     product_custom_fields: nil,
          #     product_id: nil,
          #     product_type: nil,
          #     professional_service_custom_fields: nil,
          #     professional_service_id: nil,
          #     quantity: nil,
          #     reseller_type: nil,
          #     scheduled_charge_custom_fields: nil,
          #     scheduled_charge_id: nil,
          #     starting_at: nil,
          #     sub_line_items: nil,
          #     tier: nil,
          #     unit_price: nil
          #   )
          #     super
          #   end

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class AppliedCommitOrCredit < Metronome::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #
            #   @return [Symbol, Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type]
            required :type,
                     enum: -> {
                       Metronome::Models::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type
                     }

            # @!parse
            #   # only present for beta contract invoices
            #   #
            #   # @param id [String]
            #   # @param type [String]
            #   #
            #   def initialize(id:, type:) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :PREPAID
            #   # ...
            # in :POSTPAID
            #   # ...
            # in :CREDIT
            #   # ...
            # end
            # ```
            class Type < Metronome::Enum
              PREPAID = :PREPAID
              POSTPAID = :POSTPAID
              CREDIT = :CREDIT
            end
          end

          class PostpaidCommit < Metronome::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!parse
            #   # only present for beta contract invoices
            #   #
            #   # @param id [String]
            #   #
            #   def initialize(id:) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :AWS
          #   # ...
          # in :AWS_PRO_SERVICE
          #   # ...
          # in :GCP
          #   # ...
          # in :GCP_PRO_SERVICE
          #   # ...
          # end
          # ```
          class ResellerType < Metronome::Enum
            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE
          end

          class SubLineItem < Metronome::BaseModel
            # @!attribute custom_fields
            #
            #   @return [Hash]
            required :custom_fields, Hash

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!attribute subtotal
            #
            #   @return [Float]
            required :subtotal, Float

            # @!attribute charge_id
            #
            #   @return [String]
            optional :charge_id, String

            # @!attribute credit_grant_id
            #
            #   @return [String]
            optional :credit_grant_id, String

            # @!attribute end_date
            #   The end date for the charge (for seats charges only).
            #
            #   @return [Time]
            optional :end_date, Time

            # @!attribute price
            #   the unit price for this charge, present only if the charge is not tiered and the quantity is nonzero
            #
            #   @return [Float]
            optional :price, Float

            # @!attribute start_date
            #   The start date for the charge (for seats charges only).
            #
            #   @return [Time]
            optional :start_date, Time

            # @!attribute tier_period
            #   when the current tier started and ends (for tiered charges only)
            #
            #   @return [Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod]
            optional :tier_period,
                     -> {
                       Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod
                     }

            # @!attribute tiers
            #
            #   @return [Array<Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier>]
            optional :tiers,
                     Metronome::ArrayOf.new(
                       -> {
                         Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier
                       }
                     )

            # @!parse
            #   # @param custom_fields [Hash]
            #   #
            #   # @param name [String]
            #   #
            #   # @param quantity [Float]
            #   #
            #   # @param subtotal [Float]
            #   #
            #   # @param charge_id [String, nil]
            #   #
            #   # @param credit_grant_id [String, nil]
            #   #
            #   # @param end_date [String, nil] The end date for the charge (for seats charges only).
            #   #
            #   # @param price [Float, nil] the unit price for this charge, present only if the charge is not tiered and the
            #   #   quantity is nonzero
            #   #
            #   # @param start_date [String, nil] The start date for the charge (for seats charges only).
            #   #
            #   # @param tier_period [Metronome::Models::Customers::Invoice::LineItem::SubLineItem::TierPeriod, nil] when the current tier started and ends (for tiered charges only)
            #   #
            #   # @param tiers [Array<Metronome::Models::Customers::Invoice::LineItem::SubLineItem::Tier>, nil]
            #   #
            #   def initialize(
            #     custom_fields:,
            #     name:,
            #     quantity:,
            #     subtotal:,
            #     charge_id: nil,
            #     credit_grant_id: nil,
            #     end_date: nil,
            #     price: nil,
            #     start_date: nil,
            #     tier_period: nil,
            #     tiers: nil
            #   )
            #     super
            #   end

            # def initialize: (Hash | Metronome::BaseModel) -> void

            class TierPeriod < Metronome::BaseModel
              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute ending_before
              #
              #   @return [Time]
              optional :ending_before, Time

              # @!parse
              #   # when the current tier started and ends (for tiered charges only)
              #   #
              #   # @param starting_at [String]
              #   # @param ending_before [String, nil]
              #   #
              #   def initialize(starting_at:, ending_before: nil) = super

              # def initialize: (Hash | Metronome::BaseModel) -> void
            end

            class Tier < Metronome::BaseModel
              # @!attribute price
              #
              #   @return [Float]
              required :price, Float

              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute starting_at
              #   at what metric amount this tier begins
              #
              #   @return [Float]
              required :starting_at, Float

              # @!attribute subtotal
              #
              #   @return [Float]
              required :subtotal, Float

              # @!parse
              #   # @param price [Float]
              #   #
              #   # @param quantity [Float]
              #   #
              #   # @param starting_at [Float] at what metric amount this tier begins
              #   #
              #   # @param subtotal [Float]
              #   #
              #   def initialize(price:, quantity:, starting_at:, subtotal:) = super

              # def initialize: (Hash | Metronome::BaseModel) -> void
            end
          end

          class Tier < Metronome::BaseModel
            # @!attribute level
            #
            #   @return [Float]
            required :level, Float

            # @!attribute starting_at
            #
            #   @return [String]
            required :starting_at, String

            # @!attribute size
            #
            #   @return [String]
            optional :size, String

            # @!parse
            #   # @param level [Float]
            #   # @param starting_at [String]
            #   # @param size [String, nil]
            #   #
            #   def initialize(level:, starting_at:, size: nil) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end

        # This field's availability is dependent on your client's configuration.
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :billable
        #   # ...
        # in :unbillable
        #   # ...
        # end
        # ```
        class BillableStatus < Metronome::Enum
          BILLABLE = :billable
          UNBILLABLE = :unbillable
        end

        class CorrectionRecord < Metronome::BaseModel
          # @!attribute corrected_invoice_id
          #
          #   @return [String]
          required :corrected_invoice_id, String

          # @!attribute memo
          #
          #   @return [String]
          required :memo, String

          # @!attribute reason
          #
          #   @return [String]
          required :reason, String

          # @!attribute corrected_external_invoice
          #
          #   @return [Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice]
          optional :corrected_external_invoice,
                   -> { Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice }

          # @!parse
          #   # @param corrected_invoice_id [String]
          #   # @param memo [String]
          #   # @param reason [String]
          #   # @param corrected_external_invoice [Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice, nil]
          #   #
          #   def initialize(corrected_invoice_id:, memo:, reason:, corrected_external_invoice: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class CorrectedExternalInvoice < Metronome::BaseModel
            # @!attribute billing_provider_type
            #
            #   @return [Symbol, Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType]
            required :billing_provider_type,
                     enum: -> {
                       Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType
                     }

            # @!attribute external_status
            #
            #   @return [Symbol, Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus]
            optional :external_status,
                     enum: -> {
                       Metronome::Models::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus
                     }

            # @!attribute invoice_id
            #
            #   @return [String]
            optional :invoice_id, String

            # @!attribute issued_at_timestamp
            #
            #   @return [Time]
            optional :issued_at_timestamp, Time

            # @!parse
            #   # @param billing_provider_type [String]
            #   # @param external_status [String, nil]
            #   # @param invoice_id [String, nil]
            #   # @param issued_at_timestamp [String, nil]
            #   #
            #   def initialize(billing_provider_type:, external_status: nil, invoice_id: nil, issued_at_timestamp: nil) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :aws_marketplace
            #   # ...
            # in :stripe
            #   # ...
            # in :netsuite
            #   # ...
            # in :custom
            #   # ...
            # in :azure_marketplace
            #   # ...
            # in ...
            #   #...
            # end
            # ```
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

            # @example
            #
            # ```ruby
            # case enum
            # in :DRAFT
            #   # ...
            # in :FINALIZED
            #   # ...
            # in :PAID
            #   # ...
            # in :UNCOLLECTIBLE
            #   # ...
            # in :VOID
            #   # ...
            # in ...
            #   #...
            # end
            # ```
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
          end
        end

        class ExternalInvoice < Metronome::BaseModel
          # @!attribute billing_provider_type
          #
          #   @return [Symbol, Metronome::Models::Customers::Invoice::ExternalInvoice::BillingProviderType]
          required :billing_provider_type,
                   enum: -> { Metronome::Models::Customers::Invoice::ExternalInvoice::BillingProviderType }

          # @!attribute external_status
          #
          #   @return [Symbol, Metronome::Models::Customers::Invoice::ExternalInvoice::ExternalStatus]
          optional :external_status,
                   enum: -> { Metronome::Models::Customers::Invoice::ExternalInvoice::ExternalStatus }

          # @!attribute invoice_id
          #
          #   @return [String]
          optional :invoice_id, String

          # @!attribute issued_at_timestamp
          #
          #   @return [Time]
          optional :issued_at_timestamp, Time

          # @!parse
          #   # @param billing_provider_type [String]
          #   # @param external_status [String, nil]
          #   # @param invoice_id [String, nil]
          #   # @param issued_at_timestamp [String, nil]
          #   #
          #   def initialize(billing_provider_type:, external_status: nil, invoice_id: nil, issued_at_timestamp: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :aws_marketplace
          #   # ...
          # in :stripe
          #   # ...
          # in :netsuite
          #   # ...
          # in :custom
          #   # ...
          # in :azure_marketplace
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

          # @example
          #
          # ```ruby
          # case enum
          # in :DRAFT
          #   # ...
          # in :FINALIZED
          #   # ...
          # in :PAID
          #   # ...
          # in :UNCOLLECTIBLE
          #   # ...
          # in :VOID
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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
        end

        class InvoiceAdjustment < Metronome::BaseModel
          # @!attribute credit_type
          #
          #   @return [Metronome::Models::CreditTypeData]
          required :credit_type, -> { Metronome::Models::CreditTypeData }

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute total
          #
          #   @return [Float]
          required :total, Float

          # @!attribute credit_grant_custom_fields
          #
          #   @return [Hash]
          optional :credit_grant_custom_fields, Hash

          # @!attribute credit_grant_id
          #
          #   @return [String]
          optional :credit_grant_id, String

          # @!parse
          #   # @param credit_type [Metronome::Models::CreditTypeData]
          #   # @param name [String]
          #   # @param total [Float]
          #   # @param credit_grant_custom_fields [Hash, nil]
          #   # @param credit_grant_id [String, nil]
          #   #
          #   def initialize(credit_type:, name:, total:, credit_grant_custom_fields: nil, credit_grant_id: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        class ResellerRoyalty < Metronome::BaseModel
          # @!attribute fraction
          #
          #   @return [String]
          required :fraction, String

          # @!attribute netsuite_reseller_id
          #
          #   @return [String]
          required :netsuite_reseller_id, String

          # @!attribute reseller_type
          #
          #   @return [Symbol, Metronome::Models::Customers::Invoice::ResellerRoyalty::ResellerType]
          required :reseller_type,
                   enum: -> {
                     Metronome::Models::Customers::Invoice::ResellerRoyalty::ResellerType
                   }

          # @!attribute aws_options
          #
          #   @return [Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions]
          optional :aws_options, -> { Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions }

          # @!attribute gcp_options
          #
          #   @return [Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions]
          optional :gcp_options, -> { Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions }

          # @!parse
          #   # only present for beta contract invoices with reseller royalties
          #   #
          #   # @param fraction [String]
          #   # @param netsuite_reseller_id [String]
          #   # @param reseller_type [String]
          #   # @param aws_options [Metronome::Models::Customers::Invoice::ResellerRoyalty::AwsOptions, nil]
          #   # @param gcp_options [Metronome::Models::Customers::Invoice::ResellerRoyalty::GcpOptions, nil]
          #   #
          #   def initialize(fraction:, netsuite_reseller_id:, reseller_type:, aws_options: nil, gcp_options: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :AWS
          #   # ...
          # in :AWS_PRO_SERVICE
          #   # ...
          # in :GCP
          #   # ...
          # in :GCP_PRO_SERVICE
          #   # ...
          # end
          # ```
          class ResellerType < Metronome::Enum
            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE
          end

          class AwsOptions < Metronome::BaseModel
            # @!attribute aws_account_number
            #
            #   @return [String]
            optional :aws_account_number, String

            # @!attribute aws_offer_id
            #
            #   @return [String]
            optional :aws_offer_id, String

            # @!attribute aws_payer_reference_id
            #
            #   @return [String]
            optional :aws_payer_reference_id, String

            # @!parse
            #   # @param aws_account_number [String, nil]
            #   # @param aws_offer_id [String, nil]
            #   # @param aws_payer_reference_id [String, nil]
            #   #
            #   def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end

          class GcpOptions < Metronome::BaseModel
            # @!attribute gcp_account_id
            #
            #   @return [String]
            optional :gcp_account_id, String

            # @!attribute gcp_offer_id
            #
            #   @return [String]
            optional :gcp_offer_id, String

            # @!parse
            #   # @param gcp_account_id [String, nil]
            #   # @param gcp_offer_id [String, nil]
            #   #
            #   def initialize(gcp_account_id: nil, gcp_offer_id: nil) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end
    end
  end
end
