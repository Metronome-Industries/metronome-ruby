# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractGetEditHistoryResponse < MetronomeSDK::BaseModel
        sig { returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data]) }
        def data
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data])
            .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data])
        end
        def data=(_)
        end

        sig { params(data: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data]).void }
        def initialize(data:)
        end

        sig { override.returns({data: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data]}) }
        def to_hash
        end

        class Data < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit])) }
          def add_commits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit])
          end
          def add_commits=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit])) }
          def add_credits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit])
          end
          def add_credits=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Discount])) }
          def add_discounts
          end

          sig { params(_: T::Array[MetronomeSDK::Models::Discount]).returns(T::Array[MetronomeSDK::Models::Discount]) }
          def add_discounts=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride])) }
          def add_overrides
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride])
          end
          def add_overrides=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ProService])) }
          def add_pro_services
          end

          sig { params(_: T::Array[MetronomeSDK::Models::ProService]).returns(T::Array[MetronomeSDK::Models::ProService]) }
          def add_pro_services=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit])
            )
          end
          def add_recurring_commits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit])
          end
          def add_recurring_commits=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit])
            )
          end
          def add_recurring_credits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit])
          end
          def add_recurring_credits=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty])
            )
          end
          def add_reseller_royalties
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty])
          end
          def add_reseller_royalties=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge])
            )
          end
          def add_scheduled_charges
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge])
          end
          def add_scheduled_charges=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription])
            )
          end
          def add_subscriptions
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription])
          end
          def add_subscriptions=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter])
            )
          end
          def add_usage_filters
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter])
          end
          def add_usage_filters=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit])
            )
          end
          def archive_commits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit])
          end
          def archive_commits=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit])
            )
          end
          def archive_credits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit])
          end
          def archive_credits=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge]
              )
            )
          end
          def archive_scheduled_charges
          end

          sig do
            params(
              _: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge]
            )
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge])
          end
          def archive_scheduled_charges=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride])
            )
          end
          def remove_overrides
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride])
          end
          def remove_overrides=(_)
          end

          sig { returns(T.nilable(Time)) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit])) }
          def update_commits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit])
          end
          def update_commits=(_)
          end

          sig { returns(T.nilable(Time)) }
          def update_contract_end_date
          end

          sig { params(_: Time).returns(Time) }
          def update_contract_end_date=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit])) }
          def update_credits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit])
          end
          def update_credits=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount])
            )
          end
          def update_discounts
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount])
          end
          def update_discounts=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice])
            )
          end
          def update_refund_invoices
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice])
          end
          def update_refund_invoices=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge])
            )
          end
          def update_scheduled_charges
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge])
          end
          def update_scheduled_charges=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription])
            )
          end
          def update_subscriptions
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription])
          end
          def update_subscriptions=(_)
          end

          sig do
            params(
              id: String,
              add_commits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit],
              add_credits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit],
              add_discounts: T::Array[MetronomeSDK::Models::Discount],
              add_overrides: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride],
              add_pro_services: T::Array[MetronomeSDK::Models::ProService],
              add_recurring_commits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit],
              add_recurring_credits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit],
              add_reseller_royalties: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty],
              add_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge],
              add_subscriptions: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription],
              add_usage_filters: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter],
              archive_commits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit],
              archive_credits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit],
              archive_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge],
              remove_overrides: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride],
              timestamp: Time,
              update_commits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit],
              update_contract_end_date: Time,
              update_credits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit],
              update_discounts: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount],
              update_refund_invoices: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice],
              update_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge],
              update_subscriptions: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription]
            )
              .void
          end
          def initialize(
            id:,
            add_commits: nil,
            add_credits: nil,
            add_discounts: nil,
            add_overrides: nil,
            add_pro_services: nil,
            add_recurring_commits: nil,
            add_recurring_credits: nil,
            add_reseller_royalties: nil,
            add_scheduled_charges: nil,
            add_subscriptions: nil,
            add_usage_filters: nil,
            archive_commits: nil,
            archive_credits: nil,
            archive_scheduled_charges: nil,
            remove_overrides: nil,
            timestamp: nil,
            update_commits: nil,
            update_contract_end_date: nil,
            update_credits: nil,
            update_discounts: nil,
            update_refund_invoices: nil,
            update_scheduled_charges: nil,
            update_subscriptions: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  add_commits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit],
                  add_credits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit],
                  add_discounts: T::Array[MetronomeSDK::Models::Discount],
                  add_overrides: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride],
                  add_pro_services: T::Array[MetronomeSDK::Models::ProService],
                  add_recurring_commits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit],
                  add_recurring_credits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit],
                  add_reseller_royalties: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty],
                  add_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge],
                  add_subscriptions: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription],
                  add_usage_filters: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter],
                  archive_commits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit],
                  archive_credits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit],
                  archive_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge],
                  remove_overrides: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride],
                  timestamp: Time,
                  update_commits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit],
                  update_contract_end_date: Time,
                  update_credits: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit],
                  update_discounts: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount],
                  update_refund_invoices: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice],
                  update_scheduled_charges: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge],
                  update_subscriptions: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription]
                }
              )
          end
          def to_hash
          end

          class AddCommit < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product)
            end
            def product=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::ScheduleDuration)) }
            def access_schedule
            end

            sig { params(_: MetronomeSDK::Models::ScheduleDuration).returns(MetronomeSDK::Models::ScheduleDuration) }
            def access_schedule=(_)
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

            sig { returns(T.nilable(MetronomeSDK::Models::SchedulePointInTime)) }
            def invoice_schedule
            end

            sig { params(_: MetronomeSDK::Models::SchedulePointInTime).returns(MetronomeSDK::Models::SchedulePointInTime) }
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
            def salesforce_opportunity_id
            end

            sig { params(_: String).returns(String) }
            def salesforce_opportunity_id=(_)
            end

            sig do
              params(
                id: String,
                product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product,
                type: Symbol,
                access_schedule: MetronomeSDK::Models::ScheduleDuration,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                invoice_schedule: MetronomeSDK::Models::SchedulePointInTime,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type: Symbol,
                rollover_fraction: Float,
                salesforce_opportunity_id: String
              )
                .void
            end
            def initialize(
              id:,
              product:,
              type:,
              access_schedule: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              description: nil,
              invoice_schedule: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              priority: nil,
              rate_type: nil,
              rollover_fraction: nil,
              salesforce_opportunity_id: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product,
                    type: Symbol,
                    access_schedule: MetronomeSDK::Models::ScheduleDuration,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    description: String,
                    invoice_schedule: MetronomeSDK::Models::SchedulePointInTime,
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type: Symbol,
                    rollover_fraction: Float,
                    salesforce_opportunity_id: String
                  }
                )
            end
            def to_hash
            end

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
              end
            end

            class Type < MetronomeSDK::Enum
              abstract!

              PREPAID = :PREPAID
              POSTPAID = :POSTPAID

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
          end

          class AddCredit < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product)
            end
            def product=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::ScheduleDuration)) }
            def access_schedule
            end

            sig { params(_: MetronomeSDK::Models::ScheduleDuration).returns(MetronomeSDK::Models::ScheduleDuration) }
            def access_schedule=(_)
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

            sig { returns(T.nilable(String)) }
            def salesforce_opportunity_id
            end

            sig { params(_: String).returns(String) }
            def salesforce_opportunity_id=(_)
            end

            sig do
              params(
                id: String,
                product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product,
                type: Symbol,
                access_schedule: MetronomeSDK::Models::ScheduleDuration,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                description: String,
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                salesforce_opportunity_id: String
              )
                .void
            end
            def initialize(
              id:,
              product:,
              type:,
              access_schedule: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              description: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              priority: nil,
              salesforce_opportunity_id: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product,
                    type: Symbol,
                    access_schedule: MetronomeSDK::Models::ScheduleDuration,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    description: String,
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    salesforce_opportunity_id: String
                  }
                )
            end
            def to_hash
            end

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
              end
            end

            class Type < MetronomeSDK::Enum
              abstract!

              CREDIT = :CREDIT

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class AddOverride < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

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

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier]
                )
              )
            end
            def override_specifiers
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier]
                )
            end
            def override_specifiers=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier]
                )
              )
            end
            def override_tiers
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier]
                )
            end
            def override_tiers=(_)
            end

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate)
              )
            end
            def overwrite_rate
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate)
            end
            def overwrite_rate=(_)
            end

            sig { returns(T.nilable(Float)) }
            def priority
            end

            sig { params(_: Float).returns(Float) }
            def priority=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product)) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product)
            end
            def product=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def target
            end

            sig { params(_: Symbol).returns(Symbol) }
            def target=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                id: String,
                starting_at: Time,
                applicable_product_tags: T::Array[String],
                ending_before: Time,
                entitled: T::Boolean,
                is_commit_specific: T::Boolean,
                multiplier: Float,
                override_specifiers: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier],
                override_tiers: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier],
                overwrite_rate: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate,
                priority: Float,
                product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product,
                target: Symbol,
                type: Symbol
              )
                .void
            end
            def initialize(
              id:,
              starting_at:,
              applicable_product_tags: nil,
              ending_before: nil,
              entitled: nil,
              is_commit_specific: nil,
              multiplier: nil,
              override_specifiers: nil,
              override_tiers: nil,
              overwrite_rate: nil,
              priority: nil,
              product: nil,
              target: nil,
              type: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    starting_at: Time,
                    applicable_product_tags: T::Array[String],
                    ending_before: Time,
                    entitled: T::Boolean,
                    is_commit_specific: T::Boolean,
                    multiplier: Float,
                    override_specifiers: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier],
                    override_tiers: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideTier],
                    overwrite_rate: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate,
                    priority: Float,
                    product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product,
                    target: Symbol,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class OverrideSpecifier < MetronomeSDK::BaseModel
              sig { returns(T.nilable(Symbol)) }
              def billing_frequency
              end

              sig { params(_: Symbol).returns(Symbol) }
              def billing_frequency=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def commit_ids
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def commit_ids=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
              def presentation_group_values
              end

              sig do
                params(_: T::Hash[Symbol, T.nilable(String)]).returns(T::Hash[Symbol, T.nilable(String)])
              end
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
                  billing_frequency: Symbol,
                  commit_ids: T::Array[String],
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String],
                  recurring_commit_ids: T::Array[String],
                  recurring_credit_ids: T::Array[String]
                )
                  .void
              end
              def initialize(
                billing_frequency: nil,
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
                      billing_frequency: Symbol,
                      commit_ids: T::Array[String],
                      presentation_group_values: T::Hash[Symbol, T.nilable(String)],
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

              class BillingFrequency < MetronomeSDK::Enum
                abstract!

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class OverrideTier < MetronomeSDK::BaseModel
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

            class OverwriteRate < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def rate_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def rate_type=(_)
              end

              sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
              def credit_type
              end

              sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
              def credit_type=(_)
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
                  credit_type: MetronomeSDK::Models::CreditTypeData,
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
                credit_type: nil,
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
                      credit_type: MetronomeSDK::Models::CreditTypeData,
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

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
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

          class AddRecurringCommit < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount) }
            def access_amount
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount
              )
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount)
            end
            def access_amount=(_)
            end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration
              )
            end
            def commit_duration
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration
              )
                .returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration
                )
            end
            def commit_duration=(_)
            end

            sig { returns(Float) }
            def priority
            end

            sig { params(_: Float).returns(Float) }
            def priority=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product)
            end
            def product=(_)
            end

            sig { returns(Symbol) }
            def rate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def rate_type=(_)
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

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract)
              )
            end
            def contract
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract)
            end
            def contract=(_)
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

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount
                )
              )
            end
            def invoice_amount
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount
              )
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount)
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

            sig do
              params(
                id: String,
                access_amount: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount,
                commit_duration: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration,
                priority: Float,
                product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product,
                rate_type: Symbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract,
                description: String,
                ending_before: Time,
                invoice_amount: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount,
                name: String,
                netsuite_sales_order_id: String,
                proration: Symbol,
                recurrence_frequency: Symbol,
                rollover_fraction: Float
              )
                .void
            end
            def initialize(
              id:,
              access_amount:,
              commit_duration:,
              priority:,
              product:,
              rate_type:,
              starting_at:,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              contract: nil,
              description: nil,
              ending_before: nil,
              invoice_amount: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              proration: nil,
              recurrence_frequency: nil,
              rollover_fraction: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    access_amount: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount,
                    commit_duration: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration,
                    priority: Float,
                    product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product,
                    rate_type: Symbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract,
                    description: String,
                    ending_before: Time,
                    invoice_amount: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration: Symbol,
                    recurrence_frequency: Symbol,
                    rollover_fraction: Float
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
              sig { returns(Float) }
              def value
              end

              sig { params(_: Float).returns(Float) }
              def value=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def unit=(_)
              end

              sig { params(value: Float, unit: Symbol).void }
              def initialize(value:, unit: nil)
              end

              sig { override.returns({value: Float, unit: Symbol}) }
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

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
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

            class Contract < MetronomeSDK::BaseModel
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
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount) }
            def access_amount
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount
              )
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount)
            end
            def access_amount=(_)
            end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration
              )
            end
            def commit_duration
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration
              )
                .returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration
                )
            end
            def commit_duration=(_)
            end

            sig { returns(Float) }
            def priority
            end

            sig { params(_: Float).returns(Float) }
            def priority=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product)
            end
            def product=(_)
            end

            sig { returns(Symbol) }
            def rate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def rate_type=(_)
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

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract)
              )
            end
            def contract
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract)
            end
            def contract=(_)
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

            sig do
              params(
                id: String,
                access_amount: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount,
                commit_duration: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration,
                priority: Float,
                product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product,
                rate_type: Symbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract,
                description: String,
                ending_before: Time,
                name: String,
                netsuite_sales_order_id: String,
                proration: Symbol,
                recurrence_frequency: Symbol,
                rollover_fraction: Float
              )
                .void
            end
            def initialize(
              id:,
              access_amount:,
              commit_duration:,
              priority:,
              product:,
              rate_type:,
              starting_at:,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              contract: nil,
              description: nil,
              ending_before: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              proration: nil,
              recurrence_frequency: nil,
              rollover_fraction: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    access_amount: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount,
                    commit_duration: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration,
                    priority: Float,
                    product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product,
                    rate_type: Symbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract,
                    description: String,
                    ending_before: Time,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration: Symbol,
                    recurrence_frequency: Symbol,
                    rollover_fraction: Float
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
              sig { returns(Float) }
              def value
              end

              sig { params(_: Float).returns(Float) }
              def value=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def unit=(_)
              end

              sig { params(value: Float, unit: Symbol).void }
              def initialize(value:, unit: nil)
              end

              sig { override.returns({value: Float, unit: Symbol}) }
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

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
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

            class Contract < MetronomeSDK::BaseModel
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
                aws_account_number: String,
                aws_offer_id: String,
                aws_payer_reference_id: String,
                ending_before: T.nilable(Time),
                fraction: Float,
                gcp_account_id: String,
                gcp_offer_id: String,
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
              aws_account_number: nil,
              aws_offer_id: nil,
              aws_payer_reference_id: nil,
              ending_before: nil,
              fraction: nil,
              gcp_account_id: nil,
              gcp_offer_id: nil,
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
                    aws_account_number: String,
                    aws_offer_id: String,
                    aws_payer_reference_id: String,
                    ending_before: T.nilable(Time),
                    fraction: Float,
                    gcp_account_id: String,
                    gcp_offer_id: String,
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
          end

          class AddScheduledCharge < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product)
            end
            def product=(_)
            end

            sig { returns(MetronomeSDK::Models::SchedulePointInTime) }
            def schedule
            end

            sig { params(_: MetronomeSDK::Models::SchedulePointInTime).returns(MetronomeSDK::Models::SchedulePointInTime) }
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
                id: String,
                product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product,
                schedule: MetronomeSDK::Models::SchedulePointInTime,
                name: String,
                netsuite_sales_order_id: String
              )
                .void
            end
            def initialize(id:, product:, schedule:, name: nil, netsuite_sales_order_id: nil)
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product,
                    schedule: MetronomeSDK::Models::SchedulePointInTime,
                    name: String,
                    netsuite_sales_order_id: String
                  }
                )
            end
            def to_hash
            end

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
              end
            end
          end

          class AddSubscription < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def collection_schedule
            end

            sig { params(_: Symbol).returns(Symbol) }
            def collection_schedule=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration) }
            def proration
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration)
            end
            def proration=(_)
            end

            sig do
              returns(
                T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule]
              )
            end
            def quantity_schedule
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule]
                )
            end
            def quantity_schedule=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate) }
            def subscription_rate
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate
              )
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate)
            end
            def subscription_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
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

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(T.nilable(String)) }
            def fiat_credit_type_id
            end

            sig { params(_: String).returns(String) }
            def fiat_credit_type_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              params(
                collection_schedule: Symbol,
                proration: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration,
                quantity_schedule: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule],
                starting_at: Time,
                subscription_rate: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate,
                id: String,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                ending_before: Time,
                fiat_credit_type_id: String,
                name: String
              )
                .void
            end
            def initialize(
              collection_schedule:,
              proration:,
              quantity_schedule:,
              starting_at:,
              subscription_rate:,
              id: nil,
              custom_fields: nil,
              description: nil,
              ending_before: nil,
              fiat_credit_type_id: nil,
              name: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    collection_schedule: Symbol,
                    proration: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::Proration,
                    quantity_schedule: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::QuantitySchedule],
                    starting_at: Time,
                    subscription_rate: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate,
                    id: String,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    ending_before: Time,
                    fiat_credit_type_id: String,
                    name: String
                  }
                )
            end
            def to_hash
            end

            class CollectionSchedule < MetronomeSDK::Enum
              abstract!

              ADVANCE = :ADVANCE
              ARREARS = :ARREARS

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Proration < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def invoice_behavior
              end

              sig { params(_: Symbol).returns(Symbol) }
              def invoice_behavior=(_)
              end

              sig { returns(T::Boolean) }
              def is_prorated
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def is_prorated=(_)
              end

              sig { params(invoice_behavior: Symbol, is_prorated: T::Boolean).void }
              def initialize(invoice_behavior:, is_prorated:)
              end

              sig { override.returns({invoice_behavior: Symbol, is_prorated: T::Boolean}) }
              def to_hash
              end

              class InvoiceBehavior < MetronomeSDK::Enum
                abstract!

                BILL_IMMEDIATELY = :BILL_IMMEDIATELY
                BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class QuantitySchedule < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { returns(T.nilable(Time)) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { params(quantity: Float, starting_at: Time, ending_before: Time).void }
              def initialize(quantity:, starting_at:, ending_before: nil)
              end

              sig { override.returns({quantity: Float, starting_at: Time, ending_before: Time}) }
              def to_hash
              end
            end

            class SubscriptionRate < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def billing_frequency
              end

              sig { params(_: Symbol).returns(Symbol) }
              def billing_frequency=(_)
              end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product
                )
              end
              def product
              end

              sig do
                params(
                  _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product
                )
                  .returns(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product
                  )
              end
              def product=(_)
              end

              sig do
                params(
                  billing_frequency: Symbol,
                  product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product
                )
                  .void
              end
              def initialize(billing_frequency:, product:)
              end

              sig do
                override
                  .returns(
                    {
                      billing_frequency: Symbol,
                      product: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddSubscription::SubscriptionRate::Product
                    }
                  )
              end
              def to_hash
              end

              class BillingFrequency < MetronomeSDK::Enum
                abstract!

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class Product < MetronomeSDK::BaseModel
                sig { returns(String) }
                def id
                end

                sig { params(_: String).returns(String) }
                def id=(_)
                end

                sig { returns(String) }
                def name
                end

                sig { params(_: String).returns(String) }
                def name=(_)
                end

                sig { params(id: String, name: String).void }
                def initialize(id:, name:)
                end

                sig { override.returns({id: String, name: String}) }
                def to_hash
                end
              end
            end
          end

          class AddUsageFilter < MetronomeSDK::BaseModel
            sig { returns(String) }
            def group_key
            end

            sig { params(_: String).returns(String) }
            def group_key=(_)
            end

            sig { returns(T::Array[String]) }
            def group_values
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def group_values=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig do
              params(
                group_key: String,
                group_values: T::Array[String],
                starting_at: Time,
                ending_before: Time
              ).void
            end
            def initialize(group_key:, group_values:, starting_at:, ending_before: nil)
            end

            sig do
              override
                .returns({
                           group_key: String,
                           group_values: T::Array[String],
                           starting_at: Time,
                           ending_before: Time
                         })
            end
            def to_hash
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
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule)
              )
            end
            def access_schedule
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule)
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

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule)
              )
            end
            def invoice_schedule
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule)
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
                id: String,
                access_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule,
                applicable_product_ids: T.nilable(T::Array[String]),
                applicable_product_tags: T.nilable(T::Array[String]),
                invoice_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule,
                name: String,
                netsuite_sales_order_id: T.nilable(String),
                product_id: String,
                rollover_fraction: T.nilable(Float)
              )
                .void
            end
            def initialize(
              id:,
              access_schedule: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              invoice_schedule: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              product_id: nil,
              rollover_fraction: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    access_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule,
                    applicable_product_ids: T.nilable(T::Array[String]),
                    applicable_product_tags: T.nilable(T::Array[String]),
                    invoice_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule,
                    name: String,
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
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                    ]
                  )
                )
              end
              def add_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                    ]
                  )
              end
              def add_schedule_items=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                    ]
                  )
                )
              end
              def remove_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                    ]
                  )
              end
              def remove_schedule_items=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
                    ]
                  )
                )
              end
              def update_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
                    ]
                  )
              end
              def update_schedule_items=(_)
              end

              sig do
                params(
                  add_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                  ],
                  remove_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                  ],
                  update_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
                  ]
                )
                  .void
              end
              def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
              end

              sig do
                override
                  .returns(
                    {
                      add_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                      ],
                      remove_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                      ],
                      update_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
                      ]
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
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                    ]
                  )
                )
              end
              def add_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                    ]
                  )
              end
              def add_schedule_items=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                    ]
                  )
                )
              end
              def remove_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                    ]
                  )
              end
              def remove_schedule_items=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                    ]
                  )
                )
              end
              def update_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                    ]
                  )
              end
              def update_schedule_items=(_)
              end

              sig do
                params(
                  add_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                  ],
                  remove_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                  ],
                  update_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                  ]
                )
                  .void
              end
              def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
              end

              sig do
                override
                  .returns(
                    {
                      add_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                      ],
                      remove_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                      ],
                      update_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                      ]
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
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule)
              )
            end
            def access_schedule
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule)
            end
            def access_schedule=(_)
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

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def netsuite_sales_order_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def rollover_fraction
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def rollover_fraction=(_)
            end

            sig do
              params(
                id: String,
                access_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule,
                name: String,
                netsuite_sales_order_id: T.nilable(String),
                rollover_fraction: T.nilable(Float)
              )
                .void
            end
            def initialize(
              id:,
              access_schedule: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              rollover_fraction: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    access_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule,
                    name: String,
                    netsuite_sales_order_id: T.nilable(String),
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
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                    ]
                  )
                )
              end
              def add_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                    ]
                  )
              end
              def add_schedule_items=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                    ]
                  )
                )
              end
              def remove_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                    ]
                  )
              end
              def remove_schedule_items=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
                    ]
                  )
                )
              end
              def update_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
                    ]
                  )
              end
              def update_schedule_items=(_)
              end

              sig do
                params(
                  add_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                  ],
                  remove_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                  ],
                  update_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
                  ]
                )
                  .void
              end
              def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
              end

              sig do
                override
                  .returns(
                    {
                      add_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                      ],
                      remove_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                      ],
                      update_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
                      ]
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

          class UpdateDiscount < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
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
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule)
              )
            end
            def schedule
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule)
                .returns(MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule)
            end
            def schedule=(_)
            end

            sig do
              params(
                id: String,
                custom_fields: T::Hash[Symbol, String],
                name: String,
                netsuite_sales_order_id: String,
                schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule
              )
                .void
            end
            def initialize(id:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil, schedule: nil)
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    custom_fields: T::Hash[Symbol, String],
                    name: String,
                    netsuite_sales_order_id: String,
                    schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule
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
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule
                  )
                )
              end
              def recurring_schedule
              end

              sig do
                params(
                  _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule
                )
                  .returns(
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule
                  )
              end
              def recurring_schedule=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem]
                  )
                )
              end
              def schedule_items
              end

              sig do
                params(
                  _: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem]
                )
                  .returns(
                    T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem]
                  )
              end
              def schedule_items=(_)
              end

              sig do
                params(
                  credit_type_id: String,
                  recurring_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule,
                  schedule_items: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem]
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
                      recurring_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule,
                      schedule_items: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem]
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

          class UpdateRefundInvoice < MetronomeSDK::BaseModel
            sig { returns(Time) }
            def date
            end

            sig { params(_: Time).returns(Time) }
            def date=(_)
            end

            sig { returns(String) }
            def invoice_id
            end

            sig { params(_: String).returns(String) }
            def invoice_id=(_)
            end

            sig { params(date: Time, invoice_id: String).void }
            def initialize(date:, invoice_id:)
            end

            sig { override.returns({date: Time, invoice_id: String}) }
            def to_hash
            end
          end

          class UpdateScheduledCharge < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule
                )
              )
            end
            def invoice_schedule
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule
              )
                .returns(
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule
                )
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

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def netsuite_sales_order_id=(_)
            end

            sig do
              params(
                id: String,
                invoice_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule,
                name: String,
                netsuite_sales_order_id: T.nilable(String)
              )
                .void
            end
            def initialize(id:, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil)
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    invoice_schedule: MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule,
                    name: String,
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
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                    ]
                  )
                )
              end
              def add_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                    ]
                  )
              end
              def add_schedule_items=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                    ]
                  )
                )
              end
              def remove_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                    ]
                  )
              end
              def remove_schedule_items=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                    ]
                  )
                )
              end
              def update_schedule_items
              end

              sig do
                params(
                  _: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                  ]
                )
                  .returns(
                    T::Array[
                    MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                    ]
                  )
              end
              def update_schedule_items=(_)
              end

              sig do
                params(
                  add_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                  ],
                  remove_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                  ],
                  update_schedule_items: T::Array[
                  MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                  ]
                )
                  .void
              end
              def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
              end

              sig do
                override
                  .returns(
                    {
                      add_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                      ],
                      remove_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                      ],
                      update_schedule_items: T::Array[
                      MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                      ]
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

          class UpdateSubscription < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate]
                )
              )
            end
            def quantity_updates
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate]
                )
            end
            def quantity_updates=(_)
            end

            sig do
              params(
                id: String,
                ending_before: Time,
                quantity_updates: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate]
              )
                .void
            end
            def initialize(id:, ending_before: nil, quantity_updates: nil)
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    ending_before: Time,
                    quantity_updates: T::Array[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate]
                  }
                )
            end
            def to_hash
            end

            class QuantityUpdate < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { params(quantity: Float, starting_at: Time).void }
              def initialize(quantity:, starting_at:)
              end

              sig { override.returns({quantity: Float, starting_at: Time}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
