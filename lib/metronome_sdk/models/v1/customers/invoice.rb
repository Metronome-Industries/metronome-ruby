# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Invoices#list
        class Invoice < MetronomeSDK::Internal::Type::BaseModel
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
          required :line_items,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice::LineItem] }

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
          #   @return [String, nil]
          optional :amendment_id, String

          # @!attribute billable_status
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::BillableStatus, nil]
          optional :billable_status, enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::BillableStatus }

          # @!attribute contract_custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :contract_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute contract_id
          #
          #   @return [String, nil]
          optional :contract_id, String

          # @!attribute correction_record
          #
          #   @return [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord, nil]
          optional :correction_record, -> { MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord }

          # @!attribute created_at
          #   When the invoice was created (UTC). This field is present for correction
          #   invoices only.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute customer_custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :customer_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute end_timestamp
          #   End of the usage period this invoice covers (UTC)
          #
          #   @return [Time, nil]
          optional :end_timestamp, Time

          # @!attribute external_invoice
          #
          #   @return [MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice, nil]
          optional :external_invoice,
                   -> { MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice },
                   nil?: true

          # @!attribute invoice_adjustments
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::InvoiceAdjustment>, nil]
          optional :invoice_adjustments,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice::InvoiceAdjustment] }

          # @!attribute issued_at
          #   When the invoice was issued (UTC)
          #
          #   @return [Time, nil]
          optional :issued_at, Time

          # @!attribute net_payment_terms_days
          #
          #   @return [Float, nil]
          optional :net_payment_terms_days, Float

          # @!attribute netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!attribute plan_custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :plan_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute plan_id
          #
          #   @return [String, nil]
          optional :plan_id, String

          # @!attribute plan_name
          #
          #   @return [String, nil]
          optional :plan_name, String

          # @!attribute reseller_royalty
          #   Only present for contract invoices with reseller royalties.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty, nil]
          optional :reseller_royalty, -> { MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty }

          # @!attribute salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :salesforce_opportunity_id, String

          # @!attribute start_timestamp
          #   Beginning of the usage period this invoice covers (UTC)
          #
          #   @return [Time, nil]
          optional :start_timestamp, Time

          # @!attribute subtotal
          #
          #   @return [Float, nil]
          optional :subtotal, Float

          # @!method initialize(id:, credit_type:, customer_id:, line_items:, status:, total:, type:, amendment_id: nil, billable_status: nil, contract_custom_fields: nil, contract_id: nil, correction_record: nil, created_at: nil, custom_fields: nil, customer_custom_fields: nil, end_timestamp: nil, external_invoice: nil, invoice_adjustments: nil, issued_at: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, plan_custom_fields: nil, plan_id: nil, plan_name: nil, reseller_royalty: nil, salesforce_opportunity_id: nil, start_timestamp: nil, subtotal: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::Invoice} for more details.
          #
          #   @param id [String]
          #
          #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
          #
          #   @param customer_id [String]
          #
          #   @param line_items [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem>]
          #
          #   @param status [String]
          #
          #   @param total [Float]
          #
          #   @param type [String]
          #
          #   @param amendment_id [String]
          #
          #   @param billable_status [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::BillableStatus] This field's availability is dependent on your client's configuration.
          #
          #   @param contract_custom_fields [Hash{Symbol=>String}]
          #
          #   @param contract_id [String]
          #
          #   @param correction_record [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord]
          #
          #   @param created_at [Time] When the invoice was created (UTC). This field is present for correction invoice
          #   ...
          #
          #   @param custom_fields [Hash{Symbol=>Object}]
          #
          #   @param customer_custom_fields [Hash{Symbol=>String}]
          #
          #   @param end_timestamp [Time] End of the usage period this invoice covers (UTC)
          #
          #   @param external_invoice [MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice, nil]
          #
          #   @param invoice_adjustments [Array<MetronomeSDK::Models::V1::Customers::Invoice::InvoiceAdjustment>]
          #
          #   @param issued_at [Time] When the invoice was issued (UTC)
          #
          #   @param net_payment_terms_days [Float]
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param plan_custom_fields [Hash{Symbol=>String}]
          #
          #   @param plan_id [String]
          #
          #   @param plan_name [String]
          #
          #   @param reseller_royalty [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty] Only present for contract invoices with reseller royalties.
          #
          #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param start_timestamp [Time] Beginning of the usage period this invoice covers (UTC)
          #
          #   @param subtotal [Float]

          class LineItem < MetronomeSDK::Internal::Type::BaseModel
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

            # @!attribute applied_commit_or_credit
            #   Details about the credit or commit that was applied to this line item. Only
            #   present on line items with product of `USAGE`, `SUBSCRIPTION` or `COMPOSITE`
            #   types.
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit, nil]
            optional :applied_commit_or_credit,
                     -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit }

            # @!attribute commit_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :commit_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute commit_id
            #   For line items with product of `USAGE`, `SUBSCRIPTION`, or `COMPOSITE` types,
            #   the ID of the credit or commit that was applied to this line item. For line
            #   items with product type of `FIXED`, the ID of the prepaid or postpaid commit
            #   that is being paid for.
            #
            #   @return [String, nil]
            optional :commit_id, String

            # @!attribute commit_netsuite_item_id
            #
            #   @return [String, nil]
            optional :commit_netsuite_item_id, String

            # @!attribute commit_netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :commit_netsuite_sales_order_id, String

            # @!attribute commit_segment_id
            #
            #   @return [String, nil]
            optional :commit_segment_id, String

            # @!attribute commit_type
            #   `PrepaidCommit` (for commit types `PREPAID` and `CREDIT`) or `PostpaidCommit`
            #   (for commit type `POSTPAID`).
            #
            #   @return [String, nil]
            optional :commit_type, String

            # @!attribute custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute ending_before
            #   The line item's end date (exclusive).
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute group_key
            #
            #   @return [String, nil]
            optional :group_key, String

            # @!attribute group_value
            #
            #   @return [String, nil]
            optional :group_value, String, nil?: true

            # @!attribute is_prorated
            #   Indicates whether the line item is prorated for `SUBSCRIPTION` type product.
            #
            #   @return [Boolean, nil]
            optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

            # @!attribute list_price
            #   Only present for contract invoices and when the `include_list_prices` query
            #   parameter is set to true. This will include the list rate for the charge if
            #   applicable. Only present for usage and subscription line items.
            #
            #   @return [MetronomeSDK::Models::Rate, nil]
            optional :list_price, -> { MetronomeSDK::Models::Rate }

            # @!attribute metadata
            #
            #   @return [String, nil]
            optional :metadata, String

            # @!attribute netsuite_invoice_billing_end
            #   The end date for the billing period on the invoice.
            #
            #   @return [Time, nil]
            optional :netsuite_invoice_billing_end, Time

            # @!attribute netsuite_invoice_billing_start
            #   The start date for the billing period on the invoice.
            #
            #   @return [Time, nil]
            optional :netsuite_invoice_billing_start, Time

            # @!attribute netsuite_item_id
            #
            #   @return [String, nil]
            optional :netsuite_item_id, String

            # @!attribute postpaid_commit
            #   Only present for line items paying for a postpaid commit true-up.
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::PostpaidCommit, nil]
            optional :postpaid_commit, -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::PostpaidCommit }

            # @!attribute presentation_group_values
            #   Includes the presentation group values associated with this line item if
            #   presentation group keys are used.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String, nil?: true]

            # @!attribute pricing_group_values
            #   Includes the pricing group values associated with this line item if dimensional
            #   pricing is used.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :product_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_id
            #   ID of the product associated with the line item.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!attribute product_tags
            #   The current product tags associated with the line item's `product_id`.
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute product_type
            #   The type of the line item's product. Possible values are `FixedProductListItem`
            #   (for `FIXED` type products), `UsageProductListItem` (for `USAGE` type products),
            #   `SubscriptionProductListItem` (for `SUBSCRIPTION` type products) or
            #   `CompositeProductListItem` (for `COMPOSITE` type products). For scheduled
            #   charges, commit and credit payments, the value is `FixedProductListItem`.
            #
            #   @return [String, nil]
            optional :product_type, String

            # @!attribute professional_service_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :professional_service_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute professional_service_id
            #
            #   @return [String, nil]
            optional :professional_service_id, String

            # @!attribute quantity
            #   The quantity associated with the line item.
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!attribute reseller_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::ResellerType, nil]
            optional :reseller_type, enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::ResellerType }

            # @!attribute scheduled_charge_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :scheduled_charge_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute scheduled_charge_id
            #   ID of scheduled charge.
            #
            #   @return [String, nil]
            optional :scheduled_charge_id, String

            # @!attribute starting_at
            #   The line item's start date (inclusive).
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!attribute sub_line_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem>, nil]
            optional :sub_line_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem] }

            # @!attribute subscription_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :subscription_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute tier
            #   Populated if the line item has a tiered price.
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::Tier, nil]
            optional :tier, -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::Tier }

            # @!attribute unit_price
            #   The unit price associated with the line item.
            #
            #   @return [Float, nil]
            optional :unit_price, Float

            # @!method initialize(credit_type:, name:, total:, applied_commit_or_credit: nil, commit_custom_fields: nil, commit_id: nil, commit_netsuite_item_id: nil, commit_netsuite_sales_order_id: nil, commit_segment_id: nil, commit_type: nil, custom_fields: nil, ending_before: nil, group_key: nil, group_value: nil, is_prorated: nil, list_price: nil, metadata: nil, netsuite_invoice_billing_end: nil, netsuite_invoice_billing_start: nil, netsuite_item_id: nil, postpaid_commit: nil, presentation_group_values: nil, pricing_group_values: nil, product_custom_fields: nil, product_id: nil, product_tags: nil, product_type: nil, professional_service_custom_fields: nil, professional_service_id: nil, quantity: nil, reseller_type: nil, scheduled_charge_custom_fields: nil, scheduled_charge_id: nil, starting_at: nil, sub_line_items: nil, subscription_custom_fields: nil, tier: nil, unit_price: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Customers::Invoice::LineItem} for more details.
            #
            #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #
            #   @param name [String]
            #
            #   @param total [Float]
            #
            #   @param applied_commit_or_credit [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit] Details about the credit or commit that was applied to this line item. Only pres
            #   ...
            #
            #   @param commit_custom_fields [Hash{Symbol=>String}]
            #
            #   @param commit_id [String] For line items with product of `USAGE`, `SUBSCRIPTION`, or `COMPOSITE` types, th
            #   ...
            #
            #   @param commit_netsuite_item_id [String]
            #
            #   @param commit_netsuite_sales_order_id [String]
            #
            #   @param commit_segment_id [String]
            #
            #   @param commit_type [String] `PrepaidCommit` (for commit types `PREPAID` and `CREDIT`) or `PostpaidCommit` (f
            #   ...
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param ending_before [Time] The line item's end date (exclusive).
            #
            #   @param group_key [String]
            #
            #   @param group_value [String, nil]
            #
            #   @param is_prorated [Boolean] Indicates whether the line item is prorated for `SUBSCRIPTION` type product.
            #
            #   @param list_price [MetronomeSDK::Models::Rate] Only present for contract invoices and when the `include_list_prices` query para
            #   ...
            #
            #   @param metadata [String]
            #
            #   @param netsuite_invoice_billing_end [Time] The end date for the billing period on the invoice.
            #
            #   @param netsuite_invoice_billing_start [Time] The start date for the billing period on the invoice.
            #
            #   @param netsuite_item_id [String]
            #
            #   @param postpaid_commit [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::PostpaidCommit] Only present for line items paying for a postpaid commit true-up.
            #
            #   @param presentation_group_values [Hash{Symbol=>String, nil}] Includes the presentation group values associated with this line item if present
            #   ...
            #
            #   @param pricing_group_values [Hash{Symbol=>String}] Includes the pricing group values associated with this line item if dimensional
            #   ...
            #
            #   @param product_custom_fields [Hash{Symbol=>String}]
            #
            #   @param product_id [String] ID of the product associated with the line item.
            #
            #   @param product_tags [Array<String>] The current product tags associated with the line item's `product_id`.
            #
            #   @param product_type [String] The type of the line item's product. Possible values are `FixedProductListItem`
            #   ...
            #
            #   @param professional_service_custom_fields [Hash{Symbol=>String}]
            #
            #   @param professional_service_id [String]
            #
            #   @param quantity [Float] The quantity associated with the line item.
            #
            #   @param reseller_type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::ResellerType]
            #
            #   @param scheduled_charge_custom_fields [Hash{Symbol=>String}]
            #
            #   @param scheduled_charge_id [String] ID of scheduled charge.
            #
            #   @param starting_at [Time] The line item's start date (inclusive).
            #
            #   @param sub_line_items [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem>]
            #
            #   @param subscription_custom_fields [Hash{Symbol=>String}]
            #
            #   @param tier [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::Tier] Populated if the line item has a tiered price.
            #
            #   @param unit_price [Float] The unit price associated with the line item.

            # @see MetronomeSDK::Models::V1::Customers::Invoice::LineItem#applied_commit_or_credit
            class AppliedCommitOrCredit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type }

              # @!method initialize(id:, type:)
              #   Details about the credit or commit that was applied to this line item. Only
              #   present on line items with product of `USAGE`, `SUBSCRIPTION` or `COMPOSITE`
              #   types.
              #
              #   @param id [String]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type]

              # @see MetronomeSDK::Models::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID = :PREPAID
                POSTPAID = :POSTPAID
                CREDIT = :CREDIT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V1::Customers::Invoice::LineItem#postpaid_commit
            class PostpaidCommit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   Only present for line items paying for a postpaid commit true-up.
              #
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V1::Customers::Invoice::LineItem#reseller_type
            module ResellerType
              extend MetronomeSDK::Internal::Type::Enum

              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class SubLineItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}]
              required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

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
              #   @return [String, nil]
              optional :charge_id, String

              # @!attribute credit_grant_id
              #
              #   @return [String, nil]
              optional :credit_grant_id, String

              # @!attribute end_date
              #   The end date for the charge (for seats charges only).
              #
              #   @return [Time, nil]
              optional :end_date, Time

              # @!attribute price
              #   the unit price for this charge, present only if the charge is not tiered and the
              #   quantity is nonzero
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute start_date
              #   The start date for the charge (for seats charges only).
              #
              #   @return [Time, nil]
              optional :start_date, Time

              # @!attribute tier_period
              #   when the current tier started and ends (for tiered charges only)
              #
              #   @return [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod, nil]
              optional :tier_period,
                       -> { MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod }

              # @!attribute tiers
              #
              #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::Tier>, nil]
              optional :tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::Tier] }

              # @!method initialize(custom_fields:, name:, quantity:, subtotal:, charge_id: nil, credit_grant_id: nil, end_date: nil, price: nil, start_date: nil, tier_period: nil, tiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem} for more
              #   details.
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param name [String]
              #
              #   @param quantity [Float]
              #
              #   @param subtotal [Float]
              #
              #   @param charge_id [String]
              #
              #   @param credit_grant_id [String]
              #
              #   @param end_date [Time] The end date for the charge (for seats charges only).
              #
              #   @param price [Float] the unit price for this charge, present only if the charge is not tiered and the
              #   ...
              #
              #   @param start_date [Time] The start date for the charge (for seats charges only).
              #
              #   @param tier_period [MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod] when the current tier started and ends (for tiered charges only)
              #
              #   @param tiers [Array<MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem::Tier>]

              # @see MetronomeSDK::Models::V1::Customers::Invoice::LineItem::SubLineItem#tier_period
              class TierPeriod < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute starting_at
                #
                #   @return [Time]
                required :starting_at, Time

                # @!attribute ending_before
                #
                #   @return [Time, nil]
                optional :ending_before, Time

                # @!method initialize(starting_at:, ending_before: nil)
                #   when the current tier started and ends (for tiered charges only)
                #
                #   @param starting_at [Time]
                #   @param ending_before [Time]
              end

              class Tier < MetronomeSDK::Internal::Type::BaseModel
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

                # @!method initialize(price:, quantity:, starting_at:, subtotal:)
                #   @param price [Float]
                #
                #   @param quantity [Float]
                #
                #   @param starting_at [Float] at what metric amount this tier begins
                #
                #   @param subtotal [Float]
              end
            end

            # @see MetronomeSDK::Models::V1::Customers::Invoice::LineItem#tier
            class Tier < MetronomeSDK::Internal::Type::BaseModel
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

              # @!method initialize(level:, starting_at:, size: nil)
              #   Populated if the line item has a tiered price.
              #
              #   @param level [Float]
              #   @param starting_at [String]
              #   @param size [String, nil]
            end
          end

          # This field's availability is dependent on your client's configuration.
          #
          # @see MetronomeSDK::Models::V1::Customers::Invoice#billable_status
          module BillableStatus
            extend MetronomeSDK::Internal::Type::Enum

            BILLABLE = :billable
            UNBILLABLE = :unbillable

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::Customers::Invoice#correction_record
          class CorrectionRecord < MetronomeSDK::Internal::Type::BaseModel
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
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice, nil]
            optional :corrected_external_invoice,
                     -> { MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice }

            # @!method initialize(corrected_invoice_id:, memo:, reason:, corrected_external_invoice: nil)
            #   @param corrected_invoice_id [String]
            #   @param memo [String]
            #   @param reason [String]
            #   @param corrected_external_invoice [MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice]

            # @see MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord#corrected_external_invoice
            class CorrectedExternalInvoice < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_provider_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType]
              required :billing_provider_type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType }

              # @!attribute external_status
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus, nil]
              optional :external_status,
                       enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus }

              # @!attribute invoice_id
              #
              #   @return [String, nil]
              optional :invoice_id, String

              # @!attribute issued_at_timestamp
              #
              #   @return [Time, nil]
              optional :issued_at_timestamp, Time

              # @!method initialize(billing_provider_type:, external_status: nil, invoice_id: nil, issued_at_timestamp: nil)
              #   @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType]
              #   @param external_status [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus]
              #   @param invoice_id [String]
              #   @param issued_at_timestamp [Time]

              # @see MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice#billing_provider_type
              module BillingProviderType
                extend MetronomeSDK::Internal::Type::Enum

                AWS_MARKETPLACE = :aws_marketplace
                STRIPE = :stripe
                NETSUITE = :netsuite
                CUSTOM = :custom
                AZURE_MARKETPLACE = :azure_marketplace
                QUICKBOOKS_ONLINE = :quickbooks_online
                WORKDAY = :workday
                GCP_MARKETPLACE = :gcp_marketplace

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice#external_status
              module ExternalStatus
                extend MetronomeSDK::Internal::Type::Enum

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

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see MetronomeSDK::Models::V1::Customers::Invoice#external_invoice
          class ExternalInvoice < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_provider_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::BillingProviderType]
            required :billing_provider_type,
                     enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::BillingProviderType }

            # @!attribute external_status
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::ExternalStatus, nil]
            optional :external_status,
                     enum: -> { MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::ExternalStatus }

            # @!attribute invoice_id
            #
            #   @return [String, nil]
            optional :invoice_id, String

            # @!attribute issued_at_timestamp
            #
            #   @return [Time, nil]
            optional :issued_at_timestamp, Time

            # @!method initialize(billing_provider_type:, external_status: nil, invoice_id: nil, issued_at_timestamp: nil)
            #   @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::BillingProviderType]
            #   @param external_status [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice::ExternalStatus]
            #   @param invoice_id [String]
            #   @param issued_at_timestamp [Time]

            # @see MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice#billing_provider_type
            module BillingProviderType
              extend MetronomeSDK::Internal::Type::Enum

              AWS_MARKETPLACE = :aws_marketplace
              STRIPE = :stripe
              NETSUITE = :netsuite
              CUSTOM = :custom
              AZURE_MARKETPLACE = :azure_marketplace
              QUICKBOOKS_ONLINE = :quickbooks_online
              WORKDAY = :workday
              GCP_MARKETPLACE = :gcp_marketplace

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::Customers::Invoice::ExternalInvoice#external_status
            module ExternalStatus
              extend MetronomeSDK::Internal::Type::Enum

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

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class InvoiceAdjustment < MetronomeSDK::Internal::Type::BaseModel
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

            # @!attribute credit_grant_custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :credit_grant_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute credit_grant_id
            #
            #   @return [String, nil]
            optional :credit_grant_id, String

            # @!method initialize(credit_type:, name:, total:, credit_grant_custom_fields: nil, credit_grant_id: nil)
            #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #   @param name [String]
            #   @param total [Float]
            #   @param credit_grant_custom_fields [Hash{Symbol=>String}]
            #   @param credit_grant_id [String]
          end

          # @see MetronomeSDK::Models::V1::Customers::Invoice#reseller_royalty
          class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
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

            # @!attribute aws_options
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::AwsOptions, nil]
            optional :aws_options, -> { MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::AwsOptions }

            # @!attribute gcp_options
            #
            #   @return [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::GcpOptions, nil]
            optional :gcp_options, -> { MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::GcpOptions }

            # @!method initialize(fraction:, netsuite_reseller_id:, reseller_type:, aws_options: nil, gcp_options: nil)
            #   Only present for contract invoices with reseller royalties.
            #
            #   @param fraction [String]
            #   @param netsuite_reseller_id [String]
            #   @param reseller_type [Symbol, MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::ResellerType]
            #   @param aws_options [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::AwsOptions]
            #   @param gcp_options [MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty::GcpOptions]

            # @see MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty#reseller_type
            module ResellerType
              extend MetronomeSDK::Internal::Type::Enum

              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty#aws_options
            class AwsOptions < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute aws_account_number
              #
              #   @return [String, nil]
              optional :aws_account_number, String

              # @!attribute aws_offer_id
              #
              #   @return [String, nil]
              optional :aws_offer_id, String

              # @!attribute aws_payer_reference_id
              #
              #   @return [String, nil]
              optional :aws_payer_reference_id, String

              # @!method initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil)
              #   @param aws_account_number [String]
              #   @param aws_offer_id [String]
              #   @param aws_payer_reference_id [String]
            end

            # @see MetronomeSDK::Models::V1::Customers::Invoice::ResellerRoyalty#gcp_options
            class GcpOptions < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute gcp_account_id
              #
              #   @return [String, nil]
              optional :gcp_account_id, String

              # @!attribute gcp_offer_id
              #
              #   @return [String, nil]
              optional :gcp_offer_id, String

              # @!method initialize(gcp_account_id: nil, gcp_offer_id: nil)
              #   @param gcp_account_id [String]
              #   @param gcp_offer_id [String]
            end
          end
        end
      end
    end
  end
end
