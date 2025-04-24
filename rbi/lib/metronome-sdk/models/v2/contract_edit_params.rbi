# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def contract_id
        end

        sig { params(_: String).returns(String) }
        def contract_id=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit])) }
        def add_commits
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit])
        end
        def add_commits=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit])) }
        def add_credits
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit])
        end
        def add_credits=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount])) }
        def add_discounts
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount])
        end
        def add_discounts=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride])) }
        def add_overrides
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride])
        end
        def add_overrides=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService])) }
        def add_professional_services
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService])
        end
        def add_professional_services=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit])) }
        def add_recurring_commits
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit])
        end
        def add_recurring_commits=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit])) }
        def add_recurring_credits
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit])
        end
        def add_recurring_credits=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty])) }
        def add_reseller_royalties
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty])
        end
        def add_reseller_royalties=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge])) }
        def add_scheduled_charges
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge])
        end
        def add_scheduled_charges=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration)) }
        def add_spend_threshold_configuration
        end

        sig do
          params(_: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration)
            .returns(MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration)
        end
        def add_spend_threshold_configuration=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit])) }
        def archive_commits
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit])
        end
        def archive_commits=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit])) }
        def archive_credits
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit])
        end
        def archive_credits=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge])) }
        def archive_scheduled_charges
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge])
        end
        def archive_scheduled_charges=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride])) }
        def remove_overrides
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride])
        end
        def remove_overrides=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit])) }
        def update_commits
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit])
        end
        def update_commits=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit])) }
        def update_credits
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit])
        end
        def update_credits=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge])) }
        def update_scheduled_charges
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge])
        end
        def update_scheduled_charges=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration)) }
        def update_spend_threshold_configuration
        end

        sig do
          params(_: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration)
            .returns(MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration)
        end
        def update_spend_threshold_configuration=(_)
        end

        sig do
          params(
            contract_id: String,
            customer_id: String,
            add_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit],
            add_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit],
            add_discounts: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount],
            add_overrides: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride],
            add_professional_services: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService],
            add_recurring_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit],
            add_recurring_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit],
            add_reseller_royalties: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty],
            add_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge],
            add_spend_threshold_configuration: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration,
            archive_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit],
            archive_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit],
            archive_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge],
            remove_overrides: T::Array[MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride],
            update_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit],
            update_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit],
            update_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge],
            update_spend_threshold_configuration: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          contract_id:,
          customer_id:,
          add_commits: nil,
          add_credits: nil,
          add_discounts: nil,
          add_overrides: nil,
          add_professional_services: nil,
          add_recurring_commits: nil,
          add_recurring_credits: nil,
          add_reseller_royalties: nil,
          add_scheduled_charges: nil,
          add_spend_threshold_configuration: nil,
          archive_commits: nil,
          archive_credits: nil,
          archive_scheduled_charges: nil,
          remove_overrides: nil,
          update_commits: nil,
          update_credits: nil,
          update_scheduled_charges: nil,
          update_spend_threshold_configuration: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                contract_id: String,
                customer_id: String,
                add_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit],
                add_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit],
                add_discounts: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount],
                add_overrides: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride],
                add_professional_services: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService],
                add_recurring_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit],
                add_recurring_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit],
                add_reseller_royalties: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty],
                add_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge],
                add_spend_threshold_configuration: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration,
                archive_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit],
                archive_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit],
                archive_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge],
                remove_overrides: T::Array[MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride],
                update_commits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit],
                update_credits: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit],
                update_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge],
                update_spend_threshold_configuration: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end

        class AddCommit < MetronomeSDK::BaseModel
          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule)) }
          def access_schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule)
          end
          def access_schedule=(_)
          end

          sig { returns(T.nilable(Float)) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule)) }
          def invoice_schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule)
          end
          def invoice_schedule=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig)) }
          def payment_gate_config
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig)
          end
          def payment_gate_config=(_)
          end

          sig { returns(T.nilable(Float)) }
          def priority
          end

          sig { params(_: Float).returns(Float) }
          def priority=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def rate_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def rate_type=(_)
          end

          sig { returns(T.nilable(Float)) }
          def rollover_fraction
          end

          sig { params(_: Float).returns(Float) }
          def rollover_fraction=(_)
          end

          sig { returns(T.nilable(String)) }
          def temporary_id
          end

          sig { params(_: String).returns(String) }
          def temporary_id=(_)
          end

          sig do
            params(
              product_id: String,
              type: Symbol,
              access_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule,
              amount: Float,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule,
              name: String,
              netsuite_sales_order_id: String,
              payment_gate_config: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig,
              priority: Float,
              rate_type: Symbol,
              rollover_fraction: Float,
              temporary_id: String
            )
              .void
          end
          def initialize(
            product_id:,
            type:,
            access_schedule: nil,
            amount: nil,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            custom_fields: nil,
            description: nil,
            invoice_schedule: nil,
            name: nil,
            netsuite_sales_order_id: nil,
            payment_gate_config: nil,
            priority: nil,
            rate_type: nil,
            rollover_fraction: nil,
            temporary_id: nil
          )
          end

          sig do
            override
              .returns(
                {
                  product_id: String,
                  type: Symbol,
                  access_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule,
                  amount: Float,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  invoice_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule,
                  name: String,
                  netsuite_sales_order_id: String,
                  payment_gate_config: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig,
                  priority: Float,
                  rate_type: Symbol,
                  rollover_fraction: Float,
                  temporary_id: String
                }
              )
          end
          def to_hash
          end

          class Type < MetronomeSDK::Enum
            abstract!

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class AccessSchedule < MetronomeSDK::BaseModel
            sig { returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem]) }
            def schedule_items
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem])
                .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem])
            end
            def schedule_items=(_)
            end

            sig { returns(T.nilable(String)) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig do
              params(
                schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem],
                credit_type_id: String
              )
                .void
            end
            def initialize(schedule_items:, credit_type_id: nil)
            end

            sig do
              override
                .returns(
                  {
                    schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem],
                    credit_type_id: String
                  }
                )
            end
            def to_hash
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(Time) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
              def initialize(amount:, ending_before:, starting_at:)
              end

              sig { override.returns({amount: Float, ending_before: Time, starting_at: Time}) }
              def to_hash
              end
            end
          end

          class InvoiceSchedule < MetronomeSDK::BaseModel
            sig { returns(T.nilable(String)) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule)
              )
            end
            def recurring_schedule
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule)
                .returns(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule)
            end
            def recurring_schedule=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem]
                )
              )
            end
            def schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem]
              )
                .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem])
            end
            def schedule_items=(_)
            end

            sig do
              params(
                credit_type_id: String,
                recurring_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule,
                schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem]
              )
                .void
            end
            def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            end

            sig do
              override
                .returns(
                  {
                    credit_type_id: String,
                    recurring_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule,
                    schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem]
                  }
                )
            end
            def to_hash
            end

            class RecurringSchedule < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def amount_distribution
              end

              sig { params(_: Symbol).returns(Symbol) }
              def amount_distribution=(_)
              end

              sig { returns(Time) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(Symbol) }
              def frequency
              end

              sig { params(_: Symbol).returns(Symbol) }
              def frequency=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig do
                params(
                  amount_distribution: Symbol,
                  ending_before: Time,
                  frequency: Symbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                )
                  .void
              end
              def initialize(
                amount_distribution:,
                ending_before:,
                frequency:,
                starting_at:,
                amount: nil,
                quantity: nil,
                unit_price: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      amount_distribution: Symbol,
                      ending_before: Time,
                      frequency: Symbol,
                      starting_at: Time,
                      amount: Float,
                      quantity: Float,
                      unit_price: Float
                    }
                  )
              end
              def to_hash
              end

              class AmountDistribution < MetronomeSDK::Enum
                abstract!

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class Frequency < MetronomeSDK::Enum
                abstract!

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Time) }
              def timestamp
              end

              sig { params(_: Time).returns(Time) }
              def timestamp=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
              def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
              end

              sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
              def to_hash
              end
            end
          end

          class PaymentGateConfig < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def payment_gate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def payment_gate_type=(_)
            end

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig)
              )
            end
            def stripe_config
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig)
                .returns(MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig)
            end
            def stripe_config=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def tax_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def tax_type=(_)
            end

            sig do
              params(
                payment_gate_type: Symbol,
                stripe_config: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig,
                tax_type: Symbol
              )
                .void
            end
            def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            end

            sig do
              override
                .returns(
                  {
                    payment_gate_type: Symbol,
                    stripe_config: MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig,
                    tax_type: Symbol
                  }
                )
            end
            def to_hash
            end

            class PaymentGateType < MetronomeSDK::Enum
              abstract!

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class StripeConfig < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def payment_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def payment_type=(_)
              end

              sig { params(payment_type: Symbol).void }
              def initialize(payment_type:)
              end

              sig { override.returns({payment_type: Symbol}) }
              def to_hash
              end

              class PaymentType < MetronomeSDK::Enum
                abstract!

                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class TaxType < MetronomeSDK::Enum
              abstract!

              NONE = :NONE
              STRIPE = :STRIPE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class RateType < MetronomeSDK::Enum
            abstract!

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class AddCredit < MetronomeSDK::BaseModel
          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule) }
          def access_schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule)
          end
          def access_schedule=(_)
          end

          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def priority
          end

          sig { params(_: Float).returns(Float) }
          def priority=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def rate_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def rate_type=(_)
          end

          sig do
            params(
              access_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule,
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type: Symbol
            )
              .void
          end
          def initialize(
            access_schedule:,
            product_id:,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            custom_fields: nil,
            description: nil,
            name: nil,
            netsuite_sales_order_id: nil,
            priority: nil,
            rate_type: nil
          )
          end

          sig do
            override
              .returns(
                {
                  access_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule,
                  product_id: String,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type: Symbol
                }
              )
          end
          def to_hash
          end

          class AccessSchedule < MetronomeSDK::BaseModel
            sig { returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem]) }
            def schedule_items
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem])
                .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem])
            end
            def schedule_items=(_)
            end

            sig { returns(T.nilable(String)) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig do
              params(
                schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem],
                credit_type_id: String
              )
                .void
            end
            def initialize(schedule_items:, credit_type_id: nil)
            end

            sig do
              override
                .returns(
                  {
                    schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem],
                    credit_type_id: String
                  }
                )
            end
            def to_hash
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(Time) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
              def initialize(amount:, ending_before:, starting_at:)
              end

              sig { override.returns({amount: Float, ending_before: Time, starting_at: Time}) }
              def to_hash
              end
            end
          end

          class RateType < MetronomeSDK::Enum
            abstract!

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class AddDiscount < MetronomeSDK::BaseModel
          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule) }
          def schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule)
          end
          def schedule=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig do
            params(
              product_id: String,
              schedule: MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule,
              custom_fields: T::Hash[Symbol, String],
              name: String,
              netsuite_sales_order_id: String
            )
              .void
          end
          def initialize(product_id:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
          end

          sig do
            override
              .returns(
                {
                  product_id: String,
                  schedule: MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule,
                  custom_fields: T::Hash[Symbol, String],
                  name: String,
                  netsuite_sales_order_id: String
                }
              )
          end
          def to_hash
          end

          class Schedule < MetronomeSDK::BaseModel
            sig { returns(T.nilable(String)) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule)) }
            def recurring_schedule
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule)
                .returns(MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule)
            end
            def recurring_schedule=(_)
            end

            sig do
              returns(
                T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem])
              )
            end
            def schedule_items
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem])
                .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem])
            end
            def schedule_items=(_)
            end

            sig do
              params(
                credit_type_id: String,
                recurring_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule,
                schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem]
              )
                .void
            end
            def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            end

            sig do
              override
                .returns(
                  {
                    credit_type_id: String,
                    recurring_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule,
                    schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem]
                  }
                )
            end
            def to_hash
            end

            class RecurringSchedule < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def amount_distribution
              end

              sig { params(_: Symbol).returns(Symbol) }
              def amount_distribution=(_)
              end

              sig { returns(Time) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(Symbol) }
              def frequency
              end

              sig { params(_: Symbol).returns(Symbol) }
              def frequency=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig do
                params(
                  amount_distribution: Symbol,
                  ending_before: Time,
                  frequency: Symbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                )
                  .void
              end
              def initialize(
                amount_distribution:,
                ending_before:,
                frequency:,
                starting_at:,
                amount: nil,
                quantity: nil,
                unit_price: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      amount_distribution: Symbol,
                      ending_before: Time,
                      frequency: Symbol,
                      starting_at: Time,
                      amount: Float,
                      quantity: Float,
                      unit_price: Float
                    }
                  )
              end
              def to_hash
              end

              class AmountDistribution < MetronomeSDK::Enum
                abstract!

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class Frequency < MetronomeSDK::Enum
                abstract!

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Time) }
              def timestamp
              end

              sig { params(_: Time).returns(Time) }
              def timestamp=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
              def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
              end

              sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
              def to_hash
              end
            end
          end
        end

        class AddOverride < MetronomeSDK::BaseModel
          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def entitled
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def entitled=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_commit_specific
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_commit_specific=(_)
          end

          sig { returns(T.nilable(Float)) }
          def multiplier
          end

          sig { params(_: Float).returns(Float) }
          def multiplier=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier])) }
          def override_specifiers
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier])
          end
          def override_specifiers=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate)) }
          def overwrite_rate
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate)
          end
          def overwrite_rate=(_)
          end

          sig { returns(T.nilable(Float)) }
          def priority
          end

          sig { params(_: Float).returns(Float) }
          def priority=(_)
          end

          sig { returns(T.nilable(String)) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def target
          end

          sig { params(_: Symbol).returns(Symbol) }
          def target=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier])) }
          def tiers
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier])
          end
          def tiers=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              starting_at: Time,
              applicable_product_tags: T::Array[String],
              ending_before: Time,
              entitled: T::Boolean,
              is_commit_specific: T::Boolean,
              multiplier: Float,
              override_specifiers: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier],
              overwrite_rate: MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate,
              priority: Float,
              product_id: String,
              target: Symbol,
              tiers: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier],
              type: Symbol
            )
              .void
          end
          def initialize(
            starting_at:,
            applicable_product_tags: nil,
            ending_before: nil,
            entitled: nil,
            is_commit_specific: nil,
            multiplier: nil,
            override_specifiers: nil,
            overwrite_rate: nil,
            priority: nil,
            product_id: nil,
            target: nil,
            tiers: nil,
            type: nil
          )
          end

          sig do
            override
              .returns(
                {
                  starting_at: Time,
                  applicable_product_tags: T::Array[String],
                  ending_before: Time,
                  entitled: T::Boolean,
                  is_commit_specific: T::Boolean,
                  multiplier: Float,
                  override_specifiers: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier],
                  overwrite_rate: MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate,
                  priority: Float,
                  product_id: String,
                  target: Symbol,
                  tiers: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier],
                  type: Symbol
                }
              )
          end
          def to_hash
          end

          class OverrideSpecifier < MetronomeSDK::BaseModel
            sig { returns(T.nilable(T::Array[String])) }
            def commit_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def commit_ids=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def presentation_group_values
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def presentation_group_values=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def pricing_group_values
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def pricing_group_values=(_)
            end

            sig { returns(T.nilable(String)) }
            def product_id
            end

            sig { params(_: String).returns(String) }
            def product_id=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def product_tags
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def product_tags=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def recurring_commit_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def recurring_commit_ids=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def recurring_credit_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def recurring_credit_ids=(_)
            end

            sig do
              params(
                commit_ids: T::Array[String],
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String],
                recurring_commit_ids: T::Array[String],
                recurring_credit_ids: T::Array[String]
              )
                .void
            end
            def initialize(
              commit_ids: nil,
              presentation_group_values: nil,
              pricing_group_values: nil,
              product_id: nil,
              product_tags: nil,
              recurring_commit_ids: nil,
              recurring_credit_ids: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    commit_ids: T::Array[String],
                    presentation_group_values: T::Hash[Symbol, String],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String],
                    recurring_commit_ids: T::Array[String],
                    recurring_credit_ids: T::Array[String]
                  }
                )
            end
            def to_hash
            end
          end

          class OverwriteRate < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def rate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def rate_type=(_)
            end

            sig { returns(T.nilable(String)) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            def custom_rate
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def custom_rate=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_prorated
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_prorated=(_)
            end

            sig { returns(T.nilable(Float)) }
            def price
            end

            sig { params(_: Float).returns(Float) }
            def price=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Tier])) }
            def tiers
            end

            sig { params(_: T::Array[MetronomeSDK::Models::Tier]).returns(T::Array[MetronomeSDK::Models::Tier]) }
            def tiers=(_)
            end

            sig do
              params(
                rate_type: Symbol,
                credit_type_id: String,
                custom_rate: T::Hash[Symbol, T.anything],
                is_prorated: T::Boolean,
                price: Float,
                quantity: Float,
                tiers: T::Array[MetronomeSDK::Models::Tier]
              )
                .void
            end
            def initialize(
              rate_type:,
              credit_type_id: nil,
              custom_rate: nil,
              is_prorated: nil,
              price: nil,
              quantity: nil,
              tiers: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    rate_type: Symbol,
                    credit_type_id: String,
                    custom_rate: T::Hash[Symbol, T.anything],
                    is_prorated: T::Boolean,
                    price: Float,
                    quantity: Float,
                    tiers: T::Array[MetronomeSDK::Models::Tier]
                  }
                )
            end
            def to_hash
            end

            class RateType < MetronomeSDK::Enum
              abstract!

              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              CUSTOM = :CUSTOM

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class Target < MetronomeSDK::Enum
            abstract!

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Tier < MetronomeSDK::BaseModel
            sig { returns(Float) }
            def multiplier
            end

            sig { params(_: Float).returns(Float) }
            def multiplier=(_)
            end

            sig { returns(T.nilable(Float)) }
            def size
            end

            sig { params(_: Float).returns(Float) }
            def size=(_)
            end

            sig { params(multiplier: Float, size: Float).void }
            def initialize(multiplier:, size: nil)
            end

            sig { override.returns({multiplier: Float, size: Float}) }
            def to_hash
            end
          end

          class Type < MetronomeSDK::Enum
            abstract!

            OVERWRITE = :OVERWRITE
            MULTIPLIER = :MULTIPLIER
            TIERED = :TIERED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class AddProfessionalService < MetronomeSDK::BaseModel
          sig { returns(Float) }
          def max_amount
          end

          sig { params(_: Float).returns(Float) }
          def max_amount=(_)
          end

          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(Float) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(Float) }
          def unit_price
          end

          sig { params(_: Float).returns(Float) }
          def unit_price=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def custom_fields=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig do
            params(
              max_amount: Float,
              product_id: String,
              quantity: Float,
              unit_price: Float,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              netsuite_sales_order_id: String
            )
              .void
          end
          def initialize(
            max_amount:,
            product_id:,
            quantity:,
            unit_price:,
            custom_fields: nil,
            description: nil,
            netsuite_sales_order_id: nil
          )
          end

          sig do
            override
              .returns(
                {
                  max_amount: Float,
                  product_id: String,
                  quantity: Float,
                  unit_price: Float,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  netsuite_sales_order_id: String
                }
              )
          end
          def to_hash
          end
        end

        class AddRecurringCommit < MetronomeSDK::BaseModel
          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount) }
          def access_amount
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount)
          end
          def access_amount=(_)
          end

          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration) }
          def commit_duration
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration)
          end
          def commit_duration=(_)
          end

          sig { returns(Float) }
          def priority
          end

          sig { params(_: Float).returns(Float) }
          def priority=(_)
          end

          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount)) }
          def invoice_amount
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount)
          end
          def invoice_amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def proration
          end

          sig { params(_: Symbol).returns(Symbol) }
          def proration=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def rate_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def rate_type=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def recurrence_frequency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def recurrence_frequency=(_)
          end

          sig { returns(T.nilable(Float)) }
          def rollover_fraction
          end

          sig { params(_: Float).returns(Float) }
          def rollover_fraction=(_)
          end

          sig { returns(T.nilable(String)) }
          def temporary_id
          end

          sig { params(_: String).returns(String) }
          def temporary_id=(_)
          end

          sig do
            params(
              access_amount: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount,
              commit_duration: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration,
              priority: Float,
              product_id: String,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_before: Time,
              invoice_amount: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount,
              name: String,
              netsuite_sales_order_id: String,
              proration: Symbol,
              rate_type: Symbol,
              recurrence_frequency: Symbol,
              rollover_fraction: Float,
              temporary_id: String
            )
              .void
          end
          def initialize(
            access_amount:,
            commit_duration:,
            priority:,
            product_id:,
            starting_at:,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            description: nil,
            ending_before: nil,
            invoice_amount: nil,
            name: nil,
            netsuite_sales_order_id: nil,
            proration: nil,
            rate_type: nil,
            recurrence_frequency: nil,
            rollover_fraction: nil,
            temporary_id: nil
          )
          end

          sig do
            override
              .returns(
                {
                  access_amount: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount,
                  commit_duration: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration,
                  priority: Float,
                  product_id: String,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  ending_before: Time,
                  invoice_amount: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration: Symbol,
                  rate_type: Symbol,
                  recurrence_frequency: Symbol,
                  rollover_fraction: Float,
                  temporary_id: String
                }
              )
          end
          def to_hash
          end

          class AccessAmount < MetronomeSDK::BaseModel
            sig { returns(String) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Float) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
            def initialize(credit_type_id:, quantity:, unit_price:)
            end

            sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
            def to_hash
            end
          end

          class CommitDuration < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def unit=(_)
            end

            sig { returns(Float) }
            def value
            end

            sig { params(_: Float).returns(Float) }
            def value=(_)
            end

            sig { params(unit: Symbol, value: Float).void }
            def initialize(unit:, value:)
            end

            sig { override.returns({unit: Symbol, value: Float}) }
            def to_hash
            end

            class Unit < MetronomeSDK::Enum
              abstract!

              PERIODS = :PERIODS

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class InvoiceAmount < MetronomeSDK::BaseModel
            sig { returns(String) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Float) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
            def initialize(credit_type_id:, quantity:, unit_price:)
            end

            sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
            def to_hash
            end
          end

          class Proration < MetronomeSDK::Enum
            abstract!

            NONE = :NONE
            FIRST = :FIRST
            LAST = :LAST
            FIRST_AND_LAST = :FIRST_AND_LAST

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class RateType < MetronomeSDK::Enum
            abstract!

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class RecurrenceFrequency < MetronomeSDK::Enum
            abstract!

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class AddRecurringCredit < MetronomeSDK::BaseModel
          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount) }
          def access_amount
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount)
          end
          def access_amount=(_)
          end

          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration) }
          def commit_duration
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration)
          end
          def commit_duration=(_)
          end

          sig { returns(Float) }
          def priority
          end

          sig { params(_: Float).returns(Float) }
          def priority=(_)
          end

          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def proration
          end

          sig { params(_: Symbol).returns(Symbol) }
          def proration=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def rate_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def rate_type=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def recurrence_frequency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def recurrence_frequency=(_)
          end

          sig { returns(T.nilable(Float)) }
          def rollover_fraction
          end

          sig { params(_: Float).returns(Float) }
          def rollover_fraction=(_)
          end

          sig { returns(T.nilable(String)) }
          def temporary_id
          end

          sig { params(_: String).returns(String) }
          def temporary_id=(_)
          end

          sig do
            params(
              access_amount: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount,
              commit_duration: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration,
              priority: Float,
              product_id: String,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_before: Time,
              name: String,
              netsuite_sales_order_id: String,
              proration: Symbol,
              rate_type: Symbol,
              recurrence_frequency: Symbol,
              rollover_fraction: Float,
              temporary_id: String
            )
              .void
          end
          def initialize(
            access_amount:,
            commit_duration:,
            priority:,
            product_id:,
            starting_at:,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            description: nil,
            ending_before: nil,
            name: nil,
            netsuite_sales_order_id: nil,
            proration: nil,
            rate_type: nil,
            recurrence_frequency: nil,
            rollover_fraction: nil,
            temporary_id: nil
          )
          end

          sig do
            override
              .returns(
                {
                  access_amount: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount,
                  commit_duration: MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration,
                  priority: Float,
                  product_id: String,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  ending_before: Time,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration: Symbol,
                  rate_type: Symbol,
                  recurrence_frequency: Symbol,
                  rollover_fraction: Float,
                  temporary_id: String
                }
              )
          end
          def to_hash
          end

          class AccessAmount < MetronomeSDK::BaseModel
            sig { returns(String) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Float) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
            def initialize(credit_type_id:, quantity:, unit_price:)
            end

            sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
            def to_hash
            end
          end

          class CommitDuration < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def unit=(_)
            end

            sig { returns(Float) }
            def value
            end

            sig { params(_: Float).returns(Float) }
            def value=(_)
            end

            sig { params(unit: Symbol, value: Float).void }
            def initialize(unit:, value:)
            end

            sig { override.returns({unit: Symbol, value: Float}) }
            def to_hash
            end

            class Unit < MetronomeSDK::Enum
              abstract!

              PERIODS = :PERIODS

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class Proration < MetronomeSDK::Enum
            abstract!

            NONE = :NONE
            FIRST = :FIRST
            LAST = :LAST
            FIRST_AND_LAST = :FIRST_AND_LAST

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class RateType < MetronomeSDK::Enum
            abstract!

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class RecurrenceFrequency < MetronomeSDK::Enum
            abstract!

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class AddResellerRoyalty < MetronomeSDK::BaseModel
          sig { returns(Symbol) }
          def reseller_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reseller_type=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions)) }
          def aws_options
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions)
          end
          def aws_options=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fraction
          end

          sig { params(_: Float).returns(Float) }
          def fraction=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions)) }
          def gcp_options
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions)
          end
          def gcp_options=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_reseller_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_reseller_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def reseller_contract_value
          end

          sig { params(_: Float).returns(Float) }
          def reseller_contract_value=(_)
          end

          sig { returns(T.nilable(Time)) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig do
            params(
              reseller_type: Symbol,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              aws_options: MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions,
              ending_before: T.nilable(Time),
              fraction: Float,
              gcp_options: MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions,
              netsuite_reseller_id: String,
              reseller_contract_value: Float,
              starting_at: Time
            )
              .void
          end
          def initialize(
            reseller_type:,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            aws_options: nil,
            ending_before: nil,
            fraction: nil,
            gcp_options: nil,
            netsuite_reseller_id: nil,
            reseller_contract_value: nil,
            starting_at: nil
          )
          end

          sig do
            override
              .returns(
                {
                  reseller_type: Symbol,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  aws_options: MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions,
                  ending_before: T.nilable(Time),
                  fraction: Float,
                  gcp_options: MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions,
                  netsuite_reseller_id: String,
                  reseller_contract_value: Float,
                  starting_at: Time
                }
              )
          end
          def to_hash
          end

          class ResellerType < MetronomeSDK::Enum
            abstract!

            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class AwsOptions < MetronomeSDK::BaseModel
            sig { returns(T.nilable(String)) }
            def aws_account_number
            end

            sig { params(_: String).returns(String) }
            def aws_account_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def aws_offer_id
            end

            sig { params(_: String).returns(String) }
            def aws_offer_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def aws_payer_reference_id
            end

            sig { params(_: String).returns(String) }
            def aws_payer_reference_id=(_)
            end

            sig do
              params(aws_account_number: String, aws_offer_id: String, aws_payer_reference_id: String).void
            end
            def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil)
            end

            sig do
              override.returns(
                {
                  aws_account_number: String,
                  aws_offer_id: String,
                  aws_payer_reference_id: String
                }
              )
            end
            def to_hash
            end
          end

          class GcpOptions < MetronomeSDK::BaseModel
            sig { returns(T.nilable(String)) }
            def gcp_account_id
            end

            sig { params(_: String).returns(String) }
            def gcp_account_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def gcp_offer_id
            end

            sig { params(_: String).returns(String) }
            def gcp_offer_id=(_)
            end

            sig { params(gcp_account_id: String, gcp_offer_id: String).void }
            def initialize(gcp_account_id: nil, gcp_offer_id: nil)
            end

            sig { override.returns({gcp_account_id: String, gcp_offer_id: String}) }
            def to_hash
            end
          end
        end

        class AddScheduledCharge < MetronomeSDK::BaseModel
          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule) }
          def schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule)
          end
          def schedule=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig do
            params(
              product_id: String,
              schedule: MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule,
              name: String,
              netsuite_sales_order_id: String
            )
              .void
          end
          def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil)
          end

          sig do
            override
              .returns(
                {
                  product_id: String,
                  schedule: MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule,
                  name: String,
                  netsuite_sales_order_id: String
                }
              )
          end
          def to_hash
          end

          class Schedule < MetronomeSDK::BaseModel
            sig { returns(T.nilable(String)) }
            def credit_type_id
            end

            sig { params(_: String).returns(String) }
            def credit_type_id=(_)
            end

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule)
              )
            end
            def recurring_schedule
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule)
                .returns(MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule)
            end
            def recurring_schedule=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem]
                )
              )
            end
            def schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem]
                )
            end
            def schedule_items=(_)
            end

            sig do
              params(
                credit_type_id: String,
                recurring_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule,
                schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem]
              )
                .void
            end
            def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            end

            sig do
              override
                .returns(
                  {
                    credit_type_id: String,
                    recurring_schedule: MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule,
                    schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem]
                  }
                )
            end
            def to_hash
            end

            class RecurringSchedule < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def amount_distribution
              end

              sig { params(_: Symbol).returns(Symbol) }
              def amount_distribution=(_)
              end

              sig { returns(Time) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(Symbol) }
              def frequency
              end

              sig { params(_: Symbol).returns(Symbol) }
              def frequency=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig do
                params(
                  amount_distribution: Symbol,
                  ending_before: Time,
                  frequency: Symbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                )
                  .void
              end
              def initialize(
                amount_distribution:,
                ending_before:,
                frequency:,
                starting_at:,
                amount: nil,
                quantity: nil,
                unit_price: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      amount_distribution: Symbol,
                      ending_before: Time,
                      frequency: Symbol,
                      starting_at: Time,
                      amount: Float,
                      quantity: Float,
                      unit_price: Float
                    }
                  )
              end
              def to_hash
              end

              class AmountDistribution < MetronomeSDK::Enum
                abstract!

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class Frequency < MetronomeSDK::Enum
                abstract!

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Time) }
              def timestamp
              end

              sig { params(_: Time).returns(Time) }
              def timestamp=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
              def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
              end

              sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
              def to_hash
              end
            end
          end
        end

        class AddSpendThresholdConfiguration < MetronomeSDK::BaseModel
          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit) }
          def commit
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit)
          end
          def commit=(_)
          end

          sig { returns(T::Boolean) }
          def is_enabled
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_enabled=(_)
          end

          sig { returns(MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig) }
          def payment_gate_config
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig)
          end
          def payment_gate_config=(_)
          end

          sig { returns(Float) }
          def threshold_amount
          end

          sig { params(_: Float).returns(Float) }
          def threshold_amount=(_)
          end

          sig do
            params(
              commit: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit,
              is_enabled: T::Boolean,
              payment_gate_config: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig,
              threshold_amount: Float
            )
              .void
          end
          def initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
          end

          sig do
            override
              .returns(
                {
                  commit: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig,
                  threshold_amount: Float
                }
              )
          end
          def to_hash
          end

          class Commit < MetronomeSDK::BaseModel
            sig { returns(String) }
            def product_id
            end

            sig { params(_: String).returns(String) }
            def product_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: String).returns(String) }
            def description=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { params(product_id: String, description: String, name: String).void }
            def initialize(product_id:, description: nil, name: nil)
            end

            sig { override.returns({product_id: String, description: String, name: String}) }
            def to_hash
            end
          end

          class PaymentGateConfig < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def payment_gate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def payment_gate_type=(_)
            end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
              )
            end
            def stripe_config
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
                .returns(
                  MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
            end
            def stripe_config=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def tax_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def tax_type=(_)
            end

            sig do
              params(
                payment_gate_type: Symbol,
                stripe_config: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                tax_type: Symbol
              )
                .void
            end
            def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            end

            sig do
              override
                .returns(
                  {
                    payment_gate_type: Symbol,
                    stripe_config: MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type: Symbol
                  }
                )
            end
            def to_hash
            end

            class PaymentGateType < MetronomeSDK::Enum
              abstract!

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class StripeConfig < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def payment_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def payment_type=(_)
              end

              sig { params(payment_type: Symbol).void }
              def initialize(payment_type:)
              end

              sig { override.returns({payment_type: Symbol}) }
              def to_hash
              end

              class PaymentType < MetronomeSDK::Enum
                abstract!

                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class TaxType < MetronomeSDK::Enum
              abstract!

              NONE = :NONE
              STRIPE = :STRIPE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end

        class ArchiveCommit < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class ArchiveCredit < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class ArchiveScheduledCharge < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class RemoveOverride < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class UpdateCommit < MetronomeSDK::BaseModel
          sig { returns(String) }
          def commit_id
          end

          sig { params(_: String).returns(String) }
          def commit_id=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule)) }
          def access_schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule)
          end
          def access_schedule=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_ids
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def applicable_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule)) }
          def invoice_schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule)
          end
          def invoice_schedule=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def rollover_fraction
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def rollover_fraction=(_)
          end

          sig do
            params(
              commit_id: String,
              access_schedule: MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule,
              applicable_product_ids: T.nilable(T::Array[String]),
              applicable_product_tags: T.nilable(T::Array[String]),
              invoice_schedule: MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule,
              netsuite_sales_order_id: T.nilable(String),
              product_id: String,
              rollover_fraction: T.nilable(Float)
            )
              .void
          end
          def initialize(
            commit_id:,
            access_schedule: nil,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            invoice_schedule: nil,
            netsuite_sales_order_id: nil,
            product_id: nil,
            rollover_fraction: nil
          )
          end

          sig do
            override
              .returns(
                {
                  commit_id: String,
                  access_schedule: MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule,
                  applicable_product_ids: T.nilable(T::Array[String]),
                  applicable_product_tags: T.nilable(T::Array[String]),
                  invoice_schedule: MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule,
                  netsuite_sales_order_id: T.nilable(String),
                  product_id: String,
                  rollover_fraction: T.nilable(Float)
                }
              )
          end
          def to_hash
          end

          class AccessSchedule < MetronomeSDK::BaseModel
            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem]
                )
              )
            end
            def add_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem]
                )
            end
            def add_schedule_items=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem]
                )
              )
            end
            def remove_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem]
                )
            end
            def remove_schedule_items=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem]
                )
              )
            end
            def update_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem]
                )
            end
            def update_schedule_items=(_)
            end

            sig do
              params(
                add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem],
                remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem],
                update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem]
              )
                .void
            end
            def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
            end

            sig do
              override
                .returns(
                  {
                    add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem],
                    remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem],
                    update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem]
                  }
                )
            end
            def to_hash
            end

            class AddScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(Time) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
              def initialize(amount:, ending_before:, starting_at:)
              end

              sig { override.returns({amount: Float, ending_before: Time, starting_at: Time}) }
              def to_hash
              end
            end

            class RemoveScheduleItem < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class UpdateScheduleItem < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Time)) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(T.nilable(Time)) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { params(id: String, amount: Float, ending_before: Time, starting_at: Time).void }
              def initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
              end

              sig { override.returns({id: String, amount: Float, ending_before: Time, starting_at: Time}) }
              def to_hash
              end
            end
          end

          class InvoiceSchedule < MetronomeSDK::BaseModel
            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem]
                )
              )
            end
            def add_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem]
                )
            end
            def add_schedule_items=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem]
                )
              )
            end
            def remove_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem]
                )
            end
            def remove_schedule_items=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem]
                )
              )
            end
            def update_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem]
                )
            end
            def update_schedule_items=(_)
            end

            sig do
              params(
                add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem],
                remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem],
                update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem]
              )
                .void
            end
            def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
            end

            sig do
              override
                .returns(
                  {
                    add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem],
                    remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem],
                    update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem]
                  }
                )
            end
            def to_hash
            end

            class AddScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Time) }
              def timestamp
              end

              sig { params(_: Time).returns(Time) }
              def timestamp=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
              def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
              end

              sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
              def to_hash
              end
            end

            class RemoveScheduleItem < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class UpdateScheduleItem < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Time)) }
              def timestamp
              end

              sig { params(_: Time).returns(Time) }
              def timestamp=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig do
                params(id: String, amount: Float, quantity: Float, timestamp: Time, unit_price: Float).void
              end
              def initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    amount: Float,
                    quantity: Float,
                    timestamp: Time,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class UpdateCredit < MetronomeSDK::BaseModel
          sig { returns(String) }
          def credit_id
          end

          sig { params(_: String).returns(String) }
          def credit_id=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule)) }
          def access_schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule)
          end
          def access_schedule=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_ids
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def applicable_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig do
            params(
              credit_id: String,
              access_schedule: MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule,
              applicable_product_ids: T.nilable(T::Array[String]),
              applicable_product_tags: T.nilable(T::Array[String]),
              netsuite_sales_order_id: T.nilable(String),
              product_id: String
            )
              .void
          end
          def initialize(
            credit_id:,
            access_schedule: nil,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            netsuite_sales_order_id: nil,
            product_id: nil
          )
          end

          sig do
            override
              .returns(
                {
                  credit_id: String,
                  access_schedule: MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule,
                  applicable_product_ids: T.nilable(T::Array[String]),
                  applicable_product_tags: T.nilable(T::Array[String]),
                  netsuite_sales_order_id: T.nilable(String),
                  product_id: String
                }
              )
          end
          def to_hash
          end

          class AccessSchedule < MetronomeSDK::BaseModel
            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem]
                )
              )
            end
            def add_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem]
                )
            end
            def add_schedule_items=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem]
                )
              )
            end
            def remove_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem]
                )
            end
            def remove_schedule_items=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem]
                )
              )
            end
            def update_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem]
                )
            end
            def update_schedule_items=(_)
            end

            sig do
              params(
                add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem],
                remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem],
                update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem]
              )
                .void
            end
            def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
            end

            sig do
              override
                .returns(
                  {
                    add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem],
                    remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem],
                    update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem]
                  }
                )
            end
            def to_hash
            end

            class AddScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(Time) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
              def initialize(amount:, ending_before:, starting_at:)
              end

              sig { override.returns({amount: Float, ending_before: Time, starting_at: Time}) }
              def to_hash
              end
            end

            class RemoveScheduleItem < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class UpdateScheduleItem < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Time)) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(T.nilable(Time)) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { params(id: String, amount: Float, ending_before: Time, starting_at: Time).void }
              def initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
              end

              sig { override.returns({id: String, amount: Float, ending_before: Time, starting_at: Time}) }
              def to_hash
              end
            end
          end
        end

        class UpdateScheduledCharge < MetronomeSDK::BaseModel
          sig { returns(String) }
          def scheduled_charge_id
          end

          sig { params(_: String).returns(String) }
          def scheduled_charge_id=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule)) }
          def invoice_schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule)
          end
          def invoice_schedule=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def netsuite_sales_order_id=(_)
          end

          sig do
            params(
              scheduled_charge_id: String,
              invoice_schedule: MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule,
              netsuite_sales_order_id: T.nilable(String)
            )
              .void
          end
          def initialize(scheduled_charge_id:, invoice_schedule: nil, netsuite_sales_order_id: nil)
          end

          sig do
            override
              .returns(
                {
                  scheduled_charge_id: String,
                  invoice_schedule: MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule,
                  netsuite_sales_order_id: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class InvoiceSchedule < MetronomeSDK::BaseModel
            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem]
                )
              )
            end
            def add_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem]
                )
            end
            def add_schedule_items=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem]
                )
              )
            end
            def remove_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem]
                )
            end
            def remove_schedule_items=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem]
                )
              )
            end
            def update_schedule_items
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem]
                )
            end
            def update_schedule_items=(_)
            end

            sig do
              params(
                add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem],
                remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem],
                update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem]
              )
                .void
            end
            def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
            end

            sig do
              override
                .returns(
                  {
                    add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem],
                    remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem],
                    update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem]
                  }
                )
            end
            def to_hash
            end

            class AddScheduleItem < MetronomeSDK::BaseModel
              sig { returns(Time) }
              def timestamp
              end

              sig { params(_: Time).returns(Time) }
              def timestamp=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
              def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
              end

              sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
              def to_hash
              end
            end

            class RemoveScheduleItem < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class UpdateScheduleItem < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(Time)) }
              def timestamp
              end

              sig { params(_: Time).returns(Time) }
              def timestamp=(_)
              end

              sig { returns(T.nilable(Float)) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig do
                params(id: String, amount: Float, quantity: Float, timestamp: Time, unit_price: Float).void
              end
              def initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    amount: Float,
                    quantity: Float,
                    timestamp: Time,
                    unit_price: Float
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class UpdateSpendThresholdConfiguration < MetronomeSDK::BaseModel
          sig do
            returns(
              T.nilable(MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit)
            )
          end
          def commit
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit)
              .returns(MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit)
          end
          def commit=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_enabled
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_enabled=(_)
          end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig
              )
            )
          end
          def payment_gate_config
          end

          sig do
            params(
              _: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig
            )
              .returns(
                MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig
              )
          end
          def payment_gate_config=(_)
          end

          sig { returns(T.nilable(Float)) }
          def threshold_amount
          end

          sig { params(_: Float).returns(Float) }
          def threshold_amount=(_)
          end

          sig do
            params(
              commit: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit,
              is_enabled: T::Boolean,
              payment_gate_config: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig,
              threshold_amount: Float
            )
              .void
          end
          def initialize(commit: nil, is_enabled: nil, payment_gate_config: nil, threshold_amount: nil)
          end

          sig do
            override
              .returns(
                {
                  commit: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig,
                  threshold_amount: Float
                }
              )
          end
          def to_hash
          end

          class Commit < MetronomeSDK::BaseModel
            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def product_id
            end

            sig { params(_: String).returns(String) }
            def product_id=(_)
            end

            sig { params(description: T.nilable(String), name: T.nilable(String), product_id: String).void }
            def initialize(description: nil, name: nil, product_id: nil)
            end

            sig do
              override.returns({description: T.nilable(String), name: T.nilable(String), product_id: String})
            end
            def to_hash
            end
          end

          class PaymentGateConfig < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def payment_gate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def payment_gate_type=(_)
            end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
              )
            end
            def stripe_config
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
                .returns(
                  MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
            end
            def stripe_config=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def tax_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def tax_type=(_)
            end

            sig do
              params(
                payment_gate_type: Symbol,
                stripe_config: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                tax_type: Symbol
              )
                .void
            end
            def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            end

            sig do
              override
                .returns(
                  {
                    payment_gate_type: Symbol,
                    stripe_config: MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type: Symbol
                  }
                )
            end
            def to_hash
            end

            class PaymentGateType < MetronomeSDK::Enum
              abstract!

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class StripeConfig < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def payment_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def payment_type=(_)
              end

              sig { params(payment_type: Symbol).void }
              def initialize(payment_type:)
              end

              sig { override.returns({payment_type: Symbol}) }
              def to_hash
              end

              class PaymentType < MetronomeSDK::Enum
                abstract!

                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class TaxType < MetronomeSDK::Enum
              abstract!

              NONE = :NONE
              STRIPE = :STRIPE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
