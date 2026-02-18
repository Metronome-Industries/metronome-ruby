# frozen_string_literal: true

require "metronome_sdk"

# @example Basic client initialization using METRONOME_BEARER_TOKEN env var
def basic_client_setup
  client = MetronomeSDK::Client.new
  client
end

# @example Client initialization with explicit bearer token
def explicit_token_setup
  client = MetronomeSDK::Client.new(bearer_token: "your-api-key-here")
  client
end

# @example Client initialization with custom configuration
def custom_config_setup
  client = MetronomeSDK::Client.new(
    bearer_token: ENV["METRONOME_BEARER_TOKEN"],
    max_retries: 5,
    timeout: 30.0,
    initial_retry_delay: 1.0,
    max_retry_delay: 15.0
  )
  client
end

# @example Error handling patterns
def error_handling_example(client)
  client.v1.customers.retrieve(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")
rescue MetronomeSDK::Errors::AuthenticationError => e
  puts "Authentication failed: #{e.message}"
rescue MetronomeSDK::Errors::RateLimitError => e
  puts "Rate limited: #{e.message}"
rescue MetronomeSDK::Errors::APIStatusError => e
  puts "API error (#{e.status}): #{e.message}"
rescue MetronomeSDK::Errors::APIConnectionError => e
  puts "Connection error: #{e.message}"
end

# @example Pagination with auto_paging_each
def pagination_example(client)
  page = client.v1.customers.list

  page.auto_paging_each do |customer|
    puts "Customer: #{customer.name} (#{customer.id})"
  end
end

# @example Pagination with manual iteration
def manual_pagination_example(client)
  page = client.v1.customers.list(limit: 10)

  page.data.each do |customer|
    puts "Customer: #{customer.name}"
  end

  if page.next_page
    next_page = client.v1.customers.list(limit: 10, next_page: page.next_page)
    next_page.data.each do |customer|
      puts "Customer: #{customer.name}"
    end
  end
end

# @example Using request options to override per-request settings
def request_options_example(client)
  response = client.v1.customers.retrieve(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    request_options: {
      max_retries: 5,
      timeout: 30,
      extra_headers: {"X-Custom-Header" => "value"}
    }
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# client = basic_client_setup
# client = explicit_token_setup
# client = custom_config_setup
# error_handling_example(client)
# pagination_example(client)
# manual_pagination_example(client)
# request_options_example(client)
