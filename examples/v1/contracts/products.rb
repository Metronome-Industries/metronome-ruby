# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a product
def create_product(client)
  response = client.v1.contracts.products.create(
    name: "My Product",
    type: :USAGE
  )
  puts response.data
end

# @example Retrieve a product by ID
def retrieve_product(client)
  response = client.v1.contracts.products.retrieve(
    id: "d84e7f4e-7a70-4fe4-be02-7a5027beffcc"
  )
  puts response.data
end

# @example Update a product
def update_product(client)
  response = client.v1.contracts.products.update(
    product_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    starting_at: "2024-01-01T00:00:00.000Z"
  )
  puts response.data
end

# @example List all products
def list_products(client)
  page = client.v1.contracts.products.list

  page.auto_paging_each do |product|
    puts "#{product.id} (#{product.type})"
  end
end

# @example Archive a product
def archive_product(client)
  response = client.v1.contracts.products.archive(
    product_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_product(client)
# retrieve_product(client)
# update_product(client)
# list_products(client)
# archive_product(client)
