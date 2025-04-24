# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class ContractGetEditHistoryResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data>]
        required :data,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data] }

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute [r] add_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit>, nil]
          optional :add_commits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit>]
          #   attr_writer :add_commits

          # @!attribute [r] add_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit>, nil]
          optional :add_credits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit>]
          #   attr_writer :add_credits

          # @!attribute [r] add_discounts
          #
          #   @return [Array<MetronomeSDK::Models::Discount>, nil]
          optional :add_discounts, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Discount] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::Discount>]
          #   attr_writer :add_discounts

          # @!attribute [r] add_overrides
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride>, nil]
          optional :add_overrides,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride>]
          #   attr_writer :add_overrides

          # @!attribute [r] add_pro_services
          #
          #   @return [Array<MetronomeSDK::Models::ProService>, nil]
          optional :add_pro_services, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ProService] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::ProService>]
          #   attr_writer :add_pro_services

          # @!attribute [r] add_recurring_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit>, nil]
          optional :add_recurring_commits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit>]
          #   attr_writer :add_recurring_commits

          # @!attribute [r] add_recurring_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit>, nil]
          optional :add_recurring_credits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit>]
          #   attr_writer :add_recurring_credits

          # @!attribute [r] add_reseller_royalties
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty>, nil]
          optional :add_reseller_royalties,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty>]
          #   attr_writer :add_reseller_royalties

          # @!attribute [r] add_scheduled_charges
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge>, nil]
          optional :add_scheduled_charges,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge>]
          #   attr_writer :add_scheduled_charges

          # @!attribute [r] add_subscriptions
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription>, nil]
          optional :add_subscriptions,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription>]
          #   attr_writer :add_subscriptions

          # @!attribute [r] add_usage_filters
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter>, nil]
          optional :add_usage_filters,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter>]
          #   attr_writer :add_usage_filters

          # @!attribute [r] archive_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit>, nil]
          optional :archive_commits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit>]
          #   attr_writer :archive_commits

          # @!attribute [r] archive_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit>, nil]
          optional :archive_credits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit>]
          #   attr_writer :archive_credits

          # @!attribute [r] archive_scheduled_charges
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge>, nil]
          optional :archive_scheduled_charges,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge>]
          #   attr_writer :archive_scheduled_charges

          # @!attribute [r] remove_overrides
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride>, nil]
          optional :remove_overrides,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride>]
          #   attr_writer :remove_overrides

          # @!attribute [r] timestamp
          #
          #   @return [Time, nil]
          optional :timestamp, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :timestamp

          # @!attribute [r] update_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit>, nil]
          optional :update_commits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit>]
          #   attr_writer :update_commits

          # @!attribute [r] update_contract_end_date
          #
          #   @return [Time, nil]
          optional :update_contract_end_date, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :update_contract_end_date

          # @!attribute [r] update_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit>, nil]
          optional :update_credits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit>]
          #   attr_writer :update_credits

          # @!attribute [r] update_discounts
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount>, nil]
          optional :update_discounts,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount>]
          #   attr_writer :update_discounts

          # @!attribute [r] update_refund_invoices
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice>, nil]
          optional :update_refund_invoices,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice>]
          #   attr_writer :update_refund_invoices

          # @!attribute [r] update_scheduled_charges
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge>, nil]
          optional :update_scheduled_charges,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge>]
          #   attr_writer :update_scheduled_charges

          # @!attribute [r] update_subscriptions
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription>, nil]
          optional :update_subscriptions,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription>]
          #   attr_writer :update_subscriptions

          # @!parse
          #   # @param id [String]
          #   # @param add_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit>]
          #   # @param add_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit>]
          #   # @param add_discounts [Array<MetronomeSDK::Models::Discount>]
          #   # @param add_overrides [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride>]
          #   # @param add_pro_services [Array<MetronomeSDK::Models::ProService>]
          #   # @param add_recurring_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit>]
          #   # @param add_recurring_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit>]
          #   # @param add_reseller_royalties [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty>]
          #   # @param add_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge>]
          #   # @param add_subscriptions [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription>]
          #   # @param add_usage_filters [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter>]
          #   # @param archive_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit>]
          #   # @param archive_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit>]
          #   # @param archive_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge>]
          #   # @param remove_overrides [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride>]
          #   # @param timestamp [Time]
          #   # @param update_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit>]
          #   # @param update_contract_end_date [Time]
          #   # @param update_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit>]
          #   # @param update_discounts [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount>]
          #   # @param update_refund_invoices [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice>]
          #   # @param update_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge>]
          #   # @param update_subscriptions [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription>]
          #   #
          #   def initialize(
          #     id:,
          #     add_commits: nil,
          #     add_credits: nil,
          #     add_discounts: nil,
          #     add_overrides: nil,
          #     add_pro_services: nil,
          #     add_recurring_commits: nil,
          #     add_recurring_credits: nil,
          #     add_reseller_royalties: nil,
          #     add_scheduled_charges: nil,
          #     add_subscriptions: nil,
          #     add_usage_filters: nil,
          #     archive_commits: nil,
          #     archive_credits: nil,
          #     archive_scheduled_charges: nil,
          #     remove_overrides: nil,
          #     timestamp: nil,
          #     update_commits: nil,
          #     update_contract_end_date: nil,
          #     update_credits: nil,
          #     update_discounts: nil,
          #     update_refund_invoices: nil,
          #     update_scheduled_charges: nil,
          #     update_subscriptions: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class AddCommit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type]
            required :type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type }

            # @!attribute [r] access_schedule
            #   The schedule that the customer will gain access to the credits purposed with
            #     this commit.
            #
            #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
            optional :access_schedule, -> { MetronomeSDK::Models::ScheduleDuration }

            # @!parse
            #   # @return [MetronomeSDK::Models::ScheduleDuration]
            #   attr_writer :access_schedule

            # @!attribute [r] applicable_product_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] invoice_schedule
            #   The schedule that the customer will be invoiced for this commit.
            #
            #   @return [MetronomeSDK::Models::SchedulePointInTime, nil]
            optional :invoice_schedule, -> { MetronomeSDK::Models::SchedulePointInTime }

            # @!parse
            #   # @return [MetronomeSDK::Models::SchedulePointInTime]
            #   attr_writer :invoice_schedule

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] priority
            #   If multiple credits or commits are applicable, the one with the lower priority
            #     will apply first.
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :priority

            # @!attribute [r] rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType]
            #   attr_writer :rate_type

            # @!attribute [r] rollover_fraction
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :rollover_fraction

            # @!attribute [r] salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :salesforce_opportunity_id

            # @!parse
            #   # @param id [String]
            #   # @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product]
            #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type]
            #   # @param access_schedule [MetronomeSDK::Models::ScheduleDuration]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param description [String]
            #   # @param invoice_schedule [MetronomeSDK::Models::SchedulePointInTime]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param priority [Float]
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType]
            #   # @param rollover_fraction [Float]
            #   # @param salesforce_opportunity_id [String]
            #   #
            #   def initialize(
            #     id:,
            #     product:,
            #     type:,
            #     access_schedule: nil,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     description: nil,
            #     invoice_schedule: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     priority: nil,
            #     rate_type: nil,
            #     rollover_fraction: nil,
            #     salesforce_opportunity_id: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case type
            # in :PREPAID
            #   # ...
            # in :POSTPAID
            #   # ...
            # end
            # ```
            class Type < MetronomeSDK::Enum
              PREPAID = :PREPAID
              POSTPAID = :POSTPAID

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
            # case rate_type
            # in :COMMIT_RATE
            #   # ...
            # in :LIST_RATE
            #   # ...
            # end
            # ```
            class RateType < MetronomeSDK::Enum
              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class AddCredit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type]
            required :type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type }

            # @!attribute [r] access_schedule
            #   The schedule that the customer will gain access to the credits.
            #
            #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
            optional :access_schedule, -> { MetronomeSDK::Models::ScheduleDuration }

            # @!parse
            #   # @return [MetronomeSDK::Models::ScheduleDuration]
            #   attr_writer :access_schedule

            # @!attribute [r] applicable_product_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] priority
            #   If multiple credits or commits are applicable, the one with the lower priority
            #     will apply first.
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :priority

            # @!attribute [r] salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :salesforce_opportunity_id

            # @!parse
            #   # @param id [String]
            #   # @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product]
            #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type]
            #   # @param access_schedule [MetronomeSDK::Models::ScheduleDuration]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param description [String]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param priority [Float]
            #   # @param salesforce_opportunity_id [String]
            #   #
            #   def initialize(
            #     id:,
            #     product:,
            #     type:,
            #     access_schedule: nil,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     description: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     priority: nil,
            #     salesforce_opportunity_id: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case type
            # in :CREDIT
            #   # ...
            # end
            # ```
            class Type < MetronomeSDK::Enum
              CREDIT = :CREDIT

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class AddOverride < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] entitled
            #
            #   @return [Boolean, nil]
            optional :entitled, MetronomeSDK::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :entitled

            # @!attribute [r] is_commit_specific
            #
            #   @return [Boolean, nil]
            optional :is_commit_specific, MetronomeSDK::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_commit_specific

            # @!attribute [r] multiplier
            #
            #   @return [Float, nil]
            optional :multiplier, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :multiplier

            # @!attribute [r] override_specifiers
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier>, nil]
            optional :override_specifiers,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier>]
            #   attr_writer :override_specifiers

            # @!attribute [r] override_tiers
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier>, nil]
            optional :override_tiers,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier>]
            #   attr_writer :override_tiers

            # @!attribute [r] overwrite_rate
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate, nil]
            optional :overwrite_rate,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate]
            #   attr_writer :overwrite_rate

            # @!attribute [r] priority
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :priority

            # @!attribute [r] product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product, nil]
            optional :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product]
            #   attr_writer :product

            # @!attribute [r] target
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target, nil]
            optional :target,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target]
            #   attr_writer :target

            # @!attribute [r] type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type, nil]
            optional :type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type]
            #   attr_writer :type

            # @!parse
            #   # @param id [String]
            #   # @param starting_at [Time]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param ending_before [Time]
            #   # @param entitled [Boolean]
            #   # @param is_commit_specific [Boolean]
            #   # @param multiplier [Float]
            #   # @param override_specifiers [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier>]
            #   # @param override_tiers [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier>]
            #   # @param overwrite_rate [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate]
            #   # @param priority [Float]
            #   # @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product]
            #   # @param target [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target]
            #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type]
            #   #
            #   def initialize(
            #     id:,
            #     starting_at:,
            #     applicable_product_tags: nil,
            #     ending_before: nil,
            #     entitled: nil,
            #     is_commit_specific: nil,
            #     multiplier: nil,
            #     override_specifiers: nil,
            #     override_tiers: nil,
            #     overwrite_rate: nil,
            #     priority: nil,
            #     product: nil,
            #     target: nil,
            #     type: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class OverrideSpecifier < MetronomeSDK::BaseModel
              # @!attribute [r] billing_frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency, nil]
              optional :billing_frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency }

              # @!parse
              #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency]
              #   attr_writer :billing_frequency

              # @!attribute [r] commit_ids
              #
              #   @return [Array<String>, nil]
              optional :commit_ids, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :commit_ids

              # @!attribute [r] presentation_group_values
              #
              #   @return [Hash{Symbol=>String, nil}, nil]
              optional :presentation_group_values, MetronomeSDK::HashOf[String, nil?: true]

              # @!parse
              #   # @return [Hash{Symbol=>String, nil}]
              #   attr_writer :presentation_group_values

              # @!attribute [r] pricing_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::HashOf[String]

              # @!parse
              #   # @return [Hash{Symbol=>String}]
              #   attr_writer :pricing_group_values

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

              # @!attribute [r] recurring_commit_ids
              #
              #   @return [Array<String>, nil]
              optional :recurring_commit_ids, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :recurring_commit_ids

              # @!attribute [r] recurring_credit_ids
              #
              #   @return [Array<String>, nil]
              optional :recurring_credit_ids, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :recurring_credit_ids

              # @!parse
              #   # @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency]
              #   # @param commit_ids [Array<String>]
              #   # @param presentation_group_values [Hash{Symbol=>String, nil}]
              #   # @param pricing_group_values [Hash{Symbol=>String}]
              #   # @param product_id [String]
              #   # @param product_tags [Array<String>]
              #   # @param recurring_commit_ids [Array<String>]
              #   # @param recurring_credit_ids [Array<String>]
              #   #
              #   def initialize(
              #     billing_frequency: nil,
              #     commit_ids: nil,
              #     presentation_group_values: nil,
              #     pricing_group_values: nil,
              #     product_id: nil,
              #     product_tags: nil,
              #     recurring_commit_ids: nil,
              #     recurring_credit_ids: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case billing_frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :ANNUAL
              #   # ...
              # end
              # ```
              class BillingFrequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class OverrideTier < MetronomeSDK::BaseModel
              # @!attribute multiplier
              #
              #   @return [Float]
              required :multiplier, Float

              # @!attribute [r] size
              #
              #   @return [Float, nil]
              optional :size, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :size

              # @!parse
              #   # @param multiplier [Float]
              #   # @param size [Float]
              #   #
              #   def initialize(multiplier:, size: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class OverwriteRate < MetronomeSDK::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType }

              # @!attribute [r] credit_type
              #
              #   @return [MetronomeSDK::Models::CreditTypeData, nil]
              optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

              # @!parse
              #   # @return [MetronomeSDK::Models::CreditTypeData]
              #   attr_writer :credit_type

              # @!attribute [r] custom_rate
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #     processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :custom_rate, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :custom_rate

              # @!attribute [r] is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #     set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :is_prorated

              # @!attribute [r] price
              #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :price

              # @!attribute [r] quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::Tier>]
              #   attr_writer :tiers

              # @!parse
              #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType]
              #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
              #   # @param custom_rate [Hash{Symbol=>Object}]
              #   # @param is_prorated [Boolean]
              #   # @param price [Float]
              #   # @param quantity [Float]
              #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
              #   #
              #   def initialize(
              #     rate_type:,
              #     credit_type: nil,
              #     custom_rate: nil,
              #     is_prorated: nil,
              #     price: nil,
              #     quantity: nil,
              #     tiers: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case rate_type
              # in :FLAT
              #   # ...
              # in :PERCENTAGE
              #   # ...
              # in :SUBSCRIPTION
              #   # ...
              # in :TIERED
              #   # ...
              # in :CUSTOM
              #   # ...
              # end
              # ```
              class RateType < MetronomeSDK::Enum
                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case target
            # in :COMMIT_RATE
            #   # ...
            # in :LIST_RATE
            #   # ...
            # end
            # ```
            class Target < MetronomeSDK::Enum
              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

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
            # case type
            # in :OVERWRITE
            #   # ...
            # in :MULTIPLIER
            #   # ...
            # in :TIERED
            #   # ...
            # end
            # ```
            class Type < MetronomeSDK::Enum
              OVERWRITE = :OVERWRITE
              MULTIPLIER = :MULTIPLIER
              TIERED = :TIERED

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class AddRecurringCommit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #   The amount of commit to grant.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount]
            required :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount }

            # @!attribute commit_duration
            #   The amount of time the created commits will be valid for
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration]
            required :commit_duration,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration }

            # @!attribute priority
            #   Will be passed down to the individual commits
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product }

            # @!attribute rate_type
            #   Whether the created commits will use the commit rate or list rate
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType }

            # @!attribute starting_at
            #   Determines the start time for the first commit
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] applicable_product_ids
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] contract
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract, nil]
            optional :contract,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract]
            #   attr_writer :contract

            # @!attribute [r] description
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] ending_before
            #   Determines when the contract will stop creating recurring commits. Optional
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] invoice_amount
            #   The amount the customer should be billed for the commit. Not required.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount, nil]
            optional :invoice_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount]
            #   attr_writer :invoice_amount

            # @!attribute [r] name
            #   Displayed on invoices. Will be passed through to the individual commits
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] proration
            #   Determines whether the first and last commit will be prorated. If not provided,
            #     the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration]
            #   attr_writer :proration

            # @!attribute [r] recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #     The commits will be created on the usage invoice frequency. If provided: - The
            #     period defined in the duration will correspond to this frequency. - Commits will
            #     be created aligned with the recurring commit's start_date rather than the usage
            #     invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency]
            #   attr_writer :recurrence_frequency

            # @!attribute [r] rollover_fraction
            #   Will be passed down to the individual commits. This controls how much of an
            #     individual unexpired commit will roll over upon contract transition. Must be
            #     between 0 and 1.
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :rollover_fraction

            # @!parse
            #   # @param id [String]
            #   # @param access_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount]
            #   # @param commit_duration [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration]
            #   # @param priority [Float]
            #   # @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product]
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType]
            #   # @param starting_at [Time]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param contract [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract]
            #   # @param description [String]
            #   # @param ending_before [Time]
            #   # @param invoice_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param proration [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration]
            #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency]
            #   # @param rollover_fraction [Float]
            #   #
            #   def initialize(
            #     id:,
            #     access_amount:,
            #     commit_duration:,
            #     priority:,
            #     product:,
            #     rate_type:,
            #     starting_at:,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     contract: nil,
            #     description: nil,
            #     ending_before: nil,
            #     invoice_amount: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     proration: nil,
            #     recurrence_frequency: nil,
            #     rollover_fraction: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AccessAmount < MetronomeSDK::BaseModel
              # @!attribute credit_type_id
              #
              #   @return [String]
              required :credit_type_id, String

              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!parse
              #   # The amount of commit to grant.
              #   #
              #   # @param credit_type_id [String]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class CommitDuration < MetronomeSDK::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute [r] unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit }

              # @!parse
              #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit]
              #   attr_writer :unit

              # @!parse
              #   # The amount of time the created commits will be valid for
              #   #
              #   # @param value [Float]
              #   # @param unit [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit]
              #   #
              #   def initialize(value:, unit: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case unit
              # in :PERIODS
              #   # ...
              # end
              # ```
              class Unit < MetronomeSDK::Enum
                PERIODS = :PERIODS

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # Whether the created commits will use the commit rate or list rate
            #
            # @example
            # ```ruby
            # case rate_type
            # in :COMMIT_RATE
            #   # ...
            # in :LIST_RATE
            #   # ...
            # end
            # ```
            class RateType < MetronomeSDK::Enum
              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class Contract < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class InvoiceAmount < MetronomeSDK::BaseModel
              # @!attribute credit_type_id
              #
              #   @return [String]
              required :credit_type_id, String

              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!parse
              #   # The amount the customer should be billed for the commit. Not required.
              #   #
              #   # @param credit_type_id [String]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # Determines whether the first and last commit will be prorated. If not provided,
            #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            # @example
            # ```ruby
            # case proration
            # in :NONE
            #   # ...
            # in :FIRST
            #   # ...
            # in :LAST
            #   # ...
            # in :FIRST_AND_LAST
            #   # ...
            # end
            # ```
            class Proration < MetronomeSDK::Enum
              NONE = :NONE
              FIRST = :FIRST
              LAST = :LAST
              FIRST_AND_LAST = :FIRST_AND_LAST

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @abstract
            #
            # The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's start_date rather than the usage
            #   invoice dates.
            #
            # @example
            # ```ruby
            # case recurrence_frequency
            # in :MONTHLY
            #   # ...
            # in :QUARTERLY
            #   # ...
            # in :ANNUAL
            #   # ...
            # in :WEEKLY
            #   # ...
            # end
            # ```
            class RecurrenceFrequency < MetronomeSDK::Enum
              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class AddRecurringCredit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #   The amount of commit to grant.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount]
            required :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount }

            # @!attribute commit_duration
            #   The amount of time the created commits will be valid for
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration]
            required :commit_duration,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration }

            # @!attribute priority
            #   Will be passed down to the individual commits
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product }

            # @!attribute rate_type
            #   Whether the created commits will use the commit rate or list rate
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType }

            # @!attribute starting_at
            #   Determines the start time for the first commit
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] applicable_product_ids
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] contract
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract, nil]
            optional :contract,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract]
            #   attr_writer :contract

            # @!attribute [r] description
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] ending_before
            #   Determines when the contract will stop creating recurring commits. Optional
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] name
            #   Displayed on invoices. Will be passed through to the individual commits
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] proration
            #   Determines whether the first and last commit will be prorated. If not provided,
            #     the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration]
            #   attr_writer :proration

            # @!attribute [r] recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #     The commits will be created on the usage invoice frequency. If provided: - The
            #     period defined in the duration will correspond to this frequency. - Commits will
            #     be created aligned with the recurring commit's start_date rather than the usage
            #     invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency]
            #   attr_writer :recurrence_frequency

            # @!attribute [r] rollover_fraction
            #   Will be passed down to the individual commits. This controls how much of an
            #     individual unexpired commit will roll over upon contract transition. Must be
            #     between 0 and 1.
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :rollover_fraction

            # @!parse
            #   # @param id [String]
            #   # @param access_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount]
            #   # @param commit_duration [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration]
            #   # @param priority [Float]
            #   # @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product]
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType]
            #   # @param starting_at [Time]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param contract [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract]
            #   # @param description [String]
            #   # @param ending_before [Time]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param proration [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration]
            #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency]
            #   # @param rollover_fraction [Float]
            #   #
            #   def initialize(
            #     id:,
            #     access_amount:,
            #     commit_duration:,
            #     priority:,
            #     product:,
            #     rate_type:,
            #     starting_at:,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     contract: nil,
            #     description: nil,
            #     ending_before: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     proration: nil,
            #     recurrence_frequency: nil,
            #     rollover_fraction: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AccessAmount < MetronomeSDK::BaseModel
              # @!attribute credit_type_id
              #
              #   @return [String]
              required :credit_type_id, String

              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!parse
              #   # The amount of commit to grant.
              #   #
              #   # @param credit_type_id [String]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class CommitDuration < MetronomeSDK::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute [r] unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit }

              # @!parse
              #   # @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit]
              #   attr_writer :unit

              # @!parse
              #   # The amount of time the created commits will be valid for
              #   #
              #   # @param value [Float]
              #   # @param unit [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit]
              #   #
              #   def initialize(value:, unit: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case unit
              # in :PERIODS
              #   # ...
              # end
              # ```
              class Unit < MetronomeSDK::Enum
                PERIODS = :PERIODS

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # Whether the created commits will use the commit rate or list rate
            #
            # @example
            # ```ruby
            # case rate_type
            # in :COMMIT_RATE
            #   # ...
            # in :LIST_RATE
            #   # ...
            # end
            # ```
            class RateType < MetronomeSDK::Enum
              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class Contract < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # Determines whether the first and last commit will be prorated. If not provided,
            #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            # @example
            # ```ruby
            # case proration
            # in :NONE
            #   # ...
            # in :FIRST
            #   # ...
            # in :LAST
            #   # ...
            # in :FIRST_AND_LAST
            #   # ...
            # end
            # ```
            class Proration < MetronomeSDK::Enum
              NONE = :NONE
              FIRST = :FIRST
              LAST = :LAST
              FIRST_AND_LAST = :FIRST_AND_LAST

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @abstract
            #
            # The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's start_date rather than the usage
            #   invoice dates.
            #
            # @example
            # ```ruby
            # case recurrence_frequency
            # in :MONTHLY
            #   # ...
            # in :QUARTERLY
            #   # ...
            # in :ANNUAL
            #   # ...
            # in :WEEKLY
            #   # ...
            # end
            # ```
            class RecurrenceFrequency < MetronomeSDK::Enum
              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class AddResellerRoyalty < MetronomeSDK::BaseModel
            # @!attribute reseller_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType }

            # @!attribute [r] applicable_product_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

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

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time, nil?: true

            # @!attribute [r] fraction
            #
            #   @return [Float, nil]
            optional :fraction, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :fraction

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

            # @!attribute [r] netsuite_reseller_id
            #
            #   @return [String, nil]
            optional :netsuite_reseller_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_reseller_id

            # @!attribute [r] reseller_contract_value
            #
            #   @return [Float, nil]
            optional :reseller_contract_value, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :reseller_contract_value

            # @!attribute [r] starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :starting_at

            # @!parse
            #   # @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param aws_account_number [String]
            #   # @param aws_offer_id [String]
            #   # @param aws_payer_reference_id [String]
            #   # @param ending_before [Time, nil]
            #   # @param fraction [Float]
            #   # @param gcp_account_id [String]
            #   # @param gcp_offer_id [String]
            #   # @param netsuite_reseller_id [String]
            #   # @param reseller_contract_value [Float]
            #   # @param starting_at [Time]
            #   #
            #   def initialize(
            #     reseller_type:,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     aws_account_number: nil,
            #     aws_offer_id: nil,
            #     aws_payer_reference_id: nil,
            #     ending_before: nil,
            #     fraction: nil,
            #     gcp_account_id: nil,
            #     gcp_offer_id: nil,
            #     netsuite_reseller_id: nil,
            #     reseller_contract_value: nil,
            #     starting_at: nil,
            #     **
            #   )
            #     super
            #   end

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
          end

          class AddScheduledCharge < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product }

            # @!attribute schedule
            #
            #   @return [MetronomeSDK::Models::SchedulePointInTime]
            required :schedule, -> { MetronomeSDK::Models::SchedulePointInTime }

            # @!attribute [r] name
            #   displayed on invoices
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!parse
            #   # @param id [String]
            #   # @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product]
            #   # @param schedule [MetronomeSDK::Models::SchedulePointInTime]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   #
            #   def initialize(id:, product:, schedule:, name: nil, netsuite_sales_order_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          class AddSubscription < MetronomeSDK::BaseModel
            # @!attribute collection_schedule
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule]
            required :collection_schedule,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule }

            # @!attribute proration
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration]
            required :proration,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration }

            # @!attribute quantity_schedule
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule>]
            required :quantity_schedule,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule] }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute subscription_rate
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate]
            required :subscription_rate,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate }

            # @!attribute [r] id
            #
            #   @return [String, nil]
            optional :id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :id

            # @!attribute [r] custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :custom_fields

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] fiat_credit_type_id
            #
            #   @return [String, nil]
            optional :fiat_credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :fiat_credit_type_id

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!parse
            #   # @param collection_schedule [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::CollectionSchedule]
            #   # @param proration [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration]
            #   # @param quantity_schedule [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule>]
            #   # @param starting_at [Time]
            #   # @param subscription_rate [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate]
            #   # @param id [String]
            #   # @param custom_fields [Hash{Symbol=>String}]
            #   # @param description [String]
            #   # @param ending_before [Time]
            #   # @param fiat_credit_type_id [String]
            #   # @param name [String]
            #   #
            #   def initialize(
            #     collection_schedule:,
            #     proration:,
            #     quantity_schedule:,
            #     starting_at:,
            #     subscription_rate:,
            #     id: nil,
            #     custom_fields: nil,
            #     description: nil,
            #     ending_before: nil,
            #     fiat_credit_type_id: nil,
            #     name: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case collection_schedule
            # in :ADVANCE
            #   # ...
            # in :ARREARS
            #   # ...
            # end
            # ```
            class CollectionSchedule < MetronomeSDK::Enum
              ADVANCE = :ADVANCE
              ARREARS = :ARREARS

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class Proration < MetronomeSDK::BaseModel
              # @!attribute invoice_behavior
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior]
              required :invoice_behavior,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior }

              # @!attribute is_prorated
              #
              #   @return [Boolean]
              required :is_prorated, MetronomeSDK::BooleanModel

              # @!parse
              #   # @param invoice_behavior [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration::InvoiceBehavior]
              #   # @param is_prorated [Boolean]
              #   #
              #   def initialize(invoice_behavior:, is_prorated:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case invoice_behavior
              # in :BILL_IMMEDIATELY
              #   # ...
              # in :BILL_ON_NEXT_COLLECTION_DATE
              #   # ...
              # end
              # ```
              class InvoiceBehavior < MetronomeSDK::Enum
                BILL_IMMEDIATELY = :BILL_IMMEDIATELY
                BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class QuantitySchedule < MetronomeSDK::BaseModel
              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

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
              #   # @param quantity [Float]
              #   # @param starting_at [Time]
              #   # @param ending_before [Time]
              #   #
              #   def initialize(quantity:, starting_at:, ending_before: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class SubscriptionRate < MetronomeSDK::BaseModel
              # @!attribute billing_frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency]
              required :billing_frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency }

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product]
              required :product,
                       -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product }

              # @!parse
              #   # @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::BillingFrequency]
              #   # @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product]
              #   #
              #   def initialize(billing_frequency:, product:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case billing_frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :ANNUAL
              #   # ...
              # in :WEEKLY
              #   # ...
              # end
              # ```
              class BillingFrequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end

              class Product < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!parse
                #   # @param id [String]
                #   # @param name [String]
                #   #
                #   def initialize(id:, name:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end
            end
          end

          class AddUsageFilter < MetronomeSDK::BaseModel
            # @!attribute group_key
            #
            #   @return [String]
            required :group_key, String

            # @!attribute group_values
            #
            #   @return [Array<String>]
            required :group_values, MetronomeSDK::ArrayOf[String]

            # @!attribute starting_at
            #   This will match contract starting_at value if usage filter is active from the
            #     beginning of the contract.
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] ending_before
            #   This will match contract ending_before value if usage filter is active until the
            #     end of the contract. It will be undefined if the contract is open-ended.
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!parse
            #   # @param group_key [String]
            #   # @param group_values [Array<String>]
            #   # @param starting_at [Time]
            #   # @param ending_before [Time]
            #   #
            #   def initialize(group_key:, group_values:, starting_at:, ending_before: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class ArchiveCommit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!parse
            #   # @param id [String]
            #   #
            #   def initialize(id:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class ArchiveCredit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!parse
            #   # @param id [String]
            #   #
            #   def initialize(id:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class ArchiveScheduledCharge < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!parse
            #   # @param id [String]
            #   #
            #   def initialize(id:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class RemoveOverride < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!parse
            #   # @param id [String]
            #   #
            #   def initialize(id:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class UpdateCommit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute [r] access_schedule
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule, nil]
            optional :access_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule]
            #   attr_writer :access_schedule

            # @!attribute applicable_product_ids
            #   Which products the commit applies to. If both applicable_product_ids and
            #     applicable_product_tags are not provided, the commit applies to all products.
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String], nil?: true

            # @!attribute applicable_product_tags
            #   Which tags the commit applies to. If both applicable_product_ids and
            #     applicable_product_tags are not provided, the commit applies to all products.
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String], nil?: true

            # @!attribute [r] invoice_schedule
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule, nil]
            optional :invoice_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule]
            #   attr_writer :invoice_schedule

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String, nil?: true

            # @!attribute [r] product_id
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :product_id

            # @!attribute rollover_fraction
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float, nil?: true

            # @!parse
            #   # @param id [String]
            #   # @param access_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule]
            #   # @param applicable_product_ids [Array<String>, nil]
            #   # @param applicable_product_tags [Array<String>, nil]
            #   # @param invoice_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String, nil]
            #   # @param product_id [String]
            #   # @param rollover_fraction [Float, nil]
            #   #
            #   def initialize(
            #     id:,
            #     access_schedule: nil,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     invoice_schedule: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     product_id: nil,
            #     rollover_fraction: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AccessSchedule < MetronomeSDK::BaseModel
              # @!attribute [r] add_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem>, nil]
              optional :add_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem>]
              #   attr_writer :add_schedule_items

              # @!attribute [r] remove_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem>, nil]
              optional :remove_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem>]
              #   attr_writer :remove_schedule_items

              # @!attribute [r] update_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem>, nil]
              optional :update_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem>]
              #   attr_writer :update_schedule_items

              # @!parse
              #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem>]
              #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem>]
              #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem>]
              #   #
              #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              class AddScheduleItem < MetronomeSDK::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute ending_before
                #   RFC 3339 timestamp (exclusive)
                #
                #   @return [Time]
                required :ending_before, Time

                # @!attribute starting_at
                #   RFC 3339 timestamp (inclusive)
                #
                #   @return [Time]
                required :starting_at, Time

                # @!parse
                #   # @param amount [Float]
                #   # @param ending_before [Time]
                #   # @param starting_at [Time]
                #   #
                #   def initialize(amount:, ending_before:, starting_at:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class RemoveScheduleItem < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!parse
                #   # @param id [String]
                #   #
                #   def initialize(id:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class UpdateScheduleItem < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute [r] amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :amount

                # @!attribute [r] ending_before
                #   RFC 3339 timestamp (exclusive)
                #
                #   @return [Time, nil]
                optional :ending_before, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :ending_before

                # @!attribute [r] starting_at
                #   RFC 3339 timestamp (inclusive)
                #
                #   @return [Time, nil]
                optional :starting_at, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :starting_at

                # @!parse
                #   # @param id [String]
                #   # @param amount [Float]
                #   # @param ending_before [Time]
                #   # @param starting_at [Time]
                #   #
                #   def initialize(id:, amount: nil, ending_before: nil, starting_at: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end
            end

            class InvoiceSchedule < MetronomeSDK::BaseModel
              # @!attribute [r] add_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem>, nil]
              optional :add_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem>]
              #   attr_writer :add_schedule_items

              # @!attribute [r] remove_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>, nil]
              optional :remove_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>]
              #   attr_writer :remove_schedule_items

              # @!attribute [r] update_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>, nil]
              optional :update_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>]
              #   attr_writer :update_schedule_items

              # @!parse
              #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem>]
              #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>]
              #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>]
              #   #
              #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              class AddScheduleItem < MetronomeSDK::BaseModel
                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute [r] amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :amount

                # @!attribute [r] quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :quantity

                # @!attribute [r] unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :unit_price

                # @!parse
                #   # @param timestamp [Time]
                #   # @param amount [Float]
                #   # @param quantity [Float]
                #   # @param unit_price [Float]
                #   #
                #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class RemoveScheduleItem < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!parse
                #   # @param id [String]
                #   #
                #   def initialize(id:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class UpdateScheduleItem < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute [r] amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :amount

                # @!attribute [r] quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :quantity

                # @!attribute [r] timestamp
                #
                #   @return [Time, nil]
                optional :timestamp, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :timestamp

                # @!attribute [r] unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :unit_price

                # @!parse
                #   # @param id [String]
                #   # @param amount [Float]
                #   # @param quantity [Float]
                #   # @param timestamp [Time]
                #   # @param unit_price [Float]
                #   #
                #   def initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end
            end
          end

          class UpdateCredit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute [r] access_schedule
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule, nil]
            optional :access_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule]
            #   attr_writer :access_schedule

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String, nil?: true

            # @!attribute rollover_fraction
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float, nil?: true

            # @!parse
            #   # @param id [String]
            #   # @param access_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String, nil]
            #   # @param rollover_fraction [Float, nil]
            #   #
            #   def initialize(id:, access_schedule: nil, name: nil, netsuite_sales_order_id: nil, rollover_fraction: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AccessSchedule < MetronomeSDK::BaseModel
              # @!attribute [r] add_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem>, nil]
              optional :add_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem>]
              #   attr_writer :add_schedule_items

              # @!attribute [r] remove_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem>, nil]
              optional :remove_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem>]
              #   attr_writer :remove_schedule_items

              # @!attribute [r] update_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem>, nil]
              optional :update_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem>]
              #   attr_writer :update_schedule_items

              # @!parse
              #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem>]
              #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem>]
              #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem>]
              #   #
              #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              class AddScheduleItem < MetronomeSDK::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute ending_before
                #   RFC 3339 timestamp (exclusive)
                #
                #   @return [Time]
                required :ending_before, Time

                # @!attribute starting_at
                #   RFC 3339 timestamp (inclusive)
                #
                #   @return [Time]
                required :starting_at, Time

                # @!parse
                #   # @param amount [Float]
                #   # @param ending_before [Time]
                #   # @param starting_at [Time]
                #   #
                #   def initialize(amount:, ending_before:, starting_at:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class RemoveScheduleItem < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!parse
                #   # @param id [String]
                #   #
                #   def initialize(id:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class UpdateScheduleItem < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute [r] amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :amount

                # @!attribute [r] ending_before
                #   RFC 3339 timestamp (exclusive)
                #
                #   @return [Time, nil]
                optional :ending_before, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :ending_before

                # @!attribute [r] starting_at
                #   RFC 3339 timestamp (inclusive)
                #
                #   @return [Time, nil]
                optional :starting_at, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :starting_at

                # @!parse
                #   # @param id [String]
                #   # @param amount [Float]
                #   # @param ending_before [Time]
                #   # @param starting_at [Time]
                #   #
                #   def initialize(id:, amount: nil, ending_before: nil, starting_at: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end
            end
          end

          class UpdateDiscount < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute [r] custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :custom_fields

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] schedule
            #   Must provide either schedule_items or recurring_schedule.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule, nil]
            optional :schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule]
            #   attr_writer :schedule

            # @!parse
            #   # @param id [String]
            #   # @param custom_fields [Hash{Symbol=>String}]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule]
            #   #
            #   def initialize(id:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil, schedule: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Schedule < MetronomeSDK::BaseModel
              # @!attribute [r] credit_type_id
              #   Defaults to USD if not passed. Only USD is supported at this time.
              #
              #   @return [String, nil]
              optional :credit_type_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :credit_type_id

              # @!attribute [r] recurring_schedule
              #   Enter the unit price and quantity for the charge or instead only send the
              #     amount. If amount is sent, the unit price is assumed to be the amount and
              #     quantity is inferred to be 1.
              #
              #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule, nil]
              optional :recurring_schedule,
                       -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule }

              # @!parse
              #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule]
              #   attr_writer :recurring_schedule

              # @!attribute [r] schedule_items
              #   Either provide amount or provide both unit_price and quantity.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem>, nil]
              optional :schedule_items,
                       -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem] }

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem>]
              #   attr_writer :schedule_items

              # @!parse
              #   # Must provide either schedule_items or recurring_schedule.
              #   #
              #   # @param credit_type_id [String]
              #   # @param recurring_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule]
              #   # @param schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem>]
              #   #
              #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              class RecurringSchedule < MetronomeSDK::BaseModel
                # @!attribute amount_distribution
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution]
                required :amount_distribution,
                         enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution }

                # @!attribute ending_before
                #   RFC 3339 timestamp (exclusive).
                #
                #   @return [Time]
                required :ending_before, Time

                # @!attribute frequency
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency]
                required :frequency,
                         enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency }

                # @!attribute starting_at
                #   RFC 3339 timestamp (inclusive).
                #
                #   @return [Time]
                required :starting_at, Time

                # @!attribute [r] amount
                #   Amount for the charge. Can be provided instead of unit_price and quantity. If
                #     amount is sent, the unit_price is assumed to be the amount and quantity is
                #     inferred to be 1.
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :amount

                # @!attribute [r] quantity
                #   Quantity for the charge. Will be multiplied by unit_price to determine the
                #     amount and must be specified with unit_price. If specified amount cannot be
                #     provided.
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :quantity

                # @!attribute [r] unit_price
                #   Unit price for the charge. Will be multiplied by quantity to determine the
                #     amount and must be specified with quantity. If specified amount cannot be
                #     provided.
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :unit_price

                # @!parse
                #   # Enter the unit price and quantity for the charge or instead only send the
                #   #   amount. If amount is sent, the unit price is assumed to be the amount and
                #   #   quantity is inferred to be 1.
                #   #
                #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution]
                #   # @param ending_before [Time]
                #   # @param frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency]
                #   # @param starting_at [Time]
                #   # @param amount [Float]
                #   # @param quantity [Float]
                #   # @param unit_price [Float]
                #   #
                #   def initialize(
                #     amount_distribution:,
                #     ending_before:,
                #     frequency:,
                #     starting_at:,
                #     amount: nil,
                #     quantity: nil,
                #     unit_price: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case amount_distribution
                # in :DIVIDED
                #   # ...
                # in :DIVIDED_ROUNDED
                #   # ...
                # in :EACH
                #   # ...
                # end
                # ```
                class AmountDistribution < MetronomeSDK::Enum
                  DIVIDED = :DIVIDED
                  DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                  EACH = :EACH

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
                # case frequency
                # in :MONTHLY
                #   # ...
                # in :QUARTERLY
                #   # ...
                # in :SEMI_ANNUAL
                #   # ...
                # in :ANNUAL
                #   # ...
                # in :WEEKLY
                #   # ...
                # end
                # ```
                class Frequency < MetronomeSDK::Enum
                  MONTHLY = :MONTHLY
                  QUARTERLY = :QUARTERLY
                  SEMI_ANNUAL = :SEMI_ANNUAL
                  ANNUAL = :ANNUAL
                  WEEKLY = :WEEKLY

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class ScheduleItem < MetronomeSDK::BaseModel
                # @!attribute timestamp
                #   timestamp of the scheduled event
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute [r] amount
                #   Amount for the charge. Can be provided instead of unit_price and quantity. If
                #     amount is sent, the unit_price is assumed to be the amount and quantity is
                #     inferred to be 1.
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :amount

                # @!attribute [r] quantity
                #   Quantity for the charge. Will be multiplied by unit_price to determine the
                #     amount and must be specified with unit_price. If specified amount cannot be
                #     provided.
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :quantity

                # @!attribute [r] unit_price
                #   Unit price for the charge. Will be multiplied by quantity to determine the
                #     amount and must be specified with quantity. If specified amount cannot be
                #     provided.
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :unit_price

                # @!parse
                #   # @param timestamp [Time]
                #   # @param amount [Float]
                #   # @param quantity [Float]
                #   # @param unit_price [Float]
                #   #
                #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end
            end
          end

          class UpdateRefundInvoice < MetronomeSDK::BaseModel
            # @!attribute date
            #
            #   @return [Time]
            required :date, Time

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!parse
            #   # @param date [Time]
            #   # @param invoice_id [String]
            #   #
            #   def initialize(date:, invoice_id:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class UpdateScheduledCharge < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute [r] invoice_schedule
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule, nil]
            optional :invoice_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule]
            #   attr_writer :invoice_schedule

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String, nil?: true

            # @!parse
            #   # @param id [String]
            #   # @param invoice_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String, nil]
            #   #
            #   def initialize(id:, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class InvoiceSchedule < MetronomeSDK::BaseModel
              # @!attribute [r] add_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>, nil]
              optional :add_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>]
              #   attr_writer :add_schedule_items

              # @!attribute [r] remove_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>, nil]
              optional :remove_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>]
              #   attr_writer :remove_schedule_items

              # @!attribute [r] update_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>, nil]
              optional :update_schedule_items,
                       -> do
                         MetronomeSDK::ArrayOf[
                         MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                         ]
                       end

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>]
              #   attr_writer :update_schedule_items

              # @!parse
              #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>]
              #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>]
              #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>]
              #   #
              #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              class AddScheduleItem < MetronomeSDK::BaseModel
                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute [r] amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :amount

                # @!attribute [r] quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :quantity

                # @!attribute [r] unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :unit_price

                # @!parse
                #   # @param timestamp [Time]
                #   # @param amount [Float]
                #   # @param quantity [Float]
                #   # @param unit_price [Float]
                #   #
                #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class RemoveScheduleItem < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!parse
                #   # @param id [String]
                #   #
                #   def initialize(id:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end

              class UpdateScheduleItem < MetronomeSDK::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute [r] amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :amount

                # @!attribute [r] quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :quantity

                # @!attribute [r] timestamp
                #
                #   @return [Time, nil]
                optional :timestamp, Time

                # @!parse
                #   # @return [Time]
                #   attr_writer :timestamp

                # @!attribute [r] unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!parse
                #   # @return [Float]
                #   attr_writer :unit_price

                # @!parse
                #   # @param id [String]
                #   # @param amount [Float]
                #   # @param quantity [Float]
                #   # @param timestamp [Time]
                #   # @param unit_price [Float]
                #   #
                #   def initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
              end
            end
          end

          class UpdateSubscription < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute [r] ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] quantity_updates
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate>, nil]
            optional :quantity_updates,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate>]
            #   attr_writer :quantity_updates

            # @!parse
            #   # @param id [String]
            #   # @param ending_before [Time]
            #   # @param quantity_updates [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate>]
            #   #
            #   def initialize(id:, ending_before: nil, quantity_updates: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class QuantityUpdate < MetronomeSDK::BaseModel
              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!parse
              #   # @param quantity [Float]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(quantity:, starting_at:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
