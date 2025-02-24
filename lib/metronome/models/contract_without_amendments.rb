# frozen_string_literal: true

module Metronome
  module Models
    class ContractWithoutAmendments < Metronome::BaseModel
      # @!attribute commits
      #
      #   @return [Array<Metronome::Models::Commit>]
      required :commits, -> { Metronome::ArrayOf[Metronome::Models::Commit] }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #
      #   @return [String]
      required :created_by, String

      # @!attribute overrides
      #
      #   @return [Array<Metronome::Models::Override>]
      required :overrides, -> { Metronome::ArrayOf[Metronome::Models::Override] }

      # @!attribute scheduled_charges
      #
      #   @return [Array<Metronome::Models::ScheduledCharge>]
      required :scheduled_charges, -> { Metronome::ArrayOf[Metronome::Models::ScheduledCharge] }

      # @!attribute starting_at
      #
      #   @return [Time]
      required :starting_at, Time

      # @!attribute transitions
      #
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::Transition>]
      required :transitions, -> { Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::Transition] }

      # @!attribute usage_statement_schedule
      #
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule]
      required :usage_statement_schedule,
               -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule }

      # @!attribute [r] credits
      #
      #   @return [Array<Metronome::Models::Credit>, nil]
      optional :credits, -> { Metronome::ArrayOf[Metronome::Models::Credit] }

      # @!parse
      #   # @return [Array<Metronome::Models::Credit>]
      #   attr_writer :credits

      # @!attribute [r] discounts
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::Discount>, nil]
      optional :discounts, -> { Metronome::ArrayOf[Metronome::Models::Discount] }

      # @!parse
      #   # @return [Array<Metronome::Models::Discount>]
      #   attr_writer :discounts

      # @!attribute [r] ending_before
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :ending_before

      # @!attribute [r] name
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

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

      # @!attribute [r] professional_services
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ProService>, nil]
      optional :professional_services, -> { Metronome::ArrayOf[Metronome::Models::ProService] }

      # @!parse
      #   # @return [Array<Metronome::Models::ProService>]
      #   attr_writer :professional_services

      # @!attribute [r] rate_card_id
      #
      #   @return [String, nil]
      optional :rate_card_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :rate_card_id

      # @!attribute [r] recurring_commits
      #
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::RecurringCommit>, nil]
      optional :recurring_commits,
               -> { Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::RecurringCommit] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractWithoutAmendments::RecurringCommit>]
      #   attr_writer :recurring_commits

      # @!attribute [r] recurring_credits
      #
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::RecurringCredit>, nil]
      optional :recurring_credits,
               -> { Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::RecurringCredit] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractWithoutAmendments::RecurringCredit>]
      #   attr_writer :recurring_credits

      # @!attribute [r] reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>, nil]
      optional :reseller_royalties,
               -> { Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::ResellerRoyalty] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>]
      #   attr_writer :reseller_royalties

      # @!attribute [r] salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :salesforce_opportunity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :salesforce_opportunity_id

      # @!attribute [r] scheduled_charges_on_usage_invoices
      #   Determines which scheduled and commit charges to consolidate onto the Contract's
      #     usage invoice. The charge's `timestamp` must match the usage invoice's
      #     `ending_before` date for consolidation to occur. This field cannot be modified
      #     after a Contract has been created. If this field is omitted, charges will appear
      #     on a separate invoice from usage charges.
      #
      #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices, nil]
      optional :scheduled_charges_on_usage_invoices,
               enum: -> { Metronome::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices }

      # @!parse
      #   # @return [Symbol, Metronome::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices]
      #   attr_writer :scheduled_charges_on_usage_invoices

      # @!attribute [r] total_contract_value
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Float, nil]
      optional :total_contract_value, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :total_contract_value

      # @!attribute [r] usage_filter
      #
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageFilter, nil]
      optional :usage_filter, -> { Metronome::Models::ContractWithoutAmendments::UsageFilter }

      # @!parse
      #   # @return [Metronome::Models::ContractWithoutAmendments::UsageFilter]
      #   attr_writer :usage_filter

      # @!parse
      #   # @param commits [Array<Metronome::Models::Commit>]
      #   # @param created_at [Time]
      #   # @param created_by [String]
      #   # @param overrides [Array<Metronome::Models::Override>]
      #   # @param scheduled_charges [Array<Metronome::Models::ScheduledCharge>]
      #   # @param starting_at [Time]
      #   # @param transitions [Array<Metronome::Models::ContractWithoutAmendments::Transition>]
      #   # @param usage_statement_schedule [Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule]
      #   # @param credits [Array<Metronome::Models::Credit>]
      #   # @param discounts [Array<Metronome::Models::Discount>]
      #   # @param ending_before [Time]
      #   # @param name [String]
      #   # @param net_payment_terms_days [Float]
      #   # @param netsuite_sales_order_id [String]
      #   # @param professional_services [Array<Metronome::Models::ProService>]
      #   # @param rate_card_id [String]
      #   # @param recurring_commits [Array<Metronome::Models::ContractWithoutAmendments::RecurringCommit>]
      #   # @param recurring_credits [Array<Metronome::Models::ContractWithoutAmendments::RecurringCredit>]
      #   # @param reseller_royalties [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>]
      #   # @param salesforce_opportunity_id [String]
      #   # @param scheduled_charges_on_usage_invoices [Symbol, Metronome::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices]
      #   # @param total_contract_value [Float]
      #   # @param usage_filter [Metronome::Models::ContractWithoutAmendments::UsageFilter]
      #   #
      #   def initialize(
      #     commits:,
      #     created_at:,
      #     created_by:,
      #     overrides:,
      #     scheduled_charges:,
      #     starting_at:,
      #     transitions:,
      #     usage_statement_schedule:,
      #     credits: nil,
      #     discounts: nil,
      #     ending_before: nil,
      #     name: nil,
      #     net_payment_terms_days: nil,
      #     netsuite_sales_order_id: nil,
      #     professional_services: nil,
      #     rate_card_id: nil,
      #     recurring_commits: nil,
      #     recurring_credits: nil,
      #     reseller_royalties: nil,
      #     salesforce_opportunity_id: nil,
      #     scheduled_charges_on_usage_invoices: nil,
      #     total_contract_value: nil,
      #     usage_filter: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Transition < Metronome::BaseModel
        # @!attribute from_contract_id
        #
        #   @return [String]
        required :from_contract_id, String

        # @!attribute to_contract_id
        #
        #   @return [String]
        required :to_contract_id, String

        # @!attribute type
        #
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::Transition::Type]
        required :type, enum: -> { Metronome::Models::ContractWithoutAmendments::Transition::Type }

        # @!parse
        #   # @param from_contract_id [String]
        #   # @param to_contract_id [String]
        #   # @param type [Symbol, Metronome::Models::ContractWithoutAmendments::Transition::Type]
        #   #
        #   def initialize(from_contract_id:, to_contract_id:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case type
        # in :SUPERSEDE
        #   # ...
        # in :RENEWAL
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class UsageStatementSchedule < Metronome::BaseModel
        # @!attribute billing_anchor_date
        #   Contract usage statements follow a selected cadence based on this date.
        #
        #   @return [Time]
        required :billing_anchor_date, Time

        # @!attribute frequency
        #
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]
        required :frequency,
                 enum: -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency }

        # @!parse
        #   # @param billing_anchor_date [Time]
        #   # @param frequency [Symbol, Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]
        #   #
        #   def initialize(billing_anchor_date:, frequency:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case frequency
        # in :MONTHLY
        #   # ...
        # in :QUARTERLY
        #   # ...
        # in :ANNUAL
        #   # ...
        # end
        # ```
        class Frequency < Metronome::Enum
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

      class RecurringCommit < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount]
        required :access_amount,
                 -> { Metronome::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for
        #
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration]
        required :commit_duration,
                 -> { Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product
        #
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCommit::Product]
        required :product, -> { Metronome::Models::ContractWithoutAmendments::RecurringCommit::Product }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCommit::RateType]
        required :rate_type, enum: -> { Metronome::Models::ContractWithoutAmendments::RecurringCommit::RateType }

        # @!attribute starting_at
        #   Determines the start time for the first commit
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [r] applicable_product_ids
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_tags

        # @!attribute [r] contract
        #
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCommit::Contract, nil]
        optional :contract, -> { Metronome::Models::ContractWithoutAmendments::RecurringCommit::Contract }

        # @!parse
        #   # @return [Metronome::Models::ContractWithoutAmendments::RecurringCommit::Contract]
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
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount, nil]
        optional :invoice_amount,
                 -> { Metronome::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount }

        # @!parse
        #   # @return [Metronome::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount]
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
        #   # @param access_amount [Metronome::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount]
        #   # @param commit_duration [Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration]
        #   # @param priority [Float]
        #   # @param product [Metronome::Models::ContractWithoutAmendments::RecurringCommit::Product]
        #   # @param rate_type [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCommit::RateType]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param contract [Metronome::Models::ContractWithoutAmendments::RecurringCommit::Contract]
        #   # @param description [String]
        #   # @param ending_before [Time]
        #   # @param invoice_amount [Metronome::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
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
        #     rollover_fraction: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class AccessAmount < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        class CommitDuration < Metronome::BaseModel
          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute [r] unit
          #
          #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit, nil]
          optional :unit,
                   enum: -> { Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit }

          # @!parse
          #   # @return [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit]
          #   attr_writer :unit

          # @!parse
          #   # The amount of time the created commits will be valid for
          #   #
          #   # @param value [Float]
          #   # @param unit [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit]
          #   #
          #   def initialize(value:, unit: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case unit
          # in :PERIODS
          #   # ...
          # end
          # ```
          class Unit < Metronome::Enum
            PERIODS = :PERIODS

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class Product < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
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
        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        class Contract < Metronome::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        class InvoiceAmount < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end

      class RecurringCredit < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount]
        required :access_amount,
                 -> { Metronome::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for
        #
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration]
        required :commit_duration,
                 -> { Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product
        #
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCredit::Product]
        required :product, -> { Metronome::Models::ContractWithoutAmendments::RecurringCredit::Product }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCredit::RateType]
        required :rate_type, enum: -> { Metronome::Models::ContractWithoutAmendments::RecurringCredit::RateType }

        # @!attribute starting_at
        #   Determines the start time for the first commit
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [r] applicable_product_ids
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_tags

        # @!attribute [r] contract
        #
        #   @return [Metronome::Models::ContractWithoutAmendments::RecurringCredit::Contract, nil]
        optional :contract, -> { Metronome::Models::ContractWithoutAmendments::RecurringCredit::Contract }

        # @!parse
        #   # @return [Metronome::Models::ContractWithoutAmendments::RecurringCredit::Contract]
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
        #   # @param access_amount [Metronome::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount]
        #   # @param commit_duration [Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration]
        #   # @param priority [Float]
        #   # @param product [Metronome::Models::ContractWithoutAmendments::RecurringCredit::Product]
        #   # @param rate_type [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCredit::RateType]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param contract [Metronome::Models::ContractWithoutAmendments::RecurringCredit::Contract]
        #   # @param description [String]
        #   # @param ending_before [Time]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
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
        #     rollover_fraction: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class AccessAmount < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        class CommitDuration < Metronome::BaseModel
          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute [r] unit
          #
          #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit, nil]
          optional :unit,
                   enum: -> { Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit }

          # @!parse
          #   # @return [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit]
          #   attr_writer :unit

          # @!parse
          #   # The amount of time the created commits will be valid for
          #   #
          #   # @param value [Float]
          #   # @param unit [Symbol, Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit]
          #   #
          #   def initialize(value:, unit: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case unit
          # in :PERIODS
          #   # ...
          # end
          # ```
          class Unit < Metronome::Enum
            PERIODS = :PERIODS

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class Product < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
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
        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        class Contract < Metronome::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end

      class ResellerRoyalty < Metronome::BaseModel
        # @!attribute fraction
        #
        #   @return [Float]
        required :fraction, Float

        # @!attribute netsuite_reseller_id
        #
        #   @return [String]
        required :netsuite_reseller_id, String

        # @!attribute reseller_type
        #
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType]
        required :reseller_type,
                 enum: -> { Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType }

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [r] applicable_product_ids
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

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

        # @!attribute [r] ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :ending_before

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

        # @!attribute [r] reseller_contract_value
        #
        #   @return [Float, nil]
        optional :reseller_contract_value, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :reseller_contract_value

        # @!parse
        #   # @param fraction [Float]
        #   # @param netsuite_reseller_id [String]
        #   # @param reseller_type [Symbol, Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param aws_account_number [String]
        #   # @param aws_offer_id [String]
        #   # @param aws_payer_reference_id [String]
        #   # @param ending_before [Time]
        #   # @param gcp_account_id [String]
        #   # @param gcp_offer_id [String]
        #   # @param reseller_contract_value [Float]
        #   #
        #   def initialize(
        #     fraction:,
        #     netsuite_reseller_id:,
        #     reseller_type:,
        #     starting_at:,
        #     applicable_product_ids: nil,
        #     applicable_product_tags: nil,
        #     aws_account_number: nil,
        #     aws_offer_id: nil,
        #     aws_payer_reference_id: nil,
        #     ending_before: nil,
        #     gcp_account_id: nil,
        #     gcp_offer_id: nil,
        #     reseller_contract_value: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        class ResellerType < Metronome::Enum
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

      # @abstract
      #
      # Determines which scheduled and commit charges to consolidate onto the Contract's
      #   usage invoice. The charge's `timestamp` must match the usage invoice's
      #   `ending_before` date for consolidation to occur. This field cannot be modified
      #   after a Contract has been created. If this field is omitted, charges will appear
      #   on a separate invoice from usage charges.
      #
      # @example
      # ```ruby
      # case scheduled_charges_on_usage_invoices
      # in :ALL
      #   # ...
      # end
      # ```
      class ScheduledChargesOnUsageInvoices < Metronome::Enum
        ALL = :ALL

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      class UsageFilter < Metronome::BaseModel
        # @!attribute current
        #
        #   @return [Metronome::Models::BaseUsageFilter, nil]
        required :current, -> { Metronome::Models::BaseUsageFilter }, nil?: true

        # @!attribute initial
        #
        #   @return [Metronome::Models::BaseUsageFilter]
        required :initial, -> { Metronome::Models::BaseUsageFilter }

        # @!attribute updates
        #
        #   @return [Array<Metronome::Models::ContractWithoutAmendments::UsageFilter::Update>]
        required :updates,
                 -> { Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::UsageFilter::Update] }

        # @!parse
        #   # @param current [Metronome::Models::BaseUsageFilter, nil]
        #   # @param initial [Metronome::Models::BaseUsageFilter]
        #   # @param updates [Array<Metronome::Models::ContractWithoutAmendments::UsageFilter::Update>]
        #   #
        #   def initialize(current:, initial:, updates:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class Update < Metronome::BaseModel
          # @!attribute group_key
          #
          #   @return [String]
          required :group_key, String

          # @!attribute group_values
          #
          #   @return [Array<String>]
          required :group_values, Metronome::ArrayOf[String]

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!parse
          #   # @param group_key [String]
          #   # @param group_values [Array<String>]
          #   # @param starting_at [Time]
          #   #
          #   def initialize(group_key:, group_values:, starting_at:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
