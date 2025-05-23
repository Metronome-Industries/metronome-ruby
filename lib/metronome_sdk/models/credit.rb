# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Credit < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [MetronomeSDK::Credit::Product]
      required :product, -> { MetronomeSDK::Credit::Product }

      # @!attribute type
      #
      #   @return [Symbol, MetronomeSDK::Credit::Type]
      required :type, enum: -> { MetronomeSDK::Credit::Type }

      # @!attribute access_schedule
      #   The schedule that the customer will gain access to the credits.
      #
      #   @return [MetronomeSDK::ScheduleDuration, nil]
      optional :access_schedule, -> { MetronomeSDK::ScheduleDuration }

      # @!attribute applicable_contract_ids
      #
      #   @return [Array<String>, nil]
      optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute applicable_product_ids
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute applicable_product_tags
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute balance
      #   The current balance of the credit or commit. This balance reflects the amount of
      #   credit or commit that the customer has access to use at this moment - thus,
      #   expired and upcoming credit or commit segments contribute 0 to the balance. The
      #   balance will match the sum of all ledger entries with the exception of the case
      #   where the sum of negative manual ledger entries exceeds the positive amount
      #   remaining on the credit or commit - in that case, the balance will be 0. All
      #   manual ledger entries associated with active credit or commit segments are
      #   included in the balance, including future-dated manual ledger entries.
      #
      #   @return [Float, nil]
      optional :balance, Float

      # @!attribute contract
      #
      #   @return [MetronomeSDK::Credit::Contract, nil]
      optional :contract, -> { MetronomeSDK::Credit::Contract }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute ledger
      #   A list of ordered events that impact the balance of a credit. For example, an
      #   invoice deduction or an expiration.
      #
      #   @return [Array<MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry>, nil]
      optional :ledger, -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Credit::Ledger] }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!attribute priority
      #   If multiple credits or commits are applicable, the one with the lower priority
      #   will apply first.
      #
      #   @return [Float, nil]
      optional :priority, Float

      # @!attribute rate_type
      #
      #   @return [Symbol, MetronomeSDK::Credit::RateType, nil]
      optional :rate_type, enum: -> { MetronomeSDK::Credit::RateType }

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :salesforce_opportunity_id, String

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a commit or credit
      #   is made with a uniqueness key that was previously used to create a commit or
      #   credit, a new record will not be created and the request will fail with a 409
      #   error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
      #   Some parameter documentations has been truncated, see {MetronomeSDK::Credit} for
      #   more details.
      #
      #   @param id [String]
      #
      #   @param product [MetronomeSDK::Credit::Product]
      #
      #   @param type [Symbol, MetronomeSDK::Credit::Type]
      #
      #   @param access_schedule [MetronomeSDK::ScheduleDuration] The schedule that the customer will gain access to the credits.
      #
      #   @param applicable_contract_ids [Array<String>]
      #
      #   @param applicable_product_ids [Array<String>]
      #
      #   @param applicable_product_tags [Array<String>]
      #
      #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
      #
      #   @param contract [MetronomeSDK::Credit::Contract]
      #
      #   @param custom_fields [Hash{Symbol=>String}]
      #
      #   @param description [String]
      #
      #   @param ledger [Array<MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry>] A list of ordered events that impact the balance of a credit. For example, an in
      #
      #   @param name [String]
      #
      #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
      #
      #   @param rate_type [Symbol, MetronomeSDK::Credit::RateType]
      #
      #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

      # @see MetronomeSDK::Credit#product
      class Product < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   @param id [String]
        #   @param name [String]
      end

      # @see MetronomeSDK::Credit#type
      module Type
        extend MetronomeSDK::Internal::Type::Enum

        CREDIT = :CREDIT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Credit#contract
      class Contract < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String]
      end

      module Ledger
        extend MetronomeSDK::Internal::Type::Union

        variant -> { MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry }

        variant -> { MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry }

        variant -> { MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry }

        variant -> { MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry }

        variant -> { MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry }

        variant -> { MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry }

        class CreditSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type }

          # @!method initialize(amount:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]

          # @see MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CreditAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> { MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]

          # @see MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CreditExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type }

          # @!method initialize(amount:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type]

          # @see MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            CREDIT_EXPIRATION = :CREDIT_EXPIRATION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CreditCanceledLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type]

          # @see MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            CREDIT_CANCELED = :CREDIT_CANCELED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CreditCreditedLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type]

          # @see MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            CREDIT_CREDITED = :CREDIT_CREDITED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CreditManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type }

          # @!method initialize(amount:, reason:, timestamp:, type:)
          #   @param amount [Float]
          #   @param reason [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type]

          # @see MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            CREDIT_MANUAL = :CREDIT_MANUAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry)]

        define_sorbet_constant!(:Variants) do
          T.type_alias do
            T.any(
              MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry
            )
          end
        end
      end

      # @see MetronomeSDK::Credit#rate_type
      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
