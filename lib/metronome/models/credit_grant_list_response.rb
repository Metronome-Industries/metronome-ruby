# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # credit_grant_list_response => {
    #   id: String,
    #   balance: Metronome::Models::CreditGrantListResponse::Balance,
    #   custom_fields: -> { Metronome::HashOf[String] === _1 },
    #   customer_id: String,
    #   deductions: -> { Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry] === _1 },
    #   **_
    # }
    # ```
    class CreditGrantListResponse < Metronome::BaseModel
      # @!attribute id
      #   the Metronome ID of the credit grant
      #
      #   @return [String]
      required :id, String

      # @!attribute balance
      #   The effective balance of the grant as of the end of the customer's current
      #     billing period. Expiration deductions will be included only if the grant expires
      #     before the end of the current billing period.
      #
      #   @return [Metronome::Models::CreditGrantListResponse::Balance]
      required :balance, -> { Metronome::Models::CreditGrantListResponse::Balance }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}]
      required :custom_fields, Metronome::HashOf[String]

      # @!attribute customer_id
      #   the Metronome ID of the customer
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute deductions
      #
      #   @return [Array<Metronome::Models::CreditLedgerEntry>]
      required :deductions, -> { Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry] }

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
      #   @return [Metronome::Models::CreditGrantListResponse::GrantAmount]
      required :grant_amount, -> { Metronome::Models::CreditGrantListResponse::GrantAmount }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute paid_amount
      #   the amount paid for this credit grant
      #
      #   @return [Metronome::Models::CreditGrantListResponse::PaidAmount]
      required :paid_amount, -> { Metronome::Models::CreditGrantListResponse::PaidAmount }

      # @!attribute pending_deductions
      #
      #   @return [Array<Metronome::Models::CreditLedgerEntry>]
      required :pending_deductions, -> { Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry] }

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
      #     if applicable
      #
      #   @return [String, nil]
      optional :invoice_id, String, nil?: true

      # @!attribute [r] products
      #   The products which these credits will be applied to. (If unspecified, the
      #     credits will be applied to charges for all products.)
      #
      #   @return [Array<Metronome::Models::CreditGrantListResponse::Product>]
      optional :products, -> { Metronome::ArrayOf[Metronome::Models::CreditGrantListResponse::Product] }

      # @!parse
      #   # @return [Array<Metronome::Models::CreditGrantListResponse::Product>]
      #   attr_writer :products

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made
      #     with a previously used uniqueness key, a new record will not be created and the
      #     request will fail with a 409 error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String, nil?: true

      # @!parse
      #   # @param id [String]
      #   # @param balance [Metronome::Models::CreditGrantListResponse::Balance]
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   # @param customer_id [String]
      #   # @param deductions [Array<Metronome::Models::CreditLedgerEntry>]
      #   # @param effective_at [Time]
      #   # @param expires_at [Time]
      #   # @param grant_amount [Metronome::Models::CreditGrantListResponse::GrantAmount]
      #   # @param name [String]
      #   # @param paid_amount [Metronome::Models::CreditGrantListResponse::PaidAmount]
      #   # @param pending_deductions [Array<Metronome::Models::CreditLedgerEntry>]
      #   # @param priority [Float]
      #   # @param credit_grant_type [String, nil]
      #   # @param invoice_id [String, nil]
      #   # @param products [Array<Metronome::Models::CreditGrantListResponse::Product>]
      #   # @param reason [String, nil]
      #   # @param uniqueness_key [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     balance:,
      #     custom_fields:,
      #     customer_id:,
      #     deductions:,
      #     effective_at:,
      #     expires_at:,
      #     grant_amount:,
      #     name:,
      #     paid_amount:,
      #     pending_deductions:,
      #     priority:,
      #     credit_grant_type: nil,
      #     invoice_id: nil,
      #     products: nil,
      #     reason: nil,
      #     uniqueness_key: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # balance => {
      #   effective_at: Time,
      #   excluding_pending: Float,
      #   including_pending: Float
      # }
      # ```
      class Balance < Metronome::BaseModel
        # @!attribute effective_at
        #   The end_date of the customer's current billing period.
        #
        #   @return [Time]
        required :effective_at, Time

        # @!attribute excluding_pending
        #   The grant's current balance including all posted deductions. If the grant has
        #     expired, this amount will be 0.
        #
        #   @return [Float]
        required :excluding_pending, Float

        # @!attribute including_pending
        #   The grant's current balance including all posted and pending deductions. If the
        #     grant expires before the end of the customer's current billing period, this
        #     amount will be 0.
        #
        #   @return [Float]
        required :including_pending, Float

        # @!parse
        #   # The effective balance of the grant as of the end of the customer's current
        #   #   billing period. Expiration deductions will be included only if the grant expires
        #   #   before the end of the current billing period.
        #   #
        #   # @param effective_at [Time]
        #   # @param excluding_pending [Float]
        #   # @param including_pending [Float]
        #   #
        #   def initialize(effective_at:, excluding_pending:, including_pending:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # grant_amount => {
      #   amount: Float,
      #   credit_type: Metronome::Models::CreditTypeData
      # }
      # ```
      class GrantAmount < Metronome::BaseModel
        # @!attribute amount
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute credit_type
        #   the credit type for the amount granted
        #
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!parse
        #   # the amount of credits initially granted
        #   #
        #   # @param amount [Float]
        #   # @param credit_type [Metronome::Models::CreditTypeData]
        #   #
        #   def initialize(amount:, credit_type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # paid_amount => {
      #   amount: Float,
      #   credit_type: Metronome::Models::CreditTypeData
      # }
      # ```
      class PaidAmount < Metronome::BaseModel
        # @!attribute amount
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute credit_type
        #   the credit type for the amount paid
        #
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!parse
        #   # the amount paid for this credit grant
        #   #
        #   # @param amount [Float]
        #   # @param credit_type [Metronome::Models::CreditTypeData]
        #   #
        #   def initialize(amount:, credit_type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
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
    end
  end
end
