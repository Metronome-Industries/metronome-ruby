# typed: strong

module MetronomeSDK
  module Resources
    class V1
      sig { returns(MetronomeSDK::Resources::V1::Alerts) }
      attr_reader :alerts

      sig { returns(MetronomeSDK::Resources::V1::Plans) }
      attr_reader :plans

      sig { returns(MetronomeSDK::Resources::V1::CreditGrants) }
      attr_reader :credit_grants

      sig { returns(MetronomeSDK::Resources::V1::PricingUnits) }
      attr_reader :pricing_units

      sig { returns(MetronomeSDK::Resources::V1::Customers) }
      attr_reader :customers

      sig { returns(MetronomeSDK::Resources::V1::Dashboards) }
      attr_reader :dashboards

      sig { returns(MetronomeSDK::Resources::V1::Usage) }
      attr_reader :usage

      sig { returns(MetronomeSDK::Resources::V1::AuditLogs) }
      attr_reader :audit_logs

      sig { returns(MetronomeSDK::Resources::V1::CustomFields) }
      attr_reader :custom_fields

      sig { returns(MetronomeSDK::Resources::V1::BillableMetrics) }
      attr_reader :billable_metrics

      sig { returns(MetronomeSDK::Resources::V1::Services) }
      attr_reader :services

      sig { returns(MetronomeSDK::Resources::V1::Invoices) }
      attr_reader :invoices

      sig { returns(MetronomeSDK::Resources::V1::Contracts) }
      attr_reader :contracts

      sig { returns(MetronomeSDK::Resources::V1::Payments) }
      attr_reader :payments

      sig { returns(MetronomeSDK::Resources::V1::Settings) }
      attr_reader :settings

      # @api private
      sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
