# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CustomerAlert < Metronome::BaseModel
        # @!attribute alert
        #
        #   @return [Metronome::Models::Customers::CustomerAlert::Alert]
        required :alert, -> { Metronome::Models::Customers::CustomerAlert::Alert }

        # @!attribute customer_status
        #   The status of the customer alert. If the alert is archived, null will be
        #     returned.
        #
        #   @return [Symbol, Metronome::Models::Customers::CustomerAlert::CustomerStatus, nil]
        required :customer_status,
                 enum: -> { Metronome::Models::Customers::CustomerAlert::CustomerStatus },
                 nil?: true

        # @!attribute triggered_by
        #   If present, indicates the reason the alert was triggered.
        #
        #   @return [String, nil]
        optional :triggered_by, String, nil?: true

        # @!parse
        #   # @param alert [Metronome::Models::Customers::CustomerAlert::Alert]
        #   # @param customer_status [Symbol, Metronome::Models::Customers::CustomerAlert::CustomerStatus, nil]
        #   # @param triggered_by [String, nil]
        #   #
        #   def initialize(alert:, customer_status:, triggered_by: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class Alert < Metronome::BaseModel
          # @!attribute id
          #   the Metronome ID of the alert
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Name of the alert
          #
          #   @return [String]
          required :name, String

          # @!attribute status
          #   Status of the alert
          #
          #   @return [Symbol, Metronome::Models::Customers::CustomerAlert::Alert::Status]
          required :status, enum: -> { Metronome::Models::Customers::CustomerAlert::Alert::Status }

          # @!attribute threshold
          #   Threshold value of the alert policy
          #
          #   @return [Float]
          required :threshold, Float

          # @!attribute type
          #   Type of the alert
          #
          #   @return [Symbol, Metronome::Models::Customers::CustomerAlert::Alert::Type]
          required :type, enum: -> { Metronome::Models::Customers::CustomerAlert::Alert::Type }

          # @!attribute updated_at
          #   Timestamp for when the alert was last updated
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute [r] credit_grant_type_filters
          #   An array of strings, representing a way to filter the credit grant this alert
          #     applies to, by looking at the credit_grant_type field on the credit grant. This
          #     field is only defined for CreditPercentage and CreditBalance alerts
          #
          #   @return [Array<String>, nil]
          optional :credit_grant_type_filters, Metronome::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :credit_grant_type_filters

          # @!attribute credit_type
          #
          #   @return [Metronome::Models::CreditTypeData, nil]
          optional :credit_type, -> { Metronome::Models::CreditTypeData }, nil?: true

          # @!attribute [r] custom_field_filters
          #   A list of custom field filters for alert types that support advanced filtering
          #
          #   @return [Array<Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter>, nil]
          optional :custom_field_filters,
                   -> { Metronome::ArrayOf[Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter] }

          # @!parse
          #   # @return [Array<Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter>]
          #   attr_writer :custom_field_filters

          # @!attribute [r] group_key_filter
          #   Scopes alert evaluation to a specific presentation group key on individual line
          #     items. Only present for spend alerts.
          #
          #   @return [Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter, nil]
          optional :group_key_filter, -> { Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter }

          # @!parse
          #   # @return [Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter]
          #   attr_writer :group_key_filter

          # @!attribute [r] invoice_types_filter
          #   Only supported for invoice_total_reached alerts. A list of invoice types to
          #     evaluate.
          #
          #   @return [Array<String>, nil]
          optional :invoice_types_filter, Metronome::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :invoice_types_filter

          # @!attribute [r] uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a record is made
          #     with a previously used uniqueness key, a new record will not be created and the
          #     request will fail with a 409 error.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!parse
          #   # @return [String]
          #   attr_writer :uniqueness_key

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   # @param status [Symbol, Metronome::Models::Customers::CustomerAlert::Alert::Status]
          #   # @param threshold [Float]
          #   # @param type [Symbol, Metronome::Models::Customers::CustomerAlert::Alert::Type]
          #   # @param updated_at [Time]
          #   # @param credit_grant_type_filters [Array<String>]
          #   # @param credit_type [Metronome::Models::CreditTypeData, nil]
          #   # @param custom_field_filters [Array<Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter>]
          #   # @param group_key_filter [Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter]
          #   # @param invoice_types_filter [Array<String>]
          #   # @param uniqueness_key [String]
          #   #
          #   def initialize(
          #     id:,
          #     name:,
          #     status:,
          #     threshold:,
          #     type:,
          #     updated_at:,
          #     credit_grant_type_filters: nil,
          #     credit_type: nil,
          #     custom_field_filters: nil,
          #     group_key_filter: nil,
          #     invoice_types_filter: nil,
          #     uniqueness_key: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # Status of the alert
          #
          # @example
          # ```ruby
          # case status
          # in :enabled
          #   # ...
          # in :archived
          #   # ...
          # in :disabled
          #   # ...
          # end
          # ```
          class Status < Metronome::Enum
            ENABLED = :enabled
            ARCHIVED = :archived
            DISABLED = :disabled

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # Type of the alert
          #
          # @example
          # ```ruby
          # case type
          # in :low_credit_balance_reached
          #   # ...
          # in :spend_threshold_reached
          #   # ...
          # in :monthly_invoice_total_spend_threshold_reached
          #   # ...
          # in :low_remaining_days_in_plan_reached
          #   # ...
          # in :low_remaining_credit_percentage_reached
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Type < Metronome::Enum
            LOW_CREDIT_BALANCE_REACHED = :low_credit_balance_reached
            SPEND_THRESHOLD_REACHED = :spend_threshold_reached
            MONTHLY_INVOICE_TOTAL_SPEND_THRESHOLD_REACHED = :monthly_invoice_total_spend_threshold_reached
            LOW_REMAINING_DAYS_IN_PLAN_REACHED = :low_remaining_days_in_plan_reached
            LOW_REMAINING_CREDIT_PERCENTAGE_REACHED = :low_remaining_credit_percentage_reached
            USAGE_THRESHOLD_REACHED = :usage_threshold_reached
            LOW_REMAINING_DAYS_FOR_COMMIT_SEGMENT_REACHED = :low_remaining_days_for_commit_segment_reached
            LOW_REMAINING_COMMIT_BALANCE_REACHED = :low_remaining_commit_balance_reached
            LOW_REMAINING_COMMIT_PERCENTAGE_REACHED = :low_remaining_commit_percentage_reached
            LOW_REMAINING_DAYS_FOR_CONTRACT_CREDIT_SEGMENT_REACHED = :low_remaining_days_for_contract_credit_segment_reached
            LOW_REMAINING_CONTRACT_CREDIT_BALANCE_REACHED = :low_remaining_contract_credit_balance_reached
            LOW_REMAINING_CONTRACT_CREDIT_PERCENTAGE_REACHED = :low_remaining_contract_credit_percentage_reached
            LOW_REMAINING_CONTRACT_CREDIT_AND_COMMIT_BALANCE_REACHED = :low_remaining_contract_credit_and_commit_balance_reached
            INVOICE_TOTAL_REACHED = :invoice_total_reached

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class CustomFieldFilter < Metronome::BaseModel
            # @!attribute entity
            #
            #   @return [Symbol, Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity]
            required :entity,
                     enum: -> { Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity }

            # @!attribute key
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #
            #   @return [String]
            required :value, String

            # @!parse
            #   # @param entity [Symbol, Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity]
            #   # @param key [String]
            #   # @param value [String]
            #   #
            #   def initialize(entity:, key:, value:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case entity
            # in :Contract
            #   # ...
            # in :Commit
            #   # ...
            # in :ContractCredit
            #   # ...
            # end
            # ```
            class Entity < Metronome::Enum
              CONTRACT = :Contract
              COMMIT = :Commit
              CONTRACT_CREDIT = :ContractCredit

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class GroupKeyFilter < Metronome::BaseModel
            # @!attribute key
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #
            #   @return [String]
            required :value, String

            # @!parse
            #   # Scopes alert evaluation to a specific presentation group key on individual line
            #   #   items. Only present for spend alerts.
            #   #
            #   # @param key [String]
            #   # @param value [String]
            #   #
            #   def initialize(key:, value:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end

        # @abstract
        #
        # The status of the customer alert. If the alert is archived, null will be
        #   returned.
        #
        # @example
        # ```ruby
        # case customer_status
        # in :ok
        #   # ...
        # in :in_alarm
        #   # ...
        # in :evaluating
        #   # ...
        # end
        # ```
        class CustomerStatus < Metronome::Enum
          OK = :ok
          IN_ALARM = :in_alarm
          EVALUATING = :evaluating

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end

    CustomerAlert = Customers::CustomerAlert
  end
end
