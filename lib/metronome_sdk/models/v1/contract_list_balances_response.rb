# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list_balances
      class ContractListBalancesResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListBalancesResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!method initialize(data:, next_page:)
        #   @param data [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1>]
        #   @param next_page [String, nil]

        module Data
          extend MetronomeSDK::Internal::Type::Union

          variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0 }

          variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1 }

          class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Product]
            required :product,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type]
            required :type,
                     enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type }

            # @!attribute access_schedule
            #   The schedule that the customer will gain access to the credits purposed with
            #   this commit.
            #
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule, nil]
            optional :access_schedule,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule }

            # @!attribute amount
            #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
            #
            #   @return [Float, nil]
            optional :amount, Float

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

            # @!attribute archived_at
            #   RFC 3339 timestamp indicating when the commit was archived. If not provided, the
            #   commit is not archived.
            #
            #   @return [Time, nil]
            optional :archived_at, Time

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
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Contract, nil]
            optional :contract,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Contract }

            # @!attribute custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute invoice_contract
            #   The contract that this commit will be billed on.
            #
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceContract, nil]
            optional :invoice_contract,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceContract }

            # @!attribute invoice_schedule
            #   The schedule that the customer will be invoiced for this commit.
            #
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule, nil]
            optional :invoice_schedule,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule }

            # @!attribute ledger
            #   A list of ordered events that impact the balance of a commit. For example, an
            #   invoice deduction or a rollover.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12>, nil]
            optional :ledger,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger] }

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
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType }

            # @!attribute rolled_over_from
            #
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RolledOverFrom, nil]
            optional :rolled_over_from,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RolledOverFrom }

            # @!attribute rollover_fraction
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

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

            # @!method initialize(id:, product:, type:, access_schedule: nil, amount: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Type]
            #
            #   @param access_schedule [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule] The schedule that the customer will gain access to the credits purposed with thi
            #
            #   @param amount [Float] (DEPRECATED) Use access_schedule + invoice_schedule instead.
            #
            #   @param applicable_contract_ids [Array<String>]
            #
            #   @param applicable_product_ids [Array<String>]
            #
            #   @param applicable_product_tags [Array<String>]
            #
            #   @param archived_at [Time] RFC 3339 timestamp indicating when the commit was archived. If not provided, the
            #
            #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
            #
            #   @param contract [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Contract]
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param description [String]
            #
            #   @param invoice_contract [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceContract] The contract that this commit will be billed on.
            #
            #   @param invoice_schedule [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule] The schedule that the customer will be invoiced for this commit.
            #
            #   @param ledger [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12>] A list of ordered events that impact the balance of a commit. For example, an in
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RateType]
            #
            #   @param rolled_over_from [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::RolledOverFrom]
            #
            #   @param rollover_fraction [Float]
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0#product
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

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID = :PREPAID
              POSTPAID = :POSTPAID

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0#access_schedule
            class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::ScheduleItem>]
              required :schedule_items,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::ScheduleItem] }

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::CreditType }

              # @!method initialize(schedule_items:, credit_type: nil)
              #   The schedule that the customer will gain access to the credits purposed with
              #   this commit.
              #
              #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::ScheduleItem>]
              #   @param credit_type [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule::CreditType]

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute ending_before
                #
                #   @return [Time]
                required :ending_before, Time

                # @!attribute starting_at
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(id:, amount:, ending_before:, starting_at:)
                #   @param id [String]
                #   @param amount [Float]
                #   @param ending_before [Time]
                #   @param starting_at [Time]
              end

              # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::AccessSchedule#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
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

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0#invoice_contract
            class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   The contract that this commit will be billed on.
              #
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0#invoice_schedule
            class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::CreditType }

              # @!attribute schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::ScheduleItem>, nil]
              optional :schedule_items,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::ScheduleItem] }

              # @!method initialize(credit_type: nil, schedule_items: nil)
              #   The schedule that the customer will be invoiced for this commit.
              #
              #   @param credit_type [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::CreditType]
              #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule::ScheduleItem>]

              # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::InvoiceSchedule#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
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

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute invoice_id
                #
                #   @return [String]
                required :invoice_id, String

                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                #   @param id [String]
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param quantity [Float]
                #   @param timestamp [Time]
                #   @param unit_price [Float]
              end
            end

            module Ledger
              extend MetronomeSDK::Internal::Type::Union

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12 }

              class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute new_contract_id
                #
                #   @return [String]
                required :new_contract_id, String

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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type }

                # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param new_contract_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember6 < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type }

                # @!method initialize(amount:, timestamp:, type:)
                #   @param amount [Float]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember7 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember8 < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute new_contract_id
                #
                #   @return [String]
                required :new_contract_id, String

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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type }

                # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param new_contract_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember9 < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute invoice_id
                #
                #   @return [String]
                required :invoice_id, String

                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type }

                # @!method initialize(amount:, invoice_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember10 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember11 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember12 < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type }

                # @!method initialize(amount:, timestamp:, type:)
                #   @param amount [Float]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12)]

              define_sorbet_constant!(:Variants) do
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember0,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember1,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember2,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember3,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember4,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember5,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember6,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember7,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember8,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember9,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember10,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember11,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0::Ledger::UnionMember12
                  )
                end
              end
            end

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0#rolled_over_from
            class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute commit_id
              #
              #   @return [String]
              required :commit_id, String

              # @!attribute contract_id
              #
              #   @return [String]
              required :contract_id, String

              # @!method initialize(commit_id:, contract_id:)
              #   @param commit_id [String]
              #   @param contract_id [String]
            end
          end

          class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Product]
            required :product,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type]
            required :type,
                     enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type }

            # @!attribute access_schedule
            #   The schedule that the customer will gain access to the credits.
            #
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule, nil]
            optional :access_schedule,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule }

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
            #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Contract, nil]
            optional :contract,
                     -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Contract }

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
            #   @return [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5>, nil]
            optional :ledger,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger] }

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
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType }

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
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Type]
            #
            #   @param access_schedule [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule] The schedule that the customer will gain access to the credits.
            #
            #   @param applicable_contract_ids [Array<String>]
            #
            #   @param applicable_product_ids [Array<String>]
            #
            #   @param applicable_product_tags [Array<String>]
            #
            #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
            #
            #   @param contract [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Contract]
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param description [String]
            #
            #   @param ledger [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5>] A list of ordered events that impact the balance of a credit. For example, an in
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::RateType]
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1#product
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

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT = :CREDIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1#access_schedule
            class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::ScheduleItem>]
              required :schedule_items,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::ScheduleItem] }

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::CreditType }

              # @!method initialize(schedule_items:, credit_type: nil)
              #   The schedule that the customer will gain access to the credits.
              #
              #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::ScheduleItem>]
              #   @param credit_type [MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule::CreditType]

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute ending_before
                #
                #   @return [Time]
                required :ending_before, Time

                # @!attribute starting_at
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(id:, amount:, ending_before:, starting_at:)
                #   @param id [String]
                #   @param amount [Float]
                #   @param ending_before [Time]
                #   @param starting_at [Time]
              end

              # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::AccessSchedule#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
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

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1#contract
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

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4 }

              variant -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5 }

              class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_EXPIRATION = :CREDIT_EXPIRATION

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_CANCELED = :CREDIT_CANCELED

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_CREDITED = :CREDIT_CREDITED

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5::Type]

                # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_MANUAL = :CREDIT_MANUAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5)]

              define_sorbet_constant!(:Variants) do
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember0,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember1,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember2,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember3,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember4,
                    MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1::Ledger::UnionMember5
                  )
                end
              end
            end

            # @see MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0, MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1)]

          define_sorbet_constant!(:Variants) do
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember0,
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::UnionMember1
              )
            end
          end
        end
      end
    end
  end
end
