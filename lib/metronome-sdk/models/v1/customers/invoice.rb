# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class Invoice < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute line_items
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem>]
          required :line_items, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice::LineItem] }

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

          # @!attribute [r] amendment_id
          #
          #   @return [String, nil]
          optional :amendment_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :amendment_id

          # @!attribute [r] billable_status
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::BillableStatus, nil]
          optional :billable_status, enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::BillableStatus }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::BillableStatus]
          #   attr_writer :billable_status

          # @!attribute [r] contract_custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :contract_custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :contract_custom_fields

          # @!attribute [r] contract_id
          #
          #   @return [String, nil]
          optional :contract_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :contract_id

          # @!attribute [r] correction_record
          #
          #   @return [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord, nil]
          optional :correction_record, -> { MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord]
          #   attr_writer :correction_record

          # @!attribute [r] created_at
          #   When the invoice was created (UTC). This field is present for correction
          #     invoices only.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :created_at

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

          # @!parse
          #   # @return [Hash{Symbol=>Object}]
          #   attr_writer :custom_fields

          # @!attribute [r] customer_custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :customer_custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :customer_custom_fields

          # @!attribute [r] end_timestamp
          #   End of the usage period this invoice covers (UTC)
          #
          #   @return [Time, nil]
          optional :end_timestamp, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :end_timestamp

          # @!attribute external_invoice
          #
          #   @return [MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice, nil]
          optional :external_invoice,
                   -> { MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice },
                   nil?: true

          # @!attribute [r] invoice_adjustments
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::InvoiceAdjustment>, nil]
          optional :invoice_adjustments,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice::InvoiceAdjustment] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::InvoiceAdjustment>]
          #   attr_writer :invoice_adjustments

          # @!attribute [r] issued_at
          #   When the invoice was issued (UTC)
          #
          #   @return [Time, nil]
          optional :issued_at, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :issued_at

          # @!attribute [r] net_payment_terms_days
          #
          #   @return [Float, nil]
          optional :net_payment_terms_days, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :net_payment_terms_days

          # @!attribute [r] netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_sales_order_id

          # @!attribute [r] plan_custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :plan_custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :plan_custom_fields

          # @!attribute [r] plan_id
          #
          #   @return [String, nil]
          optional :plan_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :plan_id

          # @!attribute [r] plan_name
          #
          #   @return [String, nil]
          optional :plan_name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :plan_name

          # @!attribute [r] reseller_royalty
          #   only present for beta contract invoices with reseller royalties
          #
          #   @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty, nil]
          optional :reseller_royalty, -> { MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty]
          #   attr_writer :reseller_royalty

          # @!attribute [r] salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :salesforce_opportunity_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :salesforce_opportunity_id

          # @!attribute [r] start_timestamp
          #   Beginning of the usage period this invoice covers (UTC)
          #
          #   @return [Time, nil]
          optional :start_timestamp, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :start_timestamp

          # @!attribute [r] subtotal
          #
          #   @return [Float, nil]
          optional :subtotal, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :subtotal

          # @!parse
          #   # @param id [String]
          #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
          #   # @param customer_id [String]
          #   # @param line_items [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem>]
          #   # @param status [String]
          #   # @param total [Float]
          #   # @param type [String]
          #   # @param amendment_id [String]
          #   # @param billable_status [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::BillableStatus]
          #   # @param contract_custom_fields [Hash{Symbol=>String}]
          #   # @param contract_id [String]
          #   # @param correction_record [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord]
          #   # @param created_at [Time]
          #   # @param custom_fields [Hash{Symbol=>Object}]
          #   # @param customer_custom_fields [Hash{Symbol=>String}]
          #   # @param end_timestamp [Time]
          #   # @param external_invoice [MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice, nil]
          #   # @param invoice_adjustments [Array<MetronomeSDK::Models::V1::Customers::Invoice::InvoiceAdjustment>]
          #   # @param issued_at [Time]
          #   # @param net_payment_terms_days [Float]
          #   # @param netsuite_sales_order_id [String]
          #   # @param plan_custom_fields [Hash{Symbol=>String}]
          #   # @param plan_id [String]
          #   # @param plan_name [String]
          #   # @param reseller_royalty [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty]
          #   # @param salesforce_opportunity_id [String]
          #   # @param start_timestamp [Time]
          #   # @param subtotal [Float]
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
          #     subtotal: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class LineItem < MetronomeSDK::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData]
            required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute total
            #
            #   @return [Float]
            required :total, Float

            # @!attribute [r] applied_commit_or_credit
            #   only present for beta contract invoices
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit, nil]
            optional :applied_commit_or_credit,
                     -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit]
            #   attr_writer :applied_commit_or_credit

            # @!attribute [r] commit_custom_fields
            #   only present for beta contract invoices
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :commit_custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :commit_custom_fields

            # @!attribute [r] commit_id
            #   only present for beta contract invoices
            #
            #   @return [String, nil]
            optional :commit_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :commit_id

            # @!attribute [r] commit_netsuite_item_id
            #   only present for beta contract invoices. This field's availability is dependent
            #     on your client's configuration.
            #
            #   @return [String, nil]
            optional :commit_netsuite_item_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :commit_netsuite_item_id

            # @!attribute [r] commit_netsuite_sales_order_id
            #   only present for beta contract invoices. This field's availability is dependent
            #     on your client's configuration.
            #
            #   @return [String, nil]
            optional :commit_netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :commit_netsuite_sales_order_id

            # @!attribute [r] commit_segment_id
            #   only present for beta contract invoices
            #
            #   @return [String, nil]
            optional :commit_segment_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :commit_segment_id

            # @!attribute [r] commit_type
            #   only present for beta contract invoices
            #
            #   @return [String, nil]
            optional :commit_type, String

            # @!parse
            #   # @return [String]
            #   attr_writer :commit_type

            # @!attribute [r] custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :custom_fields

            # @!attribute [r] ending_before
            #   only present for beta contract invoices
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] group_key
            #
            #   @return [String, nil]
            optional :group_key, String

            # @!parse
            #   # @return [String]
            #   attr_writer :group_key

            # @!attribute group_value
            #
            #   @return [String, nil]
            optional :group_value, String, nil?: true

            # @!attribute [r] is_prorated
            #   only present for beta contract invoices
            #
            #   @return [Boolean, nil]
            optional :is_prorated, MetronomeSDK::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_prorated

            # @!attribute [r] list_price
            #   Only present for contract invoices and when the include_list_prices query
            #     parameter is set to true. This will include the list rate for the charge if
            #     applicable. Only present for usage and subscription line items.
            #
            #   @return [MetronomeSDK::Models::Rate, nil]
            optional :list_price, -> { MetronomeSDK::Models::Rate }

            # @!parse
            #   # @return [MetronomeSDK::Models::Rate]
            #   attr_writer :list_price

            # @!attribute [r] metadata
            #
            #   @return [String, nil]
            optional :metadata, String

            # @!parse
            #   # @return [String]
            #   attr_writer :metadata

            # @!attribute [r] netsuite_invoice_billing_end
            #   The end date for the billing period on the invoice.
            #
            #   @return [Time, nil]
            optional :netsuite_invoice_billing_end, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :netsuite_invoice_billing_end

            # @!attribute [r] netsuite_invoice_billing_start
            #   The start date for the billing period on the invoice.
            #
            #   @return [Time, nil]
            optional :netsuite_invoice_billing_start, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :netsuite_invoice_billing_start

            # @!attribute [r] netsuite_item_id
            #   only present for beta contract invoices. This field's availability is dependent
            #     on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_item_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_item_id

            # @!attribute [r] postpaid_commit
            #   only present for beta contract invoices
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::PostpaidCommit, nil]
            optional :postpaid_commit, -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::PostpaidCommit }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::PostpaidCommit]
            #   attr_writer :postpaid_commit

            # @!attribute [r] presentation_group_values
            #   if presentation groups are used, this will contain the values used to break down
            #     the line item
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :presentation_group_values, MetronomeSDK::HashOf[String, nil?: true]

            # @!parse
            #   # @return [Hash{Symbol=>String, nil}]
            #   attr_writer :presentation_group_values

            # @!attribute [r] pricing_group_values
            #   if pricing groups are used, this will contain the values used to calculate the
            #     price
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :pricing_group_values

            # @!attribute [r] product_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :product_custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :product_custom_fields

            # @!attribute [r] product_id
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :product_id

            # @!attribute [r] product_tags
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :product_tags

            # @!attribute [r] product_type
            #
            #   @return [String, nil]
            optional :product_type, String

            # @!parse
            #   # @return [String]
            #   attr_writer :product_type

            # @!attribute [r] professional_service_custom_fields
            #   only present for beta contract invoices
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :professional_service_custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :professional_service_custom_fields

            # @!attribute [r] professional_service_id
            #   only present for beta contract invoices
            #
            #   @return [String, nil]
            optional :professional_service_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :professional_service_id

            # @!attribute [r] quantity
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :quantity

            # @!attribute [r] reseller_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::ResellerType, nil]
            optional :reseller_type, enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::ResellerType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::ResellerType]
            #   attr_writer :reseller_type

            # @!attribute [r] scheduled_charge_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :scheduled_charge_custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :scheduled_charge_custom_fields

            # @!attribute [r] scheduled_charge_id
            #   only present for beta contract invoices
            #
            #   @return [String, nil]
            optional :scheduled_charge_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :scheduled_charge_id

            # @!attribute [r] starting_at
            #   only present for beta contract invoices
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :starting_at

            # @!attribute [r] sub_line_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem>, nil]
            optional :sub_line_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem>]
            #   attr_writer :sub_line_items

            # @!attribute [r] subscription_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :subscription_custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :subscription_custom_fields

            # @!attribute [r] tier
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::Tier, nil]
            optional :tier, -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::Tier }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::Tier]
            #   attr_writer :tier

            # @!attribute [r] unit_price
            #   only present for beta contract invoices
            #
            #   @return [Float, nil]
            optional :unit_price, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :unit_price

            # @!parse
            #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #   # @param name [String]
            #   # @param total [Float]
            #   # @param applied_commit_or_credit [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit]
            #   # @param commit_custom_fields [Hash{Symbol=>String}]
            #   # @param commit_id [String]
            #   # @param commit_netsuite_item_id [String]
            #   # @param commit_netsuite_sales_order_id [String]
            #   # @param commit_segment_id [String]
            #   # @param commit_type [String]
            #   # @param custom_fields [Hash{Symbol=>String}]
            #   # @param ending_before [Time]
            #   # @param group_key [String]
            #   # @param group_value [String, nil]
            #   # @param is_prorated [Boolean]
            #   # @param list_price [MetronomeSDK::Models::Rate]
            #   # @param metadata [String]
            #   # @param netsuite_invoice_billing_end [Time]
            #   # @param netsuite_invoice_billing_start [Time]
            #   # @param netsuite_item_id [String]
            #   # @param postpaid_commit [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::PostpaidCommit]
            #   # @param presentation_group_values [Hash{Symbol=>String, nil}]
            #   # @param pricing_group_values [Hash{Symbol=>String}]
            #   # @param product_custom_fields [Hash{Symbol=>String}]
            #   # @param product_id [String]
            #   # @param product_tags [Array<String>]
            #   # @param product_type [String]
            #   # @param professional_service_custom_fields [Hash{Symbol=>String}]
            #   # @param professional_service_id [String]
            #   # @param quantity [Float]
            #   # @param reseller_type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::ResellerType]
            #   # @param scheduled_charge_custom_fields [Hash{Symbol=>String}]
            #   # @param scheduled_charge_id [String]
            #   # @param starting_at [Time]
            #   # @param sub_line_items [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem>]
            #   # @param subscription_custom_fields [Hash{Symbol=>String}]
            #   # @param tier [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::Tier]
            #   # @param unit_price [Float]
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
            #     product_tags: nil,
            #     product_type: nil,
            #     professional_service_custom_fields: nil,
            #     professional_service_id: nil,
            #     quantity: nil,
            #     reseller_type: nil,
            #     scheduled_charge_custom_fields: nil,
            #     scheduled_charge_id: nil,
            #     starting_at: nil,
            #     sub_line_items: nil,
            #     subscription_custom_fields: nil,
            #     tier: nil,
            #     unit_price: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AppliedCommitOrCredit < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type }

              # @!parse
              #   # only present for beta contract invoices
              #   #
              #   # @param id [String]
              #   # @param type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case type
              # in :PREPAID
              #   # ...
              # in :POSTPAID
              #   # ...
              # in :CREDIT
              #   # ...
              # end
              # ```
              class Type < MetronomeSDK::Enum
                PREPAID = :PREPAID
                POSTPAID = :POSTPAID
                CREDIT = :CREDIT

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class PostpaidCommit < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # only present for beta contract invoices
              #   #
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case reseller_type
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
            class ResellerType < MetronomeSDK::Enum
              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class SubLineItem < MetronomeSDK::BaseModel
              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}]
              required :custom_fields, MetronomeSDK::HashOf[String]

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

              # @!attribute [r] charge_id
              #
              #   @return [String, nil]
              optional :charge_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :charge_id

              # @!attribute [r] credit_grant_id
              #
              #   @return [String, nil]
              optional :credit_grant_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :credit_grant_id

              # @!attribute [r] end_date
              #   The end date for the charge (for seats charges only).
              #
              #   @return [Time, nil]
              optional :end_date, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :end_date

              # @!attribute [r] price
              #   the unit price for this charge, present only if the charge is not tiered and the
              #     quantity is nonzero
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :price

              # @!attribute [r] start_date
              #   The start date for the charge (for seats charges only).
              #
              #   @return [Time, nil]
              optional :start_date, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :start_date

              # @!attribute [r] tier_period
              #   when the current tier started and ends (for tiered charges only)
              #
              #   @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod, nil]
              optional :tier_period,
                       -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod }

              # @!parse
              #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod]
              #   attr_writer :tier_period

              # @!attribute [r] tiers
              #
              #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::Tier>, nil]
              optional :tiers,
                       -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::Tier] }

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::Tier>]
              #   attr_writer :tiers

              # @!parse
              #   # @param custom_fields [Hash{Symbol=>String}]
              #   # @param name [String]
              #   # @param quantity [Float]
              #   # @param subtotal [Float]
              #   # @param charge_id [String]
              #   # @param credit_grant_id [String]
              #   # @param end_date [Time]
              #   # @param price [Float]
              #   # @param start_date [Time]
              #   # @param tier_period [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod]
              #   # @param tiers [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::Tier>]
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
              #     tiers: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              class TierPeriod < MetronomeSDK::BaseModel
                # @!attribute starting_at
                #
                #   @return [Time]
                required :starting_at, Time

                # @!attribute [r] ending_before
                #
                #   @return [Time, nil]
                optional :ending_before, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :ending_before

                # @!parse
                #   # when the current tier started and ends (for tiered charges only)
                #   #
                #   # @param starting_at [Time]
                #   # @param ending_before [Time]
                #   #
                #   def initialize(starting_at:, ending_before: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class Tier < MetronomeSDK::BaseModel
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
                #   # @param quantity [Float]
                #   # @param starting_at [Float]
                #   # @param subtotal [Float]
                #   #
                #   def initialize(price:, quantity:, starting_at:, subtotal:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end
            end

            class Tier < MetronomeSDK::BaseModel
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
              #   @return [String, nil]
              optional :size, String, nil?: true

              # @!parse
              #   # @param level [Float]
              #   # @param starting_at [String]
              #   # @param size [String, nil]
              #   #
              #   def initialize(level:, starting_at:, size: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          # @abstract
          #
          # This field's availability is dependent on your client's configuration.
          #
          # @example
          # ```ruby
          # case billable_status
          # in :billable
          #   # ...
          # in :unbillable
          #   # ...
          # end
          # ```
          class BillableStatus < MetronomeSDK::Enum
            BILLABLE = :billable
            UNBILLABLE = :unbillable

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class CorrectionRecord < MetronomeSDK::BaseModel
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

            # @!attribute [r] corrected_external_invoice
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice, nil]
            optional :corrected_external_invoice,
                     -> { MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice]
            #   attr_writer :corrected_external_invoice

            # @!parse
            #   # @param corrected_invoice_id [String]
            #   # @param memo [String]
            #   # @param reason [String]
            #   # @param corrected_external_invoice [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice]
            #   #
            #   def initialize(corrected_invoice_id:, memo:, reason:, corrected_external_invoice: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class CorrectedExternalInvoice < MetronomeSDK::BaseModel
              # @!attribute billing_provider_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType]
              required :billing_provider_type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType }

              # @!attribute [r] external_status
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus, nil]
              optional :external_status,
                       enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus }

              # @!parse
              #   # @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus]
              #   attr_writer :external_status

              # @!attribute [r] invoice_id
              #
              #   @return [String, nil]
              optional :invoice_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :invoice_id

              # @!attribute [r] issued_at_timestamp
              #
              #   @return [Time, nil]
              optional :issued_at_timestamp, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :issued_at_timestamp

              # @!parse
              #   # @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType]
              #   # @param external_status [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus]
              #   # @param invoice_id [String]
              #   # @param issued_at_timestamp [Time]
              #   #
              #   def initialize(billing_provider_type:, external_status: nil, invoice_id: nil, issued_at_timestamp: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case billing_provider_type
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
              class BillingProviderType < MetronomeSDK::Enum
                AWS_MARKETPLACE = :aws_marketplace
                STRIPE = :stripe
                NETSUITE = :netsuite
                CUSTOM = :custom
                AZURE_MARKETPLACE = :azure_marketplace
                QUICKBOOKS_ONLINE = :quickbooks_online
                WORKDAY = :workday
                GCP_MARKETPLACE = :gcp_marketplace

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end

              # @abstract
              #
              # @example
              # ```ruby
              # case external_status
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
              class ExternalStatus < MetronomeSDK::Enum
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

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class ExternalInvoice < MetronomeSDK::BaseModel
            # @!attribute billing_provider_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::BillingProviderType]
            required :billing_provider_type,
                     enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::BillingProviderType }

            # @!attribute [r] external_status
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::ExternalStatus, nil]
            optional :external_status,
                     enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::ExternalStatus }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::ExternalStatus]
            #   attr_writer :external_status

            # @!attribute [r] invoice_id
            #
            #   @return [String, nil]
            optional :invoice_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :invoice_id

            # @!attribute [r] issued_at_timestamp
            #
            #   @return [Time, nil]
            optional :issued_at_timestamp, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :issued_at_timestamp

            # @!parse
            #   # @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::BillingProviderType]
            #   # @param external_status [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::ExternalStatus]
            #   # @param invoice_id [String]
            #   # @param issued_at_timestamp [Time]
            #   #
            #   def initialize(billing_provider_type:, external_status: nil, invoice_id: nil, issued_at_timestamp: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case billing_provider_type
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
            class BillingProviderType < MetronomeSDK::Enum
              AWS_MARKETPLACE = :aws_marketplace
              STRIPE = :stripe
              NETSUITE = :netsuite
              CUSTOM = :custom
              AZURE_MARKETPLACE = :azure_marketplace
              QUICKBOOKS_ONLINE = :quickbooks_online
              WORKDAY = :workday
              GCP_MARKETPLACE = :gcp_marketplace

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case external_status
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
            class ExternalStatus < MetronomeSDK::Enum
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

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoiceAdjustment < MetronomeSDK::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData]
            required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute total
            #
            #   @return [Float]
            required :total, Float

            # @!attribute [r] credit_grant_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :credit_grant_custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :credit_grant_custom_fields

            # @!attribute [r] credit_grant_id
            #
            #   @return [String, nil]
            optional :credit_grant_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_grant_id

            # @!parse
            #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #   # @param name [String]
            #   # @param total [Float]
            #   # @param credit_grant_custom_fields [Hash{Symbol=>String}]
            #   # @param credit_grant_id [String]
            #   #
            #   def initialize(credit_type:, name:, total:, credit_grant_custom_fields: nil, credit_grant_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class ResellerRoyalty < MetronomeSDK::BaseModel
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
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::ResellerType }

            # @!attribute [r] aws_options
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::AwsOptions, nil]
            optional :aws_options, -> { MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::AwsOptions }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::AwsOptions]
            #   attr_writer :aws_options

            # @!attribute [r] gcp_options
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::GcpOptions, nil]
            optional :gcp_options, -> { MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::GcpOptions }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::GcpOptions]
            #   attr_writer :gcp_options

            # @!parse
            #   # only present for beta contract invoices with reseller royalties
            #   #
            #   # @param fraction [String]
            #   # @param netsuite_reseller_id [String]
            #   # @param reseller_type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::ResellerType]
            #   # @param aws_options [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::AwsOptions]
            #   # @param gcp_options [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::GcpOptions]
            #   #
            #   def initialize(fraction:, netsuite_reseller_id:, reseller_type:, aws_options: nil, gcp_options: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case reseller_type
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
            class ResellerType < MetronomeSDK::Enum
              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class AwsOptions < MetronomeSDK::BaseModel
              # @!attribute [r] aws_account_number
              #
              #   @return [String, nil]
              optional :aws_account_number, String

              # @!parse
              #   # @return [String]
              #   attr_writer :aws_account_number

              # @!attribute [r] aws_offer_id
              #
              #   @return [String, nil]
              optional :aws_offer_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :aws_offer_id

              # @!attribute [r] aws_payer_reference_id
              #
              #   @return [String, nil]
              optional :aws_payer_reference_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :aws_payer_reference_id

              # @!parse
              #   # @param aws_account_number [String]
              #   # @param aws_offer_id [String]
              #   # @param aws_payer_reference_id [String]
              #   #
              #   def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class GcpOptions < MetronomeSDK::BaseModel
              # @!attribute [r] gcp_account_id
              #
              #   @return [String, nil]
              optional :gcp_account_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :gcp_account_id

              # @!attribute [r] gcp_offer_id
              #
              #   @return [String, nil]
              optional :gcp_offer_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :gcp_offer_id

              # @!parse
              #   # @param gcp_account_id [String]
              #   # @param gcp_offer_id [String]
              #   #
              #   def initialize(gcp_account_id: nil, gcp_offer_id: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
