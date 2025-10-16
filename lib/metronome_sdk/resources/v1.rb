# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      # @return [MetronomeSDK::Resources::V1::Alerts]
      attr_reader :alerts

      # @return [MetronomeSDK::Resources::V1::Plans]
      attr_reader :plans

      # @return [MetronomeSDK::Resources::V1::CreditGrants]
      attr_reader :credit_grants

      # @return [MetronomeSDK::Resources::V1::PricingUnits]
      attr_reader :pricing_units

      # @return [MetronomeSDK::Resources::V1::Customers]
      attr_reader :customers

      # @return [MetronomeSDK::Resources::V1::Dashboards]
      attr_reader :dashboards

      # @return [MetronomeSDK::Resources::V1::Usage]
      attr_reader :usage

      # @return [MetronomeSDK::Resources::V1::AuditLogs]
      attr_reader :audit_logs

      # @return [MetronomeSDK::Resources::V1::CustomFields]
      attr_reader :custom_fields

      # @return [MetronomeSDK::Resources::V1::BillableMetrics]
      attr_reader :billable_metrics

      # @return [MetronomeSDK::Resources::V1::Services]
      attr_reader :services

      # @return [MetronomeSDK::Resources::V1::Invoices]
      attr_reader :invoices

      # @return [MetronomeSDK::Resources::V1::Contracts]
      attr_reader :contracts

      # @return [MetronomeSDK::Resources::V1::Payments]
      attr_reader :payments

      # @api private
      #
      # @param client [MetronomeSDK::Client]
      def initialize(client:)
        @client = client
        @alerts = MetronomeSDK::Resources::V1::Alerts.new(client: client)
        @plans = MetronomeSDK::Resources::V1::Plans.new(client: client)
        @credit_grants = MetronomeSDK::Resources::V1::CreditGrants.new(client: client)
        @pricing_units = MetronomeSDK::Resources::V1::PricingUnits.new(client: client)
        @customers = MetronomeSDK::Resources::V1::Customers.new(client: client)
        @dashboards = MetronomeSDK::Resources::V1::Dashboards.new(client: client)
        @usage = MetronomeSDK::Resources::V1::Usage.new(client: client)
        @audit_logs = MetronomeSDK::Resources::V1::AuditLogs.new(client: client)
        @custom_fields = MetronomeSDK::Resources::V1::CustomFields.new(client: client)
        @billable_metrics = MetronomeSDK::Resources::V1::BillableMetrics.new(client: client)
        @services = MetronomeSDK::Resources::V1::Services.new(client: client)
        @invoices = MetronomeSDK::Resources::V1::Invoices.new(client: client)
        @contracts = MetronomeSDK::Resources::V1::Contracts.new(client: client)
        @payments = MetronomeSDK::Resources::V1::Payments.new(client: client)
      end
    end
  end
end
