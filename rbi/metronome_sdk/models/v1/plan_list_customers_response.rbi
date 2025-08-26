# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanListCustomersResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::PlanListCustomersResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails
          )
        end
        attr_reader :customer_details

        sig do
          params(
            customer_details:
              MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::OrHash
          ).void
        end
        attr_writer :customer_details

        sig do
          returns(
            MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails
          )
        end
        attr_reader :plan_details

        sig do
          params(
            plan_details:
              MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails::OrHash
          ).void
        end
        attr_writer :plan_details

        sig do
          params(
            customer_details:
              MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::OrHash,
            plan_details:
              MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(customer_details:, plan_details:)
        end

        sig do
          override.returns(
            {
              customer_details:
                MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails,
              plan_details:
                MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails
            }
          )
        end
        def to_hash
        end

        class CustomerDetails < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # the Metronome ID of the customer
          sig { returns(String) }
          attr_accessor :id

          # RFC 3339 timestamp indicating when the customer was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :custom_fields

          sig do
            returns(
              MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CustomerConfig
            )
          end
          attr_reader :customer_config

          sig do
            params(
              customer_config:
                MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CustomerConfig::OrHash
            ).void
          end
          attr_writer :customer_config

          # (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
          # alias) that can be used in usage events
          sig { returns(String) }
          attr_accessor :external_id

          # aliases for this customer that can be used instead of the Metronome customer ID
          # in usage events
          sig { returns(T::Array[String]) }
          attr_accessor :ingest_aliases

          sig { returns(String) }
          attr_accessor :name

          # RFC 3339 timestamp indicating when the customer was archived. Null if the
          # customer is active.
          sig { returns(T.nilable(Time)) }
          attr_accessor :archived_at

          # This field's availability is dependent on your client's configuration.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus
              )
            )
          end
          attr_reader :current_billable_status

          sig do
            params(
              current_billable_status:
                MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::OrHash
            ).void
          end
          attr_writer :current_billable_status

          sig do
            params(
              id: String,
              created_at: Time,
              custom_fields: T::Hash[Symbol, String],
              customer_config:
                MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CustomerConfig::OrHash,
              external_id: String,
              ingest_aliases: T::Array[String],
              name: String,
              archived_at: T.nilable(Time),
              current_billable_status:
                MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # the Metronome ID of the customer
            id:,
            # RFC 3339 timestamp indicating when the customer was created.
            created_at:,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields:,
            customer_config:,
            # (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
            # alias) that can be used in usage events
            external_id:,
            # aliases for this customer that can be used instead of the Metronome customer ID
            # in usage events
            ingest_aliases:,
            name:,
            # RFC 3339 timestamp indicating when the customer was archived. Null if the
            # customer is active.
            archived_at: nil,
            # This field's availability is dependent on your client's configuration.
            current_billable_status: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                custom_fields: T::Hash[Symbol, String],
                customer_config:
                  MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CustomerConfig,
                external_id: String,
                ingest_aliases: T::Array[String],
                name: String,
                archived_at: T.nilable(Time),
                current_billable_status:
                  MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus
              }
            )
          end
          def to_hash
          end

          class CustomerConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CustomerConfig,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The Salesforce account ID for the customer
            sig { returns(T.nilable(String)) }
            attr_accessor :salesforce_account_id

            sig do
              params(salesforce_account_id: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # The Salesforce account ID for the customer
              salesforce_account_id:
            )
            end

            sig do
              override.returns({ salesforce_account_id: T.nilable(String) })
            end
            def to_hash
            end
          end

          class CurrentBillableStatus < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value::TaggedSymbol
              )
            end
            attr_accessor :value

            sig { returns(T.nilable(Time)) }
            attr_accessor :effective_at

            # This field's availability is dependent on your client's configuration.
            sig do
              params(
                value:
                  MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value::OrSymbol,
                effective_at: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(value:, effective_at: nil)
            end

            sig do
              override.returns(
                {
                  value:
                    MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value::TaggedSymbol,
                  effective_at: T.nilable(Time)
                }
              )
            end
            def to_hash
            end

            module Value
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BILLABLE =
                T.let(
                  :billable,
                  MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value::TaggedSymbol
                )
              UNBILLABLE =
                T.let(
                  :unbillable,
                  MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class PlanDetails < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :custom_fields

          sig { returns(String) }
          attr_accessor :customer_plan_id

          sig { returns(String) }
          attr_accessor :name

          # The start date of the plan
          sig { returns(Time) }
          attr_accessor :starting_on

          # The end date of the plan
          sig { returns(T.nilable(Time)) }
          attr_accessor :ending_before

          sig do
            params(
              id: String,
              custom_fields: T::Hash[Symbol, String],
              customer_plan_id: String,
              name: String,
              starting_on: Time,
              ending_before: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields:,
            customer_plan_id:,
            name:,
            # The start date of the plan
            starting_on:,
            # The end date of the plan
            ending_before: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                custom_fields: T::Hash[Symbol, String],
                customer_plan_id: String,
                name: String,
                starting_on: Time,
                ending_before: T.nilable(Time)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
