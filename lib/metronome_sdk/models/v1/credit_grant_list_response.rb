# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CreditGrants#list
      class CreditGrantListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #   the Metronome ID of the credit grant
        #
        #   @return [String]
        required :id, String

        # @!attribute balance
        #   The effective balance of the grant as of the end of the customer's current
        #   billing period. Expiration deductions will be included only if the grant expires
        #   before the end of the current billing period.
        #
        #   @return [MetronomeSDK::Models::V1::CreditGrantListResponse::Balance]
        required :balance, -> { MetronomeSDK::Models::V1::CreditGrantListResponse::Balance }

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute customer_id
        #   the Metronome ID of the customer
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute deductions
        #
        #   @return [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
        required :deductions,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditLedgerEntry] }

        # @!attribute effective_at
        #
        #   @return [Time]
        required :effective_at, Time

        # @!attribute expires_at
        #
        #   @return [Time]
        required :expires_at, Time

        # @!attribute grant_amount
        #   the amount of credits initially granted
        #
        #   @return [MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount]
        required :grant_amount, -> { MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount }

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute paid_amount
        #   the amount paid for this credit grant
        #
        #   @return [MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount]
        required :paid_amount, -> { MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount }

        # @!attribute pending_deductions
        #
        #   @return [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
        required :pending_deductions,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditLedgerEntry] }

        # @!attribute priority
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute credit_grant_type
        #
        #   @return [String, nil]
        optional :credit_grant_type, String, nil?: true

        # @!attribute invoice_id
        #   the Metronome ID of the invoice with the purchase charge for this credit grant,
        #   if applicable
        #
        #   @return [String, nil]
        optional :invoice_id, String, nil?: true

        # @!attribute products
        #   The products which these credits will be applied to. (If unspecified, the
        #   credits will be applied to charges for all products.)
        #
        #   @return [Array<MetronomeSDK::Models::V1::CreditGrantListResponse::Product>, nil]
        optional :products,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListResponse::Product] }

        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!attribute uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made
        #   with a previously used uniqueness key, a new record will not be created and the
        #   request will fail with a 409 error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String, nil?: true

        # @!method initialize(id:, balance:, custom_fields:, customer_id:, deductions:, effective_at:, expires_at:, grant_amount:, name:, paid_amount:, pending_deductions:, priority:, credit_grant_type: nil, invoice_id: nil, products: nil, reason: nil, uniqueness_key: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CreditGrantListResponse} for more details.
        #
        #   @param id [String] the Metronome ID of the credit grant
        #
        #   @param balance [MetronomeSDK::Models::V1::CreditGrantListResponse::Balance] The effective balance of the grant as of the end of the customer's current billi
        #   ...
        #
        #   @param custom_fields [Hash{Symbol=>String}]
        #
        #   @param customer_id [String] the Metronome ID of the customer
        #
        #   @param deductions [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
        #
        #   @param effective_at [Time]
        #
        #   @param expires_at [Time]
        #
        #   @param grant_amount [MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount] the amount of credits initially granted
        #
        #   @param name [String]
        #
        #   @param paid_amount [MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount] the amount paid for this credit grant
        #
        #   @param pending_deductions [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
        #
        #   @param priority [Float]
        #
        #   @param credit_grant_type [String, nil]
        #
        #   @param invoice_id [String, nil] the Metronome ID of the invoice with the purchase charge for this credit grant,
        #   ...
        #
        #   @param products [Array<MetronomeSDK::Models::V1::CreditGrantListResponse::Product>] The products which these credits will be applied to. (If unspecified, the credit
        #   ...
        #
        #   @param reason [String, nil]
        #
        #   @param uniqueness_key [String, nil] Prevents the creation of duplicates. If a request to create a record is made wit
        #   ...

        # @see MetronomeSDK::Models::V1::CreditGrantListResponse#balance
        class Balance < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute effective_at
          #   The end_date of the customer's current billing period.
          #
          #   @return [Time]
          required :effective_at, Time

          # @!attribute excluding_pending
          #   The grant's current balance including all posted deductions. If the grant has
          #   expired, this amount will be 0.
          #
          #   @return [Float]
          required :excluding_pending, Float

          # @!attribute including_pending
          #   The grant's current balance including all posted and pending deductions. If the
          #   grant expires before the end of the customer's current billing period, this
          #   amount will be 0.
          #
          #   @return [Float]
          required :including_pending, Float

          # @!method initialize(effective_at:, excluding_pending:, including_pending:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CreditGrantListResponse::Balance} for more details.
          #
          #   The effective balance of the grant as of the end of the customer's current
          #   billing period. Expiration deductions will be included only if the grant expires
          #   before the end of the current billing period.
          #
          #   @param effective_at [Time] The end_date of the customer's current billing period.
          #
          #   @param excluding_pending [Float] The grant's current balance including all posted deductions. If the grant has ex
          #   ...
          #
          #   @param including_pending [Float] The grant's current balance including all posted and pending deductions. If the
          #   ...
        end

        # @see MetronomeSDK::Models::V1::CreditGrantListResponse#grant_amount
        class GrantAmount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute credit_type
          #   the credit type for the amount granted
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

          # @!method initialize(amount:, credit_type:)
          #   the amount of credits initially granted
          #
          #   @param amount [Float]
          #
          #   @param credit_type [MetronomeSDK::Models::CreditTypeData] the credit type for the amount granted
        end

        # @see MetronomeSDK::Models::V1::CreditGrantListResponse#paid_amount
        class PaidAmount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute credit_type
          #   the credit type for the amount paid
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

          # @!method initialize(amount:, credit_type:)
          #   the amount paid for this credit grant
          #
          #   @param amount [Float]
          #
          #   @param credit_type [MetronomeSDK::Models::CreditTypeData] the credit type for the amount paid
        end

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
      end
    end
  end
end
