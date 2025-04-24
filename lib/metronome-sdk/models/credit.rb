# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Credit < MetronomeSDK::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [MetronomeSDK::Models::Credit::Product]
      required :product, -> { MetronomeSDK::Models::Credit::Product }

      # @!attribute type
      #
      #   @return [Symbol, MetronomeSDK::Models::Credit::Type]
      required :type, enum: -> { MetronomeSDK::Models::Credit::Type }

      # @!attribute [r] access_schedule
      #   The schedule that the customer will gain access to the credits.
      #
      #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
      optional :access_schedule, -> { MetronomeSDK::Models::ScheduleDuration }

      # @!parse
      #   # @return [MetronomeSDK::Models::ScheduleDuration]
      #   attr_writer :access_schedule

      # @!attribute [r] applicable_contract_ids
      #
      #   @return [Array<String>, nil]
      optional :applicable_contract_ids, MetronomeSDK::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_contract_ids

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

      # @!attribute [r] balance
      #   The current balance of the credit or commit. This balance reflects the amount of
      #     credit or commit that the customer has access to use at this moment - thus,
      #     expired and upcoming credit or commit segments contribute 0 to the balance. The
      #     balance will match the sum of all ledger entries with the exception of the case
      #     where the sum of negative manual ledger entries exceeds the positive amount
      #     remaining on the credit or commit - in that case, the balance will be 0. All
      #     manual ledger entries associated with active credit or commit segments are
      #     included in the balance, including future-dated manual ledger entries.
      #
      #   @return [Float, nil]
      optional :balance, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :balance

      # @!attribute [r] contract
      #
      #   @return [MetronomeSDK::Models::Credit::Contract, nil]
      optional :contract, -> { MetronomeSDK::Models::Credit::Contract }

      # @!parse
      #   # @return [MetronomeSDK::Models::Credit::Contract]
      #   attr_writer :contract

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

      # @!attribute [r] ledger
      #   A list of ordered events that impact the balance of a credit. For example, an
      #     invoice deduction or an expiration.
      #
      #   @return [Array<MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry>, nil]
      optional :ledger, -> { MetronomeSDK::ArrayOf[union: MetronomeSDK::Models::Credit::Ledger] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry>]
      #   attr_writer :ledger

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
      #   @return [Symbol, MetronomeSDK::Models::Credit::RateType, nil]
      optional :rate_type, enum: -> { MetronomeSDK::Models::Credit::RateType }

      # @!parse
      #   # @return [Symbol, MetronomeSDK::Models::Credit::RateType]
      #   attr_writer :rate_type

      # @!attribute [r] salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :salesforce_opportunity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :salesforce_opportunity_id

      # @!attribute [r] uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a commit or credit
      #     is made with a uniqueness key that was previously used to create a commit or
      #     credit, a new record will not be created and the request will fail with a 409
      #     error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :uniqueness_key

      # @!parse
      #   # @param id [String]
      #   # @param product [MetronomeSDK::Models::Credit::Product]
      #   # @param type [Symbol, MetronomeSDK::Models::Credit::Type]
      #   # @param access_schedule [MetronomeSDK::Models::ScheduleDuration]
      #   # @param applicable_contract_ids [Array<String>]
      #   # @param applicable_product_ids [Array<String>]
      #   # @param applicable_product_tags [Array<String>]
      #   # @param balance [Float]
      #   # @param contract [MetronomeSDK::Models::Credit::Contract]
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   # @param description [String]
      #   # @param ledger [Array<MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry>]
      #   # @param name [String]
      #   # @param netsuite_sales_order_id [String]
      #   # @param priority [Float]
      #   # @param rate_type [Symbol, MetronomeSDK::Models::Credit::RateType]
      #   # @param salesforce_opportunity_id [String]
      #   # @param uniqueness_key [String]
      #   #
      #   def initialize(
      #     id:,
      #     product:,
      #     type:,
      #     access_schedule: nil,
      #     applicable_contract_ids: nil,
      #     applicable_product_ids: nil,
      #     applicable_product_tags: nil,
      #     balance: nil,
      #     contract: nil,
      #     custom_fields: nil,
      #     description: nil,
      #     ledger: nil,
      #     name: nil,
      #     netsuite_sales_order_id: nil,
      #     priority: nil,
      #     rate_type: nil,
      #     salesforce_opportunity_id: nil,
      #     uniqueness_key: nil,
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
      # @example
      # ```ruby
      # case ledger
      # in MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry
      #   # ...
      # end
      # ```
      class Ledger < MetronomeSDK::Union
        variant -> { MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry }

        variant -> { MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry }

        variant -> { MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry }

        variant -> { MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry }

        variant -> { MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry }

        variant -> { MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry }

        class CreditSegmentStartLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :CREDIT_SEGMENT_START
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class CreditAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> { MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :CREDIT_AUTOMATED_INVOICE_DEDUCTION
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class CreditExpirationLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry::Type]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :CREDIT_EXPIRATION
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            CREDIT_EXPIRATION = :CREDIT_EXPIRATION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class CreditCanceledLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :CREDIT_CANCELED
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            CREDIT_CANCELED = :CREDIT_CANCELED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class CreditCreditedLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :CREDIT_CREDITED
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            CREDIT_CREDITED = :CREDIT_CREDITED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class CreditManualLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute reason
          #
          #   @return [String]
          required :reason, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param reason [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry::Type]
          #   #
          #   def initialize(amount:, reason:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :CREDIT_MANUAL
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            CREDIT_MANUAL = :CREDIT_MANUAL

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
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
  end
end
