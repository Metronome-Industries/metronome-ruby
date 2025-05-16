# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Credits#list
        class CreditListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::CreditListResponse::Data>]
          required :data,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::CreditListResponse::Data] }

          # @!attribute next_page
          #
          #   @return [String, nil]
          required :next_page, String, nil?: true

          # @!method initialize(data:, next_page:)
          #   @param data [Array<MetronomeSDK::Models::V1::Customers::CreditListResponse::Data>]
          #   @param next_page [String, nil]

          class Data < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Product]
            required :product, -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Type]
            required :type, enum: -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Type }

            # @!attribute access_schedule
            #   The schedule that the customer will gain access to the credits.
            #
            #   @return [MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule, nil]
            optional :access_schedule,
                     -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule }

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
            #   @return [MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Contract }

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
            #   @return [Array<MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5>, nil]
            optional :ledger,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger] }

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
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::RateType, nil]
            optional :rate_type, enum: -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::RateType }

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
            #   {MetronomeSDK::Models::V1::Customers::CreditListResponse::Data} for more
            #   details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Type]
            #
            #   @param access_schedule [MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule] The schedule that the customer will gain access to the credits.
            #
            #   @param applicable_contract_ids [Array<String>]
            #
            #   @param applicable_product_ids [Array<String>]
            #
            #   @param applicable_product_tags [Array<String>]
            #
            #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
            #
            #   @param contract [MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Contract]
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param description [String]
            #
            #   @param ledger [Array<MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5>] A list of ordered events that impact the balance of a credit. For example, an in
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::RateType]
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

            # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data#product
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

            # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT = :CREDIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data#access_schedule
            class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule::ScheduleItem>]
              required :schedule_items,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule::ScheduleItem] }

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule::CreditType }

              # @!method initialize(schedule_items:, credit_type: nil)
              #   The schedule that the customer will gain access to the credits.
              #
              #   @param schedule_items [Array<MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule::ScheduleItem>]
              #   @param credit_type [MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule::CreditType]

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

              # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::AccessSchedule#credit_type
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

            # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data#contract
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

              variant -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0 }

              variant -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1 }

              variant -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2 }

              variant -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3 }

              variant -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4 }

              variant -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5 }

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
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0::Type]

                # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0#type
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
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1::Type]

                # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1#type
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
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2::Type]

                # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2#type
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
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3::Type]

                # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3#type
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
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4::Type]

                # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4#type
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
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5::Type]

                # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_MANUAL = :CREDIT_MANUAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4, MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5)]

              define_sorbet_constant!(:Variants) do
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember0,
                    MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember1,
                    MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember2,
                    MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember3,
                    MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember4,
                    MetronomeSDK::Models::V1::Customers::CreditListResponse::Data::Ledger::UnionMember5
                  )
                end
              end
            end

            # @see MetronomeSDK::Models::V1::Customers::CreditListResponse::Data#rate_type
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
    end
  end
end
