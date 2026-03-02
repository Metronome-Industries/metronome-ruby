# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      # [Alerts](https://docs.metronome.com/connecting-metronome/alerts/) monitor
      # customer spending, balances, and other billing factors. Use these endpoints to
      # create, retrieve, and archive customer alerts. To view sample alert payloads by
      # alert type, navigate
      # [here.](https://docs.metronome.com/manage-product-access/create-manage-alerts/#webhook-notifications)
      # @return [MetronomeSDK::Resources::V1::Alerts]
      attr_reader :alerts

      # [Plans](https://docs.metronome.com/pricing-and-packaging/create-plans/)
      # determine the base pricing for a customer. Use these endpoints to add a plan to
      # a customer, end a customer plan, retrieve plans, and retrieve plan details.
      # Create plans in the [Metronome app](https://app.metronome.com/plans).
      # @return [MetronomeSDK::Resources::V1::Plans]
      attr_reader :plans

      # [Credit grants](https://docs.metronome.com/invoicing/how-billing-works/manage-credits/)
      # adjust a customer balance for prepayments, reimbursements, promotions, and so
      # on. Use these endpoints to create, retrieve, update, and delete credit grants.
      # @return [MetronomeSDK::Resources::V1::CreditGrants]
      attr_reader :credit_grants

      # Use these endpoints to configure a billing API key, a webhook secret, or invoice
      # finalization behavior.
      # @return [MetronomeSDK::Resources::V1::PricingUnits]
      attr_reader :pricing_units

      # @return [MetronomeSDK::Resources::V1::Customers]
      attr_reader :customers

      # [Customers](https://docs.metronome.com/provisioning/create-customers/) in
      # Metronome represent your users for all billing and reporting. Use these
      # endpoints to create, retrieve, update, and archive customers and their billing
      # configuration.
      # @return [MetronomeSDK::Resources::V1::Dashboards]
      attr_reader :dashboards

      # [Usage events](https://docs.metronome.com/connecting-metronome/send-usage-data/)
      # are the basis for billable metrics. Use these endpoints to send usage events to
      # Metronome and retrieve aggregated event data.
      # @return [MetronomeSDK::Resources::V1::Usage]
      attr_reader :usage

      # [Security](https://docs.metronome.com/developer-resources/security/) endpoints
      # allow you to retrieve security-related data.
      # @return [MetronomeSDK::Resources::V1::AuditLogs]
      attr_reader :audit_logs

      # [Custom fields](https://docs.metronome.com/integrations/custom-fields/) enable
      # adding additional data to Metronome entities. Use these endpoints to create,
      # retrieve, update, and delete custom fields.
      # @return [MetronomeSDK::Resources::V1::CustomFields]
      attr_reader :custom_fields

      # [Billable metrics](https://docs.metronome.com/understanding-metronome/how-metronome-works#billable-metrics)
      # in Metronome represent the various consumption components that Metronome meters
      # and aggregates.
      # @return [MetronomeSDK::Resources::V1::BillableMetrics]
      attr_reader :billable_metrics

      # [Security](https://docs.metronome.com/developer-resources/security/) endpoints
      # allow you to retrieve security-related data.
      # @return [MetronomeSDK::Resources::V1::Services]
      attr_reader :services

      # [Invoices](https://docs.metronome.com/invoicing/) reflect how much a customer
      # spent during a period, which is the basis for billing. Metronome automatically
      # generates invoices based upon your pricing, packaging, and usage events. Use
      # these endpoints to retrieve invoices.
      # @return [MetronomeSDK::Resources::V1::Invoices]
      attr_reader :invoices

      # @return [MetronomeSDK::Resources::V1::Contracts]
      attr_reader :contracts

      # @return [MetronomeSDK::Resources::V1::Packages]
      attr_reader :packages

      # @return [MetronomeSDK::Resources::V1::Payments]
      attr_reader :payments

      # Use these endpoints to configure a billing API key, a webhook secret, or invoice
      # finalization behavior.
      # @return [MetronomeSDK::Resources::V1::Settings]
      attr_reader :settings

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
        @packages = MetronomeSDK::Resources::V1::Packages.new(client: client)
        @payments = MetronomeSDK::Resources::V1::Payments.new(client: client)
        @settings = MetronomeSDK::Resources::V1::Settings.new(client: client)
      end
    end
  end
end
