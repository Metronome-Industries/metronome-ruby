# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # credit => {
    #   id: String,
    #   product: Metronome::Models::Credit::Product,
    #   type: enum: Metronome::Models::Credit::Type,
    #   access_schedule: Metronome::Models::ScheduleDuration,
    #   applicable_contract_ids: -> { Metronome::ArrayOf[String] === _1 },
    #   **_
    # }
    # ```
    class Credit < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [Metronome::Models::Credit::Product]
      required :product, -> { Metronome::Models::Credit::Product }

      # @!attribute type
      #
      #   @return [Symbol, Metronome::Models::Credit::Type]
      required :type, enum: -> { Metronome::Models::Credit::Type }

      # @!attribute access_schedule
      #   The schedule that the customer will gain access to the credits.
      #
      #   @return [Metronome::Models::ScheduleDuration]
      optional :access_schedule, -> { Metronome::Models::ScheduleDuration }

      # @!attribute applicable_contract_ids
      #
      #   @return [Array<String>]
      optional :applicable_contract_ids, Metronome::ArrayOf[String]

      # @!attribute applicable_product_ids
      #
      #   @return [Array<String>]
      optional :applicable_product_ids, Metronome::ArrayOf[String]

      # @!attribute applicable_product_tags
      #
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf[String]

      # @!attribute balance
      #   The current balance of the credit or commit. This balance reflects the amount of credit or commit that the customer has access to use at this moment - thus, expired and upcoming credit or commit segments contribute 0 to the balance. The balance will match the sum of all ledger entries with the exception of the case where the sum of negative manual ledger entries exceeds the positive amount remaining on the credit or commit - in that case, the balance will be 0. All manual ledger entries associated with active credit or commit segments are included in the balance, including future-dated manual ledger entries.
      #
      #   @return [Float]
      optional :balance, Float

      # @!attribute contract
      #
      #   @return [Metronome::Models::Credit::Contract]
      optional :contract, -> { Metronome::Models::Credit::Contract }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
      optional :custom_fields, Metronome::HashOf[String]

      # @!attribute description
      #
      #   @return [String]
      optional :description, String

      # @!attribute ledger
      #   A list of ordered events that impact the balance of a credit. For example, an invoice deduction or an expiration.
      #
      #   @return [Array<Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry, Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry, Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry, Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry, Metronome::Models::Credit::Ledger::CreditManualLedgerEntry>]
      optional :ledger, -> { Metronome::ArrayOf[union: Metronome::Models::Credit::Ledger] }

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute priority
      #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
      #
      #   @return [Float]
      optional :priority, Float

      # @!attribute rate_type
      #
      #   @return [Symbol, Metronome::Models::Credit::RateType]
      optional :rate_type, enum: -> { Metronome::Models::Credit::RateType }

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :salesforce_opportunity_id, String

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a commit or credit is made with a uniqueness key that was previously used to create a commit or credit, a new record will not be created and the request will fail with a 409 error.
      #
      #   @return [String]
      optional :uniqueness_key, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param product [Metronome::Models::Credit::Product]
      #   #
      #   # @param type [String]
      #   #
      #   # @param access_schedule [Metronome::Models::ScheduleDuration] The schedule that the customer will gain access to the credits.
      #   #
      #   # @param applicable_contract_ids [Array<String>]
      #   #
      #   # @param applicable_product_ids [Array<String>]
      #   #
      #   # @param applicable_product_tags [Array<String>]
      #   #
      #   # @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
      #   #   credit or commit that the customer has access to use at this moment - thus,
      #   #   expired and upcoming credit or commit segments contribute 0 to the balance. The
      #   #   balance will match the sum of all ledger entries with the exception of the case
      #   #   where the sum of negative manual ledger entries exceeds the positive amount
      #   #   remaining on the credit or commit - in that case, the balance will be 0. All
      #   #   manual ledger entries associated with active credit or commit segments are
      #   #   included in the balance, including future-dated manual ledger entries.
      #   #
      #   # @param contract [Metronome::Models::Credit::Contract]
      #   #
      #   # @param custom_fields [Hash{Symbol => String}]
      #   #
      #   # @param description [String]
      #   #
      #   # @param ledger [Array<Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry, Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry, Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry, Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry, Metronome::Models::Credit::Ledger::CreditManualLedgerEntry>] A list of ordered events that impact the balance of a credit. For example, an
      #   #   invoice deduction or an expiration.
      #   #
      #   # @param name [String]
      #   #
      #   # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority
      #   #   will apply first.
      #   #
      #   # @param rate_type [String]
      #   #
      #   # @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit
      #   #   is made with a uniqueness key that was previously used to create a commit or
      #   #   credit, a new record will not be created and the request will fail with a 409
      #   #   error.
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

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      #
      # ```ruby
      # product => {
      #   id: String,
      #   name: String
      # }
      # ```
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

      # @example
      #
      # ```ruby
      # case type
      # in :CREDIT
      #   # ...
      # end
      # ```
      class Type < Metronome::Enum
        CREDIT = :CREDIT

        finalize!
      end

      # @example
      #
      # ```ruby
      # contract => {
      #   id: String
      # }
      # ```
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

      # @example
      #
      # ```ruby
      # case ledger
      # in Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry
      #   # ...
      # in Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry
      #   # ...
      # in Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry
      #   # ...
      # in Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry
      #   # ...
      # in Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry
      #   # ...
      # in Metronome::Models::Credit::Ledger::CreditManualLedgerEntry
      #   # ...
      # end
      # ```
      class Ledger < Metronome::Union
        variant -> { Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry }

        variant -> { Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry }

        variant -> { Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry }

        variant -> { Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry }

        variant -> { Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry }

        variant -> { Metronome::Models::Credit::Ledger::CreditManualLedgerEntry }

        # @example
        #
        # ```ruby
        # credit_segment_start_ledger_entry => {
        #   amount: Float,
        #   segment_id: String,
        #   timestamp: Time,
        #   type: enum: Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry::Type
        # }
        # ```
        class CreditSegmentStartLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case type
          # in :CREDIT_SEGMENT_START
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # credit_automated_invoice_deduction_ledger_entry => {
        #   amount: Float,
        #   invoice_id: String,
        #   segment_id: String,
        #   timestamp: Time,
        #   type: enum: Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type
        # }
        # ```
        class CreditAutomatedInvoiceDeductionLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> {
                     Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case type
          # in :CREDIT_AUTOMATED_INVOICE_DEDUCTION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # credit_expiration_ledger_entry => {
        #   amount: Float,
        #   segment_id: String,
        #   timestamp: Time,
        #   type: enum: Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry::Type
        # }
        # ```
        class CreditExpirationLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case type
          # in :CREDIT_EXPIRATION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            CREDIT_EXPIRATION = :CREDIT_EXPIRATION

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # credit_canceled_ledger_entry => {
        #   amount: Float,
        #   invoice_id: String,
        #   segment_id: String,
        #   timestamp: Time,
        #   type: enum: Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry::Type
        # }
        # ```
        class CreditCanceledLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case type
          # in :CREDIT_CANCELED
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            CREDIT_CANCELED = :CREDIT_CANCELED

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # credit_credited_ledger_entry => {
        #   amount: Float,
        #   invoice_id: String,
        #   segment_id: String,
        #   timestamp: Time,
        #   type: enum: Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry::Type
        # }
        # ```
        class CreditCreditedLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case type
          # in :CREDIT_CREDITED
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            CREDIT_CREDITED = :CREDIT_CREDITED

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # credit_manual_ledger_entry => {
        #   amount: Float,
        #   reason: String,
        #   timestamp: Time,
        #   type: enum: Metronome::Models::Credit::Ledger::CreditManualLedgerEntry::Type
        # }
        # ```
        class CreditManualLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Credit::Ledger::CreditManualLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Credit::Ledger::CreditManualLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param reason [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, reason:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case type
          # in :CREDIT_MANUAL
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            CREDIT_MANUAL = :CREDIT_MANUAL

            finalize!
          end
        end
      end

      # @example
      #
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
      end
    end
  end
end
