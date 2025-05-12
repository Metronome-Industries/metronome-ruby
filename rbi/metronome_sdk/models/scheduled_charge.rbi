# typed: strong

module MetronomeSDK
  module Models
    class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::ScheduledCharge, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(MetronomeSDK::ScheduledCharge::Product) }
      attr_reader :product

      sig do
        params(product: MetronomeSDK::ScheduledCharge::Product::OrHash).void
      end
      attr_writer :product

      sig { returns(MetronomeSDK::SchedulePointInTime) }
      attr_reader :schedule

      sig { params(schedule: MetronomeSDK::SchedulePointInTime::OrHash).void }
      attr_writer :schedule

      sig { returns(T.nilable(Time)) }
      attr_reader :archived_at

      sig { params(archived_at: Time).void }
      attr_writer :archived_at

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      # displayed on invoices
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      sig do
        params(
          id: String,
          product: MetronomeSDK::ScheduledCharge::Product::OrHash,
          schedule: MetronomeSDK::SchedulePointInTime::OrHash,
          archived_at: Time,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          netsuite_sales_order_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        product:,
        schedule:,
        archived_at: nil,
        custom_fields: nil,
        # displayed on invoices
        name: nil,
        # This field's availability is dependent on your client's configuration.
        netsuite_sales_order_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            product: MetronomeSDK::ScheduledCharge::Product,
            schedule: MetronomeSDK::SchedulePointInTime,
            archived_at: Time,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            netsuite_sales_order_id: String
          }
        )
      end
      def to_hash
      end

      class Product < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ScheduledCharge::Product,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(id:, name:)
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
