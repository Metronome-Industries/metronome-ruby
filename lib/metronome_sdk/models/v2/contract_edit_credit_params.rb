# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#edit_credit
      class ContractEditCreditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute credit_id
        #   ID of the credit to edit
        #
        #   @return [String]
        required :credit_id, String

        # @!attribute customer_id
        #   ID of the customer whose credit is being edited
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute access_schedule
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule, nil]
        optional :access_schedule, -> { MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule }

        # @!attribute applicable_product_ids
        #   Which products the credit applies to. If both applicable_product_ids and
        #   applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute applicable_product_tags
        #   Which tags the credit applies to. If both applicable_product_ids and
        #   applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute product_id
        #
        #   @return [String, nil]
        optional :product_id, String

        # @!attribute specifiers
        #   List of filters that determine what kind of customer usage draws down a commit
        #   or credit. A customer's usage needs to meet the condition of at least one of the
        #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
        #   be used together with `applicable_product_ids` or `applicable_product_tags`.
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::Specifier>, nil]
        optional :specifiers,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCreditParams::Specifier]
                 }

        # @!method initialize(credit_id:, customer_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, product_id: nil, specifiers: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::ContractEditCreditParams} for more details.
        #
        #   @param credit_id [String] ID of the credit to edit
        #
        #   @param customer_id [String] ID of the customer whose credit is being edited
        #
        #   @param access_schedule [MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule]
        #
        #   @param applicable_product_ids [Array<String>, nil] Which products the credit applies to. If both applicable_product_ids and applica
        #
        #   @param applicable_product_tags [Array<String>, nil] Which tags the credit applies to. If both applicable*product_ids and applicable*
        #
        #   @param product_id [String]
        #
        #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute add_schedule_items
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem>, nil]
          optional :add_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem]
                   }

          # @!attribute remove_schedule_items
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem>, nil]
          optional :remove_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem]
                   }

          # @!attribute update_schedule_items
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem>, nil]
          optional :update_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem]
                   }

          # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
          #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem>]
          #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem>]
          #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem>]

          class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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

            # @!method initialize(amount:, ending_before:, starting_at:)
            #   @param amount [Float]
            #   @param ending_before [Time]
            #   @param starting_at [Time]
          end

          class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end

          class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!method initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
            #   @param id [String]
            #   @param amount [Float]
            #   @param ending_before [Time]
            #   @param starting_at [Time]
          end
        end

        class Specifier < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute presentation_group_values
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute pricing_group_values
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute product_id
          #   If provided, the specifier will only apply to the product with the specified ID.
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!attribute product_tags
          #   If provided, the specifier will only apply to products with all the specified
          #   tags.
          #
          #   @return [Array<String>, nil]
          optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditCreditParams::Specifier} for more
          #   details.
          #
          #   @param presentation_group_values [Hash{Symbol=>String}]
          #
          #   @param pricing_group_values [Hash{Symbol=>String}]
          #
          #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
          #
          #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
        end
      end
    end
  end
end
