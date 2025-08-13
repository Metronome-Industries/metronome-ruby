# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class Invoice < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::Invoice,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(MetronomeSDK::CreditTypeData) }
          attr_reader :credit_type

          sig { params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void }
          attr_writer :credit_type

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(T::Array[MetronomeSDK::V1::Customers::Invoice::LineItem])
          end
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

          # This field's availability is dependent on your client's configuration.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Customers::Invoice::BillableStatus::TaggedSymbol
              )
            )
          end
          attr_reader :billable_status

          sig do
            params(
              billable_status:
                MetronomeSDK::V1::Customers::Invoice::BillableStatus::OrSymbol
            ).void
          end
          attr_writer :billable_status

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :contract_custom_fields

          sig { params(contract_custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :contract_custom_fields

          sig { returns(T.nilable(String)) }
          attr_reader :contract_id

          sig { params(contract_id: String).void }
          attr_writer :contract_id

          sig do
            returns(
              T.nilable(MetronomeSDK::V1::Customers::Invoice::CorrectionRecord)
            )
          end
          attr_reader :correction_record

          sig do
            params(
              correction_record:
                MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::OrHash
            ).void
          end
          attr_writer :correction_record

          # When the invoice was created (UTC). This field is present for correction
          # invoices only.
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

          # End of the usage period this invoice covers (UTC)
          sig { returns(T.nilable(Time)) }
          attr_reader :end_timestamp

          sig { params(end_timestamp: Time).void }
          attr_writer :end_timestamp

          sig do
            returns(
              T.nilable(MetronomeSDK::V1::Customers::Invoice::ExternalInvoice)
            )
          end
          attr_reader :external_invoice

          sig do
            params(
              external_invoice:
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::OrHash
                )
            ).void
          end
          attr_writer :external_invoice

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::Customers::Invoice::InvoiceAdjustment
                ]
              )
            )
          end
          attr_reader :invoice_adjustments

          sig do
            params(
              invoice_adjustments:
                T::Array[
                  MetronomeSDK::V1::Customers::Invoice::InvoiceAdjustment::OrHash
                ]
            ).void
          end
          attr_writer :invoice_adjustments

          # When the invoice was issued (UTC)
          sig { returns(T.nilable(Time)) }
          attr_reader :issued_at

          sig { params(issued_at: Time).void }
          attr_writer :issued_at

          sig { returns(T.nilable(Float)) }
          attr_reader :net_payment_terms_days

          sig { params(net_payment_terms_days: Float).void }
          attr_writer :net_payment_terms_days

          # This field's availability is dependent on your client's configuration.
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

          # Only present for contract invoices with reseller royalties.
          sig do
            returns(
              T.nilable(MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty)
            )
          end
          attr_reader :reseller_royalty

          sig do
            params(
              reseller_royalty:
                MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::OrHash
            ).void
          end
          attr_writer :reseller_royalty

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :salesforce_opportunity_id

          sig { params(salesforce_opportunity_id: String).void }
          attr_writer :salesforce_opportunity_id

          # Beginning of the usage period this invoice covers (UTC)
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
              credit_type: MetronomeSDK::CreditTypeData::OrHash,
              customer_id: String,
              line_items:
                T::Array[
                  MetronomeSDK::V1::Customers::Invoice::LineItem::OrHash
                ],
              status: String,
              total: Float,
              type: String,
              amendment_id: String,
              billable_status:
                MetronomeSDK::V1::Customers::Invoice::BillableStatus::OrSymbol,
              contract_custom_fields: T::Hash[Symbol, String],
              contract_id: String,
              correction_record:
                MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::OrHash,
              created_at: Time,
              custom_fields: T::Hash[Symbol, T.anything],
              customer_custom_fields: T::Hash[Symbol, String],
              end_timestamp: Time,
              external_invoice:
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::OrHash
                ),
              invoice_adjustments:
                T::Array[
                  MetronomeSDK::V1::Customers::Invoice::InvoiceAdjustment::OrHash
                ],
              issued_at: Time,
              net_payment_terms_days: Float,
              netsuite_sales_order_id: String,
              plan_custom_fields: T::Hash[Symbol, String],
              plan_id: String,
              plan_name: String,
              reseller_royalty:
                MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::OrHash,
              salesforce_opportunity_id: String,
              start_timestamp: Time,
              subtotal: Float
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            credit_type:,
            customer_id:,
            line_items:,
            status:,
            total:,
            type:,
            amendment_id: nil,
            # This field's availability is dependent on your client's configuration.
            billable_status: nil,
            contract_custom_fields: nil,
            contract_id: nil,
            correction_record: nil,
            # When the invoice was created (UTC). This field is present for correction
            # invoices only.
            created_at: nil,
            custom_fields: nil,
            customer_custom_fields: nil,
            # End of the usage period this invoice covers (UTC)
            end_timestamp: nil,
            external_invoice: nil,
            invoice_adjustments: nil,
            # When the invoice was issued (UTC)
            issued_at: nil,
            net_payment_terms_days: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            plan_custom_fields: nil,
            plan_id: nil,
            plan_name: nil,
            # Only present for contract invoices with reseller royalties.
            reseller_royalty: nil,
            # This field's availability is dependent on your client's configuration.
            salesforce_opportunity_id: nil,
            # Beginning of the usage period this invoice covers (UTC)
            start_timestamp: nil,
            subtotal: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                credit_type: MetronomeSDK::CreditTypeData,
                customer_id: String,
                line_items:
                  T::Array[MetronomeSDK::V1::Customers::Invoice::LineItem],
                status: String,
                total: Float,
                type: String,
                amendment_id: String,
                billable_status:
                  MetronomeSDK::V1::Customers::Invoice::BillableStatus::TaggedSymbol,
                contract_custom_fields: T::Hash[Symbol, String],
                contract_id: String,
                correction_record:
                  MetronomeSDK::V1::Customers::Invoice::CorrectionRecord,
                created_at: Time,
                custom_fields: T::Hash[Symbol, T.anything],
                customer_custom_fields: T::Hash[Symbol, String],
                end_timestamp: Time,
                external_invoice:
                  T.nilable(
                    MetronomeSDK::V1::Customers::Invoice::ExternalInvoice
                  ),
                invoice_adjustments:
                  T::Array[
                    MetronomeSDK::V1::Customers::Invoice::InvoiceAdjustment
                  ],
                issued_at: Time,
                net_payment_terms_days: Float,
                netsuite_sales_order_id: String,
                plan_custom_fields: T::Hash[Symbol, String],
                plan_id: String,
                plan_name: String,
                reseller_royalty:
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty,
                salesforce_opportunity_id: String,
                start_timestamp: Time,
                subtotal: Float
              }
            )
          end
          def to_hash
          end

          class LineItem < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::Invoice::LineItem,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(MetronomeSDK::CreditTypeData) }
            attr_reader :credit_type

            sig do
              params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
            end
            attr_writer :credit_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :total

            # The type of line item. Possible values are 'aws_royalty',
            # 'applied_commit_or_credit', 'scheduled', 'commit_purchase', 'cpu_conversion',
            # 'discount', 'gcp_royalty', 'postpaid_trueup', 'professional_services',
            # 'subscription', 'usage', 'legacy', 'minimum', 'product_charge',
            # 'trial_discount', 'rollover', 'seat', 'grouped_charge'.
            sig { returns(String) }
            attr_accessor :type

            # Details about the credit or commit that was applied to this line item. Only
            # present on line items with product of `USAGE`, `SUBSCRIPTION` or `COMPOSITE`
            # types.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit
                )
              )
            end
            attr_reader :applied_commit_or_credit

            sig do
              params(
                applied_commit_or_credit:
                  MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::OrHash
              ).void
            end
            attr_writer :applied_commit_or_credit

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :commit_custom_fields

            sig { params(commit_custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :commit_custom_fields

            # For line items with product of `USAGE`, `SUBSCRIPTION`, or `COMPOSITE` types,
            # the ID of the credit or commit that was applied to this line item. For line
            # items with product type of `FIXED`, the ID of the prepaid or postpaid commit
            # that is being paid for.
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

            # `PrepaidCommit` (for commit types `PREPAID` and `CREDIT`) or `PostpaidCommit`
            # (for commit type `POSTPAID`).
            sig { returns(T.nilable(String)) }
            attr_reader :commit_type

            sig { params(commit_type: String).void }
            attr_writer :commit_type

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :discount_custom_fields

            sig { params(discount_custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :discount_custom_fields

            # ID of the discount applied to this line item.
            sig { returns(T.nilable(String)) }
            attr_reader :discount_id

            sig { params(discount_id: String).void }
            attr_writer :discount_id

            # The line item's end date (exclusive).
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

            # Indicates whether the line item is prorated for `SUBSCRIPTION` type product.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_prorated

            sig { params(is_prorated: T::Boolean).void }
            attr_writer :is_prorated

            # Only present for contract invoices and when the `include_list_prices` query
            # parameter is set to true. This will include the list rate for the charge if
            # applicable. Only present for usage and subscription line items.
            sig { returns(T.nilable(MetronomeSDK::Rate)) }
            attr_reader :list_price

            sig { params(list_price: MetronomeSDK::Rate::OrHash).void }
            attr_writer :list_price

            sig { returns(T.nilable(String)) }
            attr_reader :metadata

            sig { params(metadata: String).void }
            attr_writer :metadata

            # The end date for the billing period on the invoice.
            sig { returns(T.nilable(Time)) }
            attr_reader :netsuite_invoice_billing_end

            sig { params(netsuite_invoice_billing_end: Time).void }
            attr_writer :netsuite_invoice_billing_end

            # The start date for the billing period on the invoice.
            sig { returns(T.nilable(Time)) }
            attr_reader :netsuite_invoice_billing_start

            sig { params(netsuite_invoice_billing_start: Time).void }
            attr_writer :netsuite_invoice_billing_start

            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_item_id

            sig { params(netsuite_item_id: String).void }
            attr_writer :netsuite_item_id

            # Only present for line items paying for a postpaid commit true-up.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::LineItem::PostpaidCommit
                )
              )
            end
            attr_reader :postpaid_commit

            sig do
              params(
                postpaid_commit:
                  MetronomeSDK::V1::Customers::Invoice::LineItem::PostpaidCommit::OrHash
              ).void
            end
            attr_writer :postpaid_commit

            # Includes the presentation group values associated with this line item if
            # presentation group keys are used.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_reader :presentation_group_values

            sig do
              params(
                presentation_group_values: T::Hash[Symbol, T.nilable(String)]
              ).void
            end
            attr_writer :presentation_group_values

            # Includes the pricing group values associated with this line item if dimensional
            # pricing is used.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :product_custom_fields

            sig { params(product_custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :product_custom_fields

            # ID of the product associated with the line item.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            # The current product tags associated with the line item's `product_id`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :product_tags

            sig { params(product_tags: T::Array[String]).void }
            attr_writer :product_tags

            # The type of the line item's product. Possible values are `FixedProductListItem`
            # (for `FIXED` type products), `UsageProductListItem` (for `USAGE` type products),
            # `SubscriptionProductListItem` (for `SUBSCRIPTION` type products) or
            # `CompositeProductListItem` (for `COMPOSITE` type products). For scheduled
            # charges, commit and credit payments, the value is `FixedProductListItem`.
            sig { returns(T.nilable(String)) }
            attr_reader :product_type

            sig { params(product_type: String).void }
            attr_writer :product_type

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :professional_service_custom_fields

            sig do
              params(
                professional_service_custom_fields: T::Hash[Symbol, String]
              ).void
            end
            attr_writer :professional_service_custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :professional_service_id

            sig { params(professional_service_id: String).void }
            attr_writer :professional_service_id

            # The quantity associated with the line item.
            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::TaggedSymbol
                )
              )
            end
            attr_reader :reseller_type

            sig do
              params(
                reseller_type:
                  MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::OrSymbol
              ).void
            end
            attr_writer :reseller_type

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :scheduled_charge_custom_fields

            sig do
              params(
                scheduled_charge_custom_fields: T::Hash[Symbol, String]
              ).void
            end
            attr_writer :scheduled_charge_custom_fields

            # ID of scheduled charge.
            sig { returns(T.nilable(String)) }
            attr_reader :scheduled_charge_id

            sig { params(scheduled_charge_id: String).void }
            attr_writer :scheduled_charge_id

            # The line item's start date (inclusive).
            sig { returns(T.nilable(Time)) }
            attr_reader :starting_at

            sig { params(starting_at: Time).void }
            attr_writer :starting_at

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem
                  ]
                )
              )
            end
            attr_reader :sub_line_items

            sig do
              params(
                sub_line_items:
                  T::Array[
                    MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::OrHash
                  ]
              ).void
            end
            attr_writer :sub_line_items

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :subscription_custom_fields

            sig do
              params(subscription_custom_fields: T::Hash[Symbol, String]).void
            end
            attr_writer :subscription_custom_fields

            # Populated if the line item has a tiered price.
            sig do
              returns(
                T.nilable(MetronomeSDK::V1::Customers::Invoice::LineItem::Tier)
              )
            end
            attr_reader :tier

            sig do
              params(
                tier:
                  MetronomeSDK::V1::Customers::Invoice::LineItem::Tier::OrHash
              ).void
            end
            attr_writer :tier

            # The unit price associated with the line item.
            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig do
              params(
                credit_type: MetronomeSDK::CreditTypeData::OrHash,
                name: String,
                total: Float,
                type: String,
                applied_commit_or_credit:
                  MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::OrHash,
                commit_custom_fields: T::Hash[Symbol, String],
                commit_id: String,
                commit_netsuite_item_id: String,
                commit_netsuite_sales_order_id: String,
                commit_segment_id: String,
                commit_type: String,
                custom_fields: T::Hash[Symbol, String],
                discount_custom_fields: T::Hash[Symbol, String],
                discount_id: String,
                ending_before: Time,
                group_key: String,
                group_value: T.nilable(String),
                is_prorated: T::Boolean,
                list_price: MetronomeSDK::Rate::OrHash,
                metadata: String,
                netsuite_invoice_billing_end: Time,
                netsuite_invoice_billing_start: Time,
                netsuite_item_id: String,
                postpaid_commit:
                  MetronomeSDK::V1::Customers::Invoice::LineItem::PostpaidCommit::OrHash,
                presentation_group_values: T::Hash[Symbol, T.nilable(String)],
                pricing_group_values: T::Hash[Symbol, String],
                product_custom_fields: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String],
                product_type: String,
                professional_service_custom_fields: T::Hash[Symbol, String],
                professional_service_id: String,
                quantity: Float,
                reseller_type:
                  MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::OrSymbol,
                scheduled_charge_custom_fields: T::Hash[Symbol, String],
                scheduled_charge_id: String,
                starting_at: Time,
                sub_line_items:
                  T::Array[
                    MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::OrHash
                  ],
                subscription_custom_fields: T::Hash[Symbol, String],
                tier:
                  MetronomeSDK::V1::Customers::Invoice::LineItem::Tier::OrHash,
                unit_price: Float
              ).returns(T.attached_class)
            end
            def self.new(
              credit_type:,
              name:,
              total:,
              # The type of line item. Possible values are 'aws_royalty',
              # 'applied_commit_or_credit', 'scheduled', 'commit_purchase', 'cpu_conversion',
              # 'discount', 'gcp_royalty', 'postpaid_trueup', 'professional_services',
              # 'subscription', 'usage', 'legacy', 'minimum', 'product_charge',
              # 'trial_discount', 'rollover', 'seat', 'grouped_charge'.
              type:,
              # Details about the credit or commit that was applied to this line item. Only
              # present on line items with product of `USAGE`, `SUBSCRIPTION` or `COMPOSITE`
              # types.
              applied_commit_or_credit: nil,
              commit_custom_fields: nil,
              # For line items with product of `USAGE`, `SUBSCRIPTION`, or `COMPOSITE` types,
              # the ID of the credit or commit that was applied to this line item. For line
              # items with product type of `FIXED`, the ID of the prepaid or postpaid commit
              # that is being paid for.
              commit_id: nil,
              commit_netsuite_item_id: nil,
              commit_netsuite_sales_order_id: nil,
              commit_segment_id: nil,
              # `PrepaidCommit` (for commit types `PREPAID` and `CREDIT`) or `PostpaidCommit`
              # (for commit type `POSTPAID`).
              commit_type: nil,
              custom_fields: nil,
              discount_custom_fields: nil,
              # ID of the discount applied to this line item.
              discount_id: nil,
              # The line item's end date (exclusive).
              ending_before: nil,
              group_key: nil,
              group_value: nil,
              # Indicates whether the line item is prorated for `SUBSCRIPTION` type product.
              is_prorated: nil,
              # Only present for contract invoices and when the `include_list_prices` query
              # parameter is set to true. This will include the list rate for the charge if
              # applicable. Only present for usage and subscription line items.
              list_price: nil,
              metadata: nil,
              # The end date for the billing period on the invoice.
              netsuite_invoice_billing_end: nil,
              # The start date for the billing period on the invoice.
              netsuite_invoice_billing_start: nil,
              netsuite_item_id: nil,
              # Only present for line items paying for a postpaid commit true-up.
              postpaid_commit: nil,
              # Includes the presentation group values associated with this line item if
              # presentation group keys are used.
              presentation_group_values: nil,
              # Includes the pricing group values associated with this line item if dimensional
              # pricing is used.
              pricing_group_values: nil,
              product_custom_fields: nil,
              # ID of the product associated with the line item.
              product_id: nil,
              # The current product tags associated with the line item's `product_id`.
              product_tags: nil,
              # The type of the line item's product. Possible values are `FixedProductListItem`
              # (for `FIXED` type products), `UsageProductListItem` (for `USAGE` type products),
              # `SubscriptionProductListItem` (for `SUBSCRIPTION` type products) or
              # `CompositeProductListItem` (for `COMPOSITE` type products). For scheduled
              # charges, commit and credit payments, the value is `FixedProductListItem`.
              product_type: nil,
              professional_service_custom_fields: nil,
              professional_service_id: nil,
              # The quantity associated with the line item.
              quantity: nil,
              reseller_type: nil,
              scheduled_charge_custom_fields: nil,
              # ID of scheduled charge.
              scheduled_charge_id: nil,
              # The line item's start date (inclusive).
              starting_at: nil,
              sub_line_items: nil,
              subscription_custom_fields: nil,
              # Populated if the line item has a tiered price.
              tier: nil,
              # The unit price associated with the line item.
              unit_price: nil
            )
            end

            sig do
              override.returns(
                {
                  credit_type: MetronomeSDK::CreditTypeData,
                  name: String,
                  total: Float,
                  type: String,
                  applied_commit_or_credit:
                    MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit,
                  commit_custom_fields: T::Hash[Symbol, String],
                  commit_id: String,
                  commit_netsuite_item_id: String,
                  commit_netsuite_sales_order_id: String,
                  commit_segment_id: String,
                  commit_type: String,
                  custom_fields: T::Hash[Symbol, String],
                  discount_custom_fields: T::Hash[Symbol, String],
                  discount_id: String,
                  ending_before: Time,
                  group_key: String,
                  group_value: T.nilable(String),
                  is_prorated: T::Boolean,
                  list_price: MetronomeSDK::Rate,
                  metadata: String,
                  netsuite_invoice_billing_end: Time,
                  netsuite_invoice_billing_start: Time,
                  netsuite_item_id: String,
                  postpaid_commit:
                    MetronomeSDK::V1::Customers::Invoice::LineItem::PostpaidCommit,
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_custom_fields: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String],
                  product_type: String,
                  professional_service_custom_fields: T::Hash[Symbol, String],
                  professional_service_id: String,
                  quantity: Float,
                  reseller_type:
                    MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::TaggedSymbol,
                  scheduled_charge_custom_fields: T::Hash[Symbol, String],
                  scheduled_charge_id: String,
                  starting_at: Time,
                  sub_line_items:
                    T::Array[
                      MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem
                    ],
                  subscription_custom_fields: T::Hash[Symbol, String],
                  tier: MetronomeSDK::V1::Customers::Invoice::LineItem::Tier,
                  unit_price: Float
                }
              )
            end
            def to_hash
            end

            class AppliedCommitOrCredit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # Details about the credit or commit that was applied to this line item. Only
              # present on line items with product of `USAGE`, `SUBSCRIPTION` or `COMPOSITE`
              # types.
              sig do
                params(
                  id: String,
                  type:
                    MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(id:, type:)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    type:
                      MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREPAID =
                  T.let(
                    :PREPAID,
                    MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type::TaggedSymbol
                  )
                POSTPAID =
                  T.let(
                    :POSTPAID,
                    MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type::TaggedSymbol
                  )
                CREDIT =
                  T.let(
                    :CREDIT,
                    MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Customers::Invoice::LineItem::AppliedCommitOrCredit::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class PostpaidCommit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::Invoice::LineItem::PostpaidCommit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # Only present for line items paying for a postpaid commit true-up.
              sig { params(id: String).returns(T.attached_class) }
              def self.new(id:)
              end

              sig { override.returns({ id: String }) }
              def to_hash
              end
            end

            module ResellerType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AWS =
                T.let(
                  :AWS,
                  MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::TaggedSymbol
                )
              AWS_PRO_SERVICE =
                T.let(
                  :AWS_PRO_SERVICE,
                  MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::TaggedSymbol
                )
              GCP =
                T.let(
                  :GCP,
                  MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::TaggedSymbol
                )
              GCP_PRO_SERVICE =
                T.let(
                  :GCP_PRO_SERVICE,
                  MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::Customers::Invoice::LineItem::ResellerType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class SubLineItem < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem,
                    MetronomeSDK::Internal::AnyHash
                  )
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

              # The end date for the charge (for seats charges only).
              sig { returns(T.nilable(Time)) }
              attr_reader :end_date

              sig { params(end_date: Time).void }
              attr_writer :end_date

              # the unit price for this charge, present only if the charge is not tiered and the
              # quantity is nonzero
              sig { returns(T.nilable(Float)) }
              attr_reader :price

              sig { params(price: Float).void }
              attr_writer :price

              # The start date for the charge (for seats charges only).
              sig { returns(T.nilable(Time)) }
              attr_reader :start_date

              sig { params(start_date: Time).void }
              attr_writer :start_date

              # when the current tier started and ends (for tiered charges only)
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod
                  )
                )
              end
              attr_reader :tier_period

              sig do
                params(
                  tier_period:
                    MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod::OrHash
                ).void
              end
              attr_writer :tier_period

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::Tier
                    ]
                  )
                )
              end
              attr_reader :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::Tier::OrHash
                    ]
                ).void
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
                  tier_period:
                    MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod::OrHash,
                  tiers:
                    T::Array[
                      MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                custom_fields:,
                name:,
                quantity:,
                subtotal:,
                charge_id: nil,
                credit_grant_id: nil,
                # The end date for the charge (for seats charges only).
                end_date: nil,
                # the unit price for this charge, present only if the charge is not tiered and the
                # quantity is nonzero
                price: nil,
                # The start date for the charge (for seats charges only).
                start_date: nil,
                # when the current tier started and ends (for tiered charges only)
                tier_period: nil,
                tiers: nil
              )
              end

              sig do
                override.returns(
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
                    tier_period:
                      MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod,
                    tiers:
                      T::Array[
                        MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class TierPeriod < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::TierPeriod,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Time) }
                attr_accessor :starting_at

                sig { returns(T.nilable(Time)) }
                attr_reader :ending_before

                sig { params(ending_before: Time).void }
                attr_writer :ending_before

                # when the current tier started and ends (for tiered charges only)
                sig do
                  params(starting_at: Time, ending_before: Time).returns(
                    T.attached_class
                  )
                end
                def self.new(starting_at:, ending_before: nil)
                end

                sig do
                  override.returns({ starting_at: Time, ending_before: Time })
                end
                def to_hash
                end
              end

              class Tier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::V1::Customers::Invoice::LineItem::SubLineItem::Tier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :price

                sig { returns(Float) }
                attr_accessor :quantity

                # at what metric amount this tier begins
                sig { returns(Float) }
                attr_accessor :starting_at

                sig { returns(Float) }
                attr_accessor :subtotal

                sig do
                  params(
                    price: Float,
                    quantity: Float,
                    starting_at: Float,
                    subtotal: Float
                  ).returns(T.attached_class)
                end
                def self.new(
                  price:,
                  quantity:,
                  # at what metric amount this tier begins
                  starting_at:,
                  subtotal:
                )
                end

                sig do
                  override.returns(
                    {
                      price: Float,
                      quantity: Float,
                      starting_at: Float,
                      subtotal: Float
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class Tier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::Invoice::LineItem::Tier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :level

              sig { returns(String) }
              attr_accessor :starting_at

              sig { returns(T.nilable(String)) }
              attr_accessor :size

              # Populated if the line item has a tiered price.
              sig do
                params(
                  level: Float,
                  starting_at: String,
                  size: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(level:, starting_at:, size: nil)
              end

              sig do
                override.returns(
                  { level: Float, starting_at: String, size: T.nilable(String) }
                )
              end
              def to_hash
              end
            end
          end

          # This field's availability is dependent on your client's configuration.
          module BillableStatus
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Customers::Invoice::BillableStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BILLABLE =
              T.let(
                :billable,
                MetronomeSDK::V1::Customers::Invoice::BillableStatus::TaggedSymbol
              )
            UNBILLABLE =
              T.let(
                :unbillable,
                MetronomeSDK::V1::Customers::Invoice::BillableStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::Invoice::BillableStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class CorrectionRecord < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::Invoice::CorrectionRecord,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :corrected_invoice_id

            sig { returns(String) }
            attr_accessor :memo

            sig { returns(String) }
            attr_accessor :reason

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice
                )
              )
            end
            attr_reader :corrected_external_invoice

            sig do
              params(
                corrected_external_invoice:
                  MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::OrHash
              ).void
            end
            attr_writer :corrected_external_invoice

            sig do
              params(
                corrected_invoice_id: String,
                memo: String,
                reason: String,
                corrected_external_invoice:
                  MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              corrected_invoice_id:,
              memo:,
              reason:,
              corrected_external_invoice: nil
            )
            end

            sig do
              override.returns(
                {
                  corrected_invoice_id: String,
                  memo: String,
                  reason: String,
                  corrected_external_invoice:
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice
                }
              )
            end
            def to_hash
            end

            class CorrectedExternalInvoice < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                )
              end
              attr_accessor :billing_provider_type

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                )
              end
              attr_reader :external_status

              sig do
                params(
                  external_status:
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::OrSymbol
                ).void
              end
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
                  billing_provider_type:
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::OrSymbol,
                  external_status:
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::OrSymbol,
                  invoice_id: String,
                  issued_at_timestamp: Time
                ).returns(T.attached_class)
              end
              def self.new(
                billing_provider_type:,
                external_status: nil,
                invoice_id: nil,
                issued_at_timestamp: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_provider_type:
                      MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol,
                    external_status:
                      MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol,
                    invoice_id: String,
                    issued_at_timestamp: Time
                  }
                )
              end
              def to_hash
              end

              module BillingProviderType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AWS_MARKETPLACE =
                  T.let(
                    :aws_marketplace,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :stripe,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                  )
                NETSUITE =
                  T.let(
                    :netsuite,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :custom,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                  )
                AZURE_MARKETPLACE =
                  T.let(
                    :azure_marketplace,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                  )
                QUICKBOOKS_ONLINE =
                  T.let(
                    :quickbooks_online,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                  )
                WORKDAY =
                  T.let(
                    :workday,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                  )
                GCP_MARKETPLACE =
                  T.let(
                    :gcp_marketplace,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::BillingProviderType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module ExternalStatus
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DRAFT =
                  T.let(
                    :DRAFT,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                FINALIZED =
                  T.let(
                    :FINALIZED,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                PAID =
                  T.let(
                    :PAID,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                UNCOLLECTIBLE =
                  T.let(
                    :UNCOLLECTIBLE,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                VOID =
                  T.let(
                    :VOID,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                DELETED =
                  T.let(
                    :DELETED,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                PAYMENT_FAILED =
                  T.let(
                    :PAYMENT_FAILED,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                INVALID_REQUEST_ERROR =
                  T.let(
                    :INVALID_REQUEST_ERROR,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                SKIPPED =
                  T.let(
                    :SKIPPED,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                SENT =
                  T.let(
                    :SENT,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )
                QUEUED =
                  T.let(
                    :QUEUED,
                    MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Customers::Invoice::CorrectionRecord::CorrectedExternalInvoice::ExternalStatus::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class ExternalInvoice < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
              )
            end
            attr_accessor :billing_provider_type

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              )
            end
            attr_reader :external_status

            sig do
              params(
                external_status:
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::OrSymbol
              ).void
            end
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
                billing_provider_type:
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::OrSymbol,
                external_status:
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::OrSymbol,
                invoice_id: String,
                issued_at_timestamp: Time
              ).returns(T.attached_class)
            end
            def self.new(
              billing_provider_type:,
              external_status: nil,
              invoice_id: nil,
              issued_at_timestamp: nil
            )
            end

            sig do
              override.returns(
                {
                  billing_provider_type:
                    MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol,
                  external_status:
                    MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol,
                  invoice_id: String,
                  issued_at_timestamp: Time
                }
              )
            end
            def to_hash
            end

            module BillingProviderType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AWS_MARKETPLACE =
                T.let(
                  :aws_marketplace,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :stripe,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                )
              NETSUITE =
                T.let(
                  :netsuite,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                )
              AZURE_MARKETPLACE =
                T.let(
                  :azure_marketplace,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                )
              QUICKBOOKS_ONLINE =
                T.let(
                  :quickbooks_online,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                )
              WORKDAY =
                T.let(
                  :workday,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                )
              GCP_MARKETPLACE =
                T.let(
                  :gcp_marketplace,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::BillingProviderType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module ExternalStatus
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DRAFT =
                T.let(
                  :DRAFT,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              FINALIZED =
                T.let(
                  :FINALIZED,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              PAID =
                T.let(
                  :PAID,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              UNCOLLECTIBLE =
                T.let(
                  :UNCOLLECTIBLE,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              VOID =
                T.let(
                  :VOID,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              DELETED =
                T.let(
                  :DELETED,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              PAYMENT_FAILED =
                T.let(
                  :PAYMENT_FAILED,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              INVALID_REQUEST_ERROR =
                T.let(
                  :INVALID_REQUEST_ERROR,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              SKIPPED =
                T.let(
                  :SKIPPED,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              SENT =
                T.let(
                  :SENT,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )
              QUEUED =
                T.let(
                  :QUEUED,
                  MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::Customers::Invoice::ExternalInvoice::ExternalStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class InvoiceAdjustment < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::Invoice::InvoiceAdjustment,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(MetronomeSDK::CreditTypeData) }
            attr_reader :credit_type

            sig do
              params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
            end
            attr_writer :credit_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :total

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :credit_grant_custom_fields

            sig do
              params(credit_grant_custom_fields: T::Hash[Symbol, String]).void
            end
            attr_writer :credit_grant_custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :credit_grant_id

            sig { params(credit_grant_id: String).void }
            attr_writer :credit_grant_id

            sig do
              params(
                credit_type: MetronomeSDK::CreditTypeData::OrHash,
                name: String,
                total: Float,
                credit_grant_custom_fields: T::Hash[Symbol, String],
                credit_grant_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              credit_type:,
              name:,
              total:,
              credit_grant_custom_fields: nil,
              credit_grant_id: nil
            )
            end

            sig do
              override.returns(
                {
                  credit_type: MetronomeSDK::CreditTypeData,
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

          class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :fraction

            sig { returns(String) }
            attr_accessor :netsuite_reseller_id

            sig do
              returns(
                MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            end
            attr_accessor :reseller_type

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::AwsOptions
                )
              )
            end
            attr_reader :aws_options

            sig do
              params(
                aws_options:
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::AwsOptions::OrHash
              ).void
            end
            attr_writer :aws_options

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::GcpOptions
                )
              )
            end
            attr_reader :gcp_options

            sig do
              params(
                gcp_options:
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::GcpOptions::OrHash
              ).void
            end
            attr_writer :gcp_options

            # Only present for contract invoices with reseller royalties.
            sig do
              params(
                fraction: String,
                netsuite_reseller_id: String,
                reseller_type:
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType::OrSymbol,
                aws_options:
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::AwsOptions::OrHash,
                gcp_options:
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::GcpOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              fraction:,
              netsuite_reseller_id:,
              reseller_type:,
              aws_options: nil,
              gcp_options: nil
            )
            end

            sig do
              override.returns(
                {
                  fraction: String,
                  netsuite_reseller_id: String,
                  reseller_type:
                    MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType::TaggedSymbol,
                  aws_options:
                    MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::AwsOptions,
                  gcp_options:
                    MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::GcpOptions
                }
              )
            end
            def to_hash
            end

            module ResellerType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AWS =
                T.let(
                  :AWS,
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType::TaggedSymbol
                )
              AWS_PRO_SERVICE =
                T.let(
                  :AWS_PRO_SERVICE,
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType::TaggedSymbol
                )
              GCP =
                T.let(
                  :GCP,
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType::TaggedSymbol
                )
              GCP_PRO_SERVICE =
                T.let(
                  :GCP_PRO_SERVICE,
                  MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::ResellerType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class AwsOptions < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::AwsOptions,
                    MetronomeSDK::Internal::AnyHash
                  )
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
                params(
                  aws_account_number: String,
                  aws_offer_id: String,
                  aws_payer_reference_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                aws_account_number: nil,
                aws_offer_id: nil,
                aws_payer_reference_id: nil
              )
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

            class GcpOptions < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::Invoice::ResellerRoyalty::GcpOptions,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :gcp_account_id

              sig { params(gcp_account_id: String).void }
              attr_writer :gcp_account_id

              sig { returns(T.nilable(String)) }
              attr_reader :gcp_offer_id

              sig { params(gcp_offer_id: String).void }
              attr_writer :gcp_offer_id

              sig do
                params(gcp_account_id: String, gcp_offer_id: String).returns(
                  T.attached_class
                )
              end
              def self.new(gcp_account_id: nil, gcp_offer_id: nil)
              end

              sig do
                override.returns(
                  { gcp_account_id: String, gcp_offer_id: String }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
