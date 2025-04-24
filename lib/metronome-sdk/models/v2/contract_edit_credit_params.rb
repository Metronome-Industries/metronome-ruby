# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class ContractEditCreditParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

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

        # @!attribute [r] access_schedule
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule, nil]
        optional :access_schedule, -> { MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule }

        # @!parse
        #   # @return [MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule]
        #   attr_writer :access_schedule

        # @!attribute applicable_product_ids
        #   Which products the credit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::ArrayOf[String], nil?: true

        # @!attribute applicable_product_tags
        #   Which tags the credit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::ArrayOf[String], nil?: true

        # @!attribute [r] product_id
        #
        #   @return [String, nil]
        optional :product_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :product_id

        # @!parse
        #   # @param credit_id [String]
        #   # @param customer_id [String]
        #   # @param access_schedule [MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule]
        #   # @param applicable_product_ids [Array<String>, nil]
        #   # @param applicable_product_tags [Array<String>, nil]
        #   # @param product_id [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     credit_id:,
        #     customer_id:,
        #     access_schedule: nil,
        #     applicable_product_ids: nil,
        #     applicable_product_tags: nil,
        #     product_id: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class AccessSchedule < MetronomeSDK::BaseModel
          # @!attribute [r] add_schedule_items
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem>, nil]
          optional :add_schedule_items,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem>]
          #   attr_writer :add_schedule_items

          # @!attribute [r] remove_schedule_items
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem>, nil]
          optional :remove_schedule_items,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem>]
          #   attr_writer :remove_schedule_items

          # @!attribute [r] update_schedule_items
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem>, nil]
          optional :update_schedule_items,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem>]
          #   attr_writer :update_schedule_items

          # @!parse
          #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem>]
          #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem>]
          #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem>]
          #   #
          #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class AddScheduleItem < MetronomeSDK::BaseModel
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

            # @!parse
            #   # @param amount [Float]
            #   # @param ending_before [Time]
            #   # @param starting_at [Time]
            #   #
            #   def initialize(amount:, ending_before:, starting_at:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class RemoveScheduleItem < MetronomeSDK::BaseModel
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

          class UpdateScheduleItem < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute [r] amount
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :amount

            # @!attribute [r] ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :starting_at

            # @!parse
            #   # @param id [String]
            #   # @param amount [Float]
            #   # @param ending_before [Time]
            #   # @param starting_at [Time]
            #   #
            #   def initialize(id:, amount: nil, ending_before: nil, starting_at: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end
        end
      end
    end
  end
end
