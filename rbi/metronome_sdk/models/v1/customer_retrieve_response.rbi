# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CustomerRetrieveResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data,
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
              MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CustomerConfig
            )
          end
          attr_reader :customer_config

          sig do
            params(
              customer_config:
                MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CustomerConfig::OrHash
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
                MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus
              )
            )
          end
          attr_reader :current_billable_status

          sig do
            params(
              current_billable_status:
                MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::OrHash
            ).void
          end
          attr_writer :current_billable_status

          sig do
            params(
              id: String,
              created_at: Time,
              custom_fields: T::Hash[Symbol, String],
              customer_config:
                MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CustomerConfig::OrHash,
              external_id: String,
              ingest_aliases: T::Array[String],
              name: String,
              archived_at: T.nilable(Time),
              current_billable_status:
                MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::OrHash
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
                  MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CustomerConfig,
                external_id: String,
                ingest_aliases: T::Array[String],
                name: String,
                archived_at: T.nilable(Time),
                current_billable_status:
                  MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus
              }
            )
          end
          def to_hash
          end

          class CustomerConfig < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CustomerConfig,
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
                  MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value::TaggedSymbol
              )
            end
            attr_accessor :value

            sig { returns(T.nilable(Time)) }
            attr_accessor :effective_at

            # This field's availability is dependent on your client's configuration.
            sig do
              params(
                value:
                  MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value::OrSymbol,
                effective_at: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(value:, effective_at: nil)
            end

            sig do
              override.returns(
                {
                  value:
                    MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value::TaggedSymbol,
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
                    MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BILLABLE =
                T.let(
                  :billable,
                  MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value::TaggedSymbol
                )
              UNBILLABLE =
                T.let(
                  :unbillable,
                  MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
