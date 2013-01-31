require 'Magento.rb'
require 'soap/mapping'

module MagentoMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsMagento = "urn:Magento"

  EncodedRegistry.register(
    :class => AssociativeEntity,
    :schema_type => XSD::QName.new(NsMagento, "associativeEntity"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.register(
    :class => AssociativeArray,
    :schema_type => XSD::QName.new(NsMagento, "associativeArray"),
    :schema_element => [
      ["complexObjectArray", ["AssociativeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AssociativeMultiEntity,
    :schema_type => XSD::QName.new(NsMagento, "associativeMultiEntity"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["value", ["ArrayOfString", XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.register(
    :class => AssociativeMultiArray,
    :schema_type => XSD::QName.new(NsMagento, "associativeMultiArray"),
    :schema_element => [
      ["complexObjectArray", ["AssociativeMultiEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ComplexFilter,
    :schema_type => XSD::QName.new(NsMagento, "complexFilter"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["value", ["AssociativeEntity", XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.register(
    :class => ComplexFilterArray,
    :schema_type => XSD::QName.new(NsMagento, "complexFilterArray"),
    :schema_element => [
      ["complexObjectArray", ["ComplexFilter[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Filters,
    :schema_type => XSD::QName.new(NsMagento, "filters"),
    :schema_element => [
      ["filter", ["AssociativeArray", XSD::QName.new(nil, "filter")], [0, 1]],
      ["complex_filter", ["ComplexFilterArray", XSD::QName.new(nil, "complex_filter")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfString"),
    :schema_element => [
      ["complexObjectArray", ["SOAP::SOAPString[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfInt,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfInt"),
    :schema_element => [
      ["complexObjectArray", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiMethodEntity,
    :schema_type => XSD::QName.new(NsMagento, "apiMethodEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["path", ["SOAP::SOAPString", XSD::QName.new(nil, "path")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["aliases", ["ArrayOfString", XSD::QName.new(nil, "aliases")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfApiMethods,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfApiMethods"),
    :schema_element => [
      ["complexObjectArray", ["ApiMethodEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiEntity,
    :schema_type => XSD::QName.new(NsMagento, "apiEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["aliases", ["ArrayOfString", XSD::QName.new(nil, "aliases")]],
      ["methods", ["ArrayOfApiMethods", XSD::QName.new(nil, "methods")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfApis,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfApis"),
    :schema_element => [
      ["complexObjectArray", ["ApiEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ExistsFaltureEntity,
    :schema_type => XSD::QName.new(NsMagento, "existsFaltureEntity"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfExistsFaltures,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfExistsFaltures"),
    :schema_element => [
      ["complexObjectArray", ["ExistsFaltureEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => StoreEntity,
    :schema_type => XSD::QName.new(NsMagento, "storeEntity"),
    :schema_element => [
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["website_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "website_id")]],
      ["group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "group_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["sort_order", ["SOAP::SOAPInt", XSD::QName.new(nil, "sort_order")]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")]]
    ]
  )

  EncodedRegistry.register(
    :class => StoreEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "storeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["StoreEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MagentoInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "magentoInfoEntity"),
    :schema_element => [
      ["magento_version", ["SOAP::SOAPString", XSD::QName.new(nil, "magento_version")]],
      ["magento_edition", ["SOAP::SOAPString", XSD::QName.new(nil, "magento_edition")]]
    ]
  )

  EncodedRegistry.register(
    :class => DirectoryCountryEntity,
    :schema_type => XSD::QName.new(NsMagento, "directoryCountryEntity"),
    :schema_element => [
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")]],
      ["iso2_code", ["SOAP::SOAPString", XSD::QName.new(nil, "iso2_code")]],
      ["iso3_code", ["SOAP::SOAPString", XSD::QName.new(nil, "iso3_code")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => DirectoryCountryEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "directoryCountryEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["DirectoryCountryEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DirectoryRegionEntity,
    :schema_type => XSD::QName.new(NsMagento, "directoryRegionEntity"),
    :schema_element => [
      ["region_id", ["SOAP::SOAPString", XSD::QName.new(nil, "region_id")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => DirectoryRegionEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "directoryRegionEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["DirectoryRegionEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerCustomerEntityToCreate,
    :schema_type => XSD::QName.new(NsMagento, "customerCustomerEntityToCreate"),
    :schema_element => [
      ["customer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]],
      ["website_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "website_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "group_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerCustomerEntity,
    :schema_type => XSD::QName.new(NsMagento, "customerCustomerEntity"),
    :schema_element => [
      ["customer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["website_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "website_id")], [0, 1]],
      ["created_in", ["SOAP::SOAPString", XSD::QName.new(nil, "created_in")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "middlename")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "group_id")], [0, 1]],
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")], [0, 1]],
      ["dob", ["SOAP::SOAPString", XSD::QName.new(nil, "dob")], [0, 1]],
      ["taxvat", ["SOAP::SOAPString", XSD::QName.new(nil, "taxvat")], [0, 1]],
      ["confirmation", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "confirmation")], [0, 1]],
      ["password_hash", ["SOAP::SOAPString", XSD::QName.new(nil, "password_hash")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerCustomerEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "customerCustomerEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CustomerCustomerEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerGroupEntity,
    :schema_type => XSD::QName.new(NsMagento, "customerGroupEntity"),
    :schema_element => [
      ["customer_group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_group_id")]],
      ["customer_group_code", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_group_code")]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerGroupEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "customerGroupEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CustomerGroupEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerAddressEntityCreate,
    :schema_type => XSD::QName.new(NsMagento, "customerAddressEntityCreate"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "middlename")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")], [0, 1]],
      ["region_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["street", ["ArrayOfString", XSD::QName.new(nil, "street")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["is_default_billing", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_default_billing")], [0, 1]],
      ["is_default_shipping", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_default_shipping")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerAddressEntityItem,
    :schema_type => XSD::QName.new(NsMagento, "customerAddressEntityItem"),
    :schema_element => [
      ["customer_address_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_address_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "middlename")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["region_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(nil, "street")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["is_default_billing", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_default_billing")], [0, 1]],
      ["is_default_shipping", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_default_shipping")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerAddressEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "customerAddressEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CustomerAddressEntityItem[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["set", ["SOAP::SOAPString", XSD::QName.new(nil, "set")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["category_ids", ["ArrayOfString", XSD::QName.new(nil, "category_ids")]],
      ["website_ids", ["ArrayOfString", XSD::QName.new(nil, "website_ids")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductRequestAttributes,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductRequestAttributes"),
    :schema_element => [
      ["attributes", ["ArrayOfString", XSD::QName.new(nil, "attributes")], [0, 1]],
      ["additional_attributes", ["ArrayOfString", XSD::QName.new(nil, "additional_attributes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductReturnEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductReturnEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["set", ["SOAP::SOAPString", XSD::QName.new(nil, "set")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["categories", ["ArrayOfString", XSD::QName.new(nil, "categories")], [0, 1]],
      ["websites", ["ArrayOfString", XSD::QName.new(nil, "websites")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["type_id", ["SOAP::SOAPString", XSD::QName.new(nil, "type_id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["short_description", ["SOAP::SOAPString", XSD::QName.new(nil, "short_description")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["url_key", ["SOAP::SOAPString", XSD::QName.new(nil, "url_key")], [0, 1]],
      ["url_path", ["SOAP::SOAPString", XSD::QName.new(nil, "url_path")], [0, 1]],
      ["visibility", ["SOAP::SOAPString", XSD::QName.new(nil, "visibility")], [0, 1]],
      ["category_ids", ["ArrayOfString", XSD::QName.new(nil, "category_ids")], [0, 1]],
      ["website_ids", ["ArrayOfString", XSD::QName.new(nil, "website_ids")], [0, 1]],
      ["has_options", ["SOAP::SOAPString", XSD::QName.new(nil, "has_options")], [0, 1]],
      ["gift_message_available", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_available")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["special_price", ["SOAP::SOAPString", XSD::QName.new(nil, "special_price")], [0, 1]],
      ["special_from_date", ["SOAP::SOAPString", XSD::QName.new(nil, "special_from_date")], [0, 1]],
      ["special_to_date", ["SOAP::SOAPString", XSD::QName.new(nil, "special_to_date")], [0, 1]],
      ["tax_class_id", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_class_id")], [0, 1]],
      ["tier_price", ["CatalogProductTierPriceEntityArray", XSD::QName.new(nil, "tier_price")], [0, 1]],
      ["meta_title", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_title")], [0, 1]],
      ["meta_keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_keyword")], [0, 1]],
      ["meta_description", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_description")], [0, 1]],
      ["custom_design", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design")], [0, 1]],
      ["custom_layout_update", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_layout_update")], [0, 1]],
      ["options_container", ["SOAP::SOAPString", XSD::QName.new(nil, "options_container")], [0, 1]],
      ["additional_attributes", ["AssociativeArray", XSD::QName.new(nil, "additional_attributes")], [0, 1]],
      ["enable_googlecheckout", ["SOAP::SOAPString", XSD::QName.new(nil, "enable_googlecheckout")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCreateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCreateEntity"),
    :schema_element => [
      ["categories", ["ArrayOfString", XSD::QName.new(nil, "categories")], [0, 1]],
      ["websites", ["ArrayOfString", XSD::QName.new(nil, "websites")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["short_description", ["SOAP::SOAPString", XSD::QName.new(nil, "short_description")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["url_key", ["SOAP::SOAPString", XSD::QName.new(nil, "url_key")], [0, 1]],
      ["url_path", ["SOAP::SOAPString", XSD::QName.new(nil, "url_path")], [0, 1]],
      ["visibility", ["SOAP::SOAPString", XSD::QName.new(nil, "visibility")], [0, 1]],
      ["category_ids", ["ArrayOfString", XSD::QName.new(nil, "category_ids")], [0, 1]],
      ["website_ids", ["ArrayOfString", XSD::QName.new(nil, "website_ids")], [0, 1]],
      ["has_options", ["SOAP::SOAPString", XSD::QName.new(nil, "has_options")], [0, 1]],
      ["gift_message_available", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_available")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["special_price", ["SOAP::SOAPString", XSD::QName.new(nil, "special_price")], [0, 1]],
      ["special_from_date", ["SOAP::SOAPString", XSD::QName.new(nil, "special_from_date")], [0, 1]],
      ["special_to_date", ["SOAP::SOAPString", XSD::QName.new(nil, "special_to_date")], [0, 1]],
      ["tax_class_id", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_class_id")], [0, 1]],
      ["tier_price", ["CatalogProductTierPriceEntityArray", XSD::QName.new(nil, "tier_price")], [0, 1]],
      ["meta_title", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_title")], [0, 1]],
      ["meta_keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_keyword")], [0, 1]],
      ["meta_description", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_description")], [0, 1]],
      ["custom_design", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design")], [0, 1]],
      ["custom_layout_update", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_layout_update")], [0, 1]],
      ["options_container", ["SOAP::SOAPString", XSD::QName.new(nil, "options_container")], [0, 1]],
      ["additional_attributes", ["AssociativeArray", XSD::QName.new(nil, "additional_attributes")], [0, 1]],
      ["stock_data", ["CatalogInventoryStockItemUpdateEntity", XSD::QName.new(nil, "stock_data")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductAttributeSetEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeSetEntity"),
    :schema_element => [
      ["set_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "set_id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductAttributeSetEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeSetEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductAttributeSetEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTypeEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTypeEntity"),
    :schema_element => [
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTypeEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTypeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductTypeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTierPriceEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTierPriceEntity"),
    :schema_element => [
      ["customer_group_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_group_id")], [0, 1]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")], [0, 1]],
      ["qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "qty")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "price")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTierPriceEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTierPriceEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductTierPriceEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCatalogCategoryEntities,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfCatalogCategoryEntities"),
    :schema_element => [
      ["complexObjectArray", ["CatalogCategoryEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogCategoryEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryEntity"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category_id")]],
      ["parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")]],
      ["level", ["SOAP::SOAPInt", XSD::QName.new(nil, "level")]],
      ["children", ["ArrayOfCatalogCategoryEntities", XSD::QName.new(nil, "children")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogCategoryEntityNoChildren,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryEntityNoChildren"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category_id")]],
      ["parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")]],
      ["level", ["SOAP::SOAPInt", XSD::QName.new(nil, "level")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCatalogCategoryEntitiesNoChildren,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfCatalogCategoryEntitiesNoChildren"),
    :schema_element => [
      ["complexObjectArray", ["CatalogCategoryEntityNoChildren[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogCategoryTree,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryTree"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category_id")]],
      ["parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")]],
      ["level", ["SOAP::SOAPInt", XSD::QName.new(nil, "level")]],
      ["children", ["ArrayOfCatalogCategoryEntities", XSD::QName.new(nil, "children")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogCategoryEntityCreate,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryEntityCreate"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")], [0, 1]],
      ["available_sort_by", ["ArrayOfString", XSD::QName.new(nil, "available_sort_by")], [0, 1]],
      ["custom_design", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design")], [0, 1]],
      ["custom_design_apply", ["SOAP::SOAPInt", XSD::QName.new(nil, "custom_design_apply")], [0, 1]],
      ["custom_design_from", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_from")], [0, 1]],
      ["custom_design_to", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_to")], [0, 1]],
      ["custom_layout_update", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_layout_update")], [0, 1]],
      ["default_sort_by", ["SOAP::SOAPString", XSD::QName.new(nil, "default_sort_by")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["display_mode", ["SOAP::SOAPString", XSD::QName.new(nil, "display_mode")], [0, 1]],
      ["is_anchor", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_anchor")], [0, 1]],
      ["landing_page", ["SOAP::SOAPInt", XSD::QName.new(nil, "landing_page")], [0, 1]],
      ["meta_description", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_description")], [0, 1]],
      ["meta_keywords", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_keywords")], [0, 1]],
      ["meta_title", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_title")], [0, 1]],
      ["page_layout", ["SOAP::SOAPString", XSD::QName.new(nil, "page_layout")], [0, 1]],
      ["url_key", ["SOAP::SOAPString", XSD::QName.new(nil, "url_key")], [0, 1]],
      ["include_in_menu", ["SOAP::SOAPInt", XSD::QName.new(nil, "include_in_menu")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogCategoryInfo,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryInfo"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPString", XSD::QName.new(nil, "category_id")]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")]],
      ["level", ["SOAP::SOAPString", XSD::QName.new(nil, "level")]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")]],
      ["all_children", ["SOAP::SOAPString", XSD::QName.new(nil, "all_children")]],
      ["children", ["SOAP::SOAPString", XSD::QName.new(nil, "children")]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["url_key", ["SOAP::SOAPString", XSD::QName.new(nil, "url_key")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["meta_title", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_title")], [0, 1]],
      ["meta_keywords", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_keywords")], [0, 1]],
      ["meta_description", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_description")], [0, 1]],
      ["path", ["SOAP::SOAPString", XSD::QName.new(nil, "path")], [0, 1]],
      ["url_path", ["SOAP::SOAPString", XSD::QName.new(nil, "url_path")], [0, 1]],
      ["children_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "children_count")], [0, 1]],
      ["display_mode", ["SOAP::SOAPString", XSD::QName.new(nil, "display_mode")], [0, 1]],
      ["is_anchor", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_anchor")], [0, 1]],
      ["available_sort_by", ["ArrayOfString", XSD::QName.new(nil, "available_sort_by")], [0, 1]],
      ["custom_design", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design")], [0, 1]],
      ["custom_design_apply", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_apply")], [0, 1]],
      ["custom_design_from", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_from")], [0, 1]],
      ["custom_design_to", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_to")], [0, 1]],
      ["page_layout", ["SOAP::SOAPString", XSD::QName.new(nil, "page_layout")], [0, 1]],
      ["custom_layout_update", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_layout_update")], [0, 1]],
      ["default_sort_by", ["SOAP::SOAPString", XSD::QName.new(nil, "default_sort_by")], [0, 1]],
      ["landing_page", ["SOAP::SOAPInt", XSD::QName.new(nil, "landing_page")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogAssignedProduct,
    :schema_type => XSD::QName.new(NsMagento, "catalogAssignedProduct"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "product_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["set", ["SOAP::SOAPInt", XSD::QName.new(nil, "set")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogAssignedProductArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogAssignedProductArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogAssignedProduct[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogAttributeEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogAttributeEntity"),
    :schema_element => [
      ["attribute_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "attribute_id")], [0, 1]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["required", ["SOAP::SOAPString", XSD::QName.new(nil, "required")], [0, 1]],
      ["scope", ["SOAP::SOAPString", XSD::QName.new(nil, "scope")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogAttributeEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogAttributeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogAttributeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogAttributeOptionEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogAttributeOptionEntity"),
    :schema_element => [
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogAttributeOptionEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogAttributeOptionEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogAttributeOptionEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductImageEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductImageEntity"),
    :schema_element => [
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")]],
      ["exclude", ["SOAP::SOAPString", XSD::QName.new(nil, "exclude")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["types", ["ArrayOfString", XSD::QName.new(nil, "types")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductImageEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductImageEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductImageEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductAttributeMediaTypeEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeMediaTypeEntity"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["scope", ["SOAP::SOAPString", XSD::QName.new(nil, "scope")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductAttributeMediaTypeEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeMediaTypeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductAttributeMediaTypeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductImageFileEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductImageFileEntity"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["mime", ["SOAP::SOAPString", XSD::QName.new(nil, "mime")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductAttributeMediaCreateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeMediaCreateEntity"),
    :schema_element => [
      ["file", ["CatalogProductImageFileEntity", XSD::QName.new(nil, "file")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")], [0, 1]],
      ["types", ["ArrayOfString", XSD::QName.new(nil, "types")], [0, 1]],
      ["exclude", ["SOAP::SOAPString", XSD::QName.new(nil, "exclude")], [0, 1]],
      ["remove", ["SOAP::SOAPString", XSD::QName.new(nil, "remove")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductLinkEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductLinkEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["set", ["SOAP::SOAPString", XSD::QName.new(nil, "set")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductLinkEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductLinkEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductLinkEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductLinkAttributeEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductLinkAttributeEntity"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductLinkAttributeEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductLinkAttributeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductLinkAttributeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductAttributeFrontendLabelEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeFrontendLabelEntity"),
    :schema_element => [
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductAttributeFrontendLabelArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeFrontendLabelArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductAttributeFrontendLabelEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductAttributeEntityToCreate,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeEntityToCreate"),
    :schema_element => [
      ["attribute_code", ["SOAP::SOAPString", XSD::QName.new(nil, "attribute_code")]],
      ["frontend_input", ["SOAP::SOAPString", XSD::QName.new(nil, "frontend_input")]],
      ["scope", ["SOAP::SOAPString", XSD::QName.new(nil, "scope")], [0, 1]],
      ["default_value", ["SOAP::SOAPString", XSD::QName.new(nil, "default_value")], [0, 1]],
      ["is_unique", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_unique")], [0, 1]],
      ["is_required", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_required")], [0, 1]],
      ["apply_to", ["ArrayOfString", XSD::QName.new(nil, "apply_to")], [0, 1]],
      ["is_configurable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_configurable")], [0, 1]],
      ["is_searchable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_searchable")], [0, 1]],
      ["is_visible_in_advanced_search", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_visible_in_advanced_search")], [0, 1]],
      ["is_comparable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_comparable")], [0, 1]],
      ["is_used_for_promo_rules", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_used_for_promo_rules")], [0, 1]],
      ["is_visible_on_front", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_visible_on_front")], [0, 1]],
      ["used_in_product_listing", ["SOAP::SOAPInt", XSD::QName.new(nil, "used_in_product_listing")], [0, 1]],
      ["additional_fields", ["AssociativeArray", XSD::QName.new(nil, "additional_fields")], [0, 1]],
      ["frontend_label", ["CatalogProductAttributeFrontendLabelArray", XSD::QName.new(nil, "frontend_label")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionAdditionalFieldsEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionAdditionalFieldsEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["max_characters", ["SOAP::SOAPString", XSD::QName.new(nil, "max_characters")], [0, 1]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]],
      ["file_extension", ["SOAP::SOAPString", XSD::QName.new(nil, "file_extension")], [0, 1]],
      ["image_size_x", ["SOAP::SOAPString", XSD::QName.new(nil, "image_size_x")], [0, 1]],
      ["image_size_y", ["SOAP::SOAPString", XSD::QName.new(nil, "image_size_y")], [0, 1]],
      ["value_id", ["SOAP::SOAPString", XSD::QName.new(nil, "value_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionAdditionalFieldsArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionAdditionalFieldsArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionAdditionalFieldsEntity[]", XSD::QName.new(nil, "complexObjectArray")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionToAdd,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionToAdd"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]],
      ["is_require", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_require")], [0, 1]],
      ["additional_fields", ["CatalogProductCustomOptionAdditionalFieldsArray", XSD::QName.new(nil, "additional_fields")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionToUpdate,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionToUpdate"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]],
      ["is_require", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_require")], [0, 1]],
      ["additional_fields", ["CatalogProductCustomOptionAdditionalFieldsArray", XSD::QName.new(nil, "additional_fields")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionInfoEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]],
      ["is_require", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_require")]],
      ["additional_fields", ["CatalogProductCustomOptionAdditionalFieldsArray", XSD::QName.new(nil, "additional_fields")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionListEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionListEntity"),
    :schema_element => [
      ["option_id", ["SOAP::SOAPString", XSD::QName.new(nil, "option_id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]],
      ["is_require", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_require")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionListArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionListArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionTypesEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionTypesEntity"),
    :schema_element => [
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionTypesArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionTypesArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionTypesEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionValueInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueInfoEntity"),
    :schema_element => [
      ["value_id", ["SOAP::SOAPString", XSD::QName.new(nil, "value_id")]],
      ["option_id", ["SOAP::SOAPString", XSD::QName.new(nil, "option_id")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]],
      ["default_price", ["SOAP::SOAPString", XSD::QName.new(nil, "default_price")]],
      ["default_price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "default_price_type")]],
      ["store_price", ["SOAP::SOAPString", XSD::QName.new(nil, "store_price")]],
      ["store_price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "store_price_type")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")]],
      ["default_title", ["SOAP::SOAPString", XSD::QName.new(nil, "default_title")]],
      ["store_title", ["SOAP::SOAPString", XSD::QName.new(nil, "store_title")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionValueListEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueListEntity"),
    :schema_element => [
      ["value_id", ["SOAP::SOAPString", XSD::QName.new(nil, "value_id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionValueListArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueListArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionValueListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionValueAddEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueAddEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionValueAddArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueAddArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionValueAddEntity[]", XSD::QName.new(nil, "complexObjectArray")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductCustomOptionValueUpdateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueUpdateEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["total_paid", ["SOAP::SOAPString", XSD::QName.new(nil, "total_paid")], [0, 1]],
      ["total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_refunded")], [0, 1]],
      ["total_qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "total_qty_ordered")], [0, 1]],
      ["total_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "total_canceled")], [0, 1]],
      ["total_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "total_invoiced")], [0, 1]],
      ["total_online_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_online_refunded")], [0, 1]],
      ["total_offline_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_offline_refunded")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["base_total_paid", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_paid")], [0, 1]],
      ["base_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_refunded")], [0, 1]],
      ["base_total_qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_qty_ordered")], [0, 1]],
      ["base_total_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_canceled")], [0, 1]],
      ["base_total_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_invoiced")], [0, 1]],
      ["base_total_online_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_online_refunded")], [0, 1]],
      ["base_total_offline_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_offline_refunded")], [0, 1]],
      ["billing_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_address_id")], [0, 1]],
      ["billing_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_firstname")], [0, 1]],
      ["billing_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_lastname")], [0, 1]],
      ["shipping_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_address_id")], [0, 1]],
      ["shipping_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_firstname")], [0, 1]],
      ["shipping_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_lastname")], [0, 1]],
      ["billing_name", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_name")], [0, 1]],
      ["shipping_name", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_name")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["store_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_order_rate")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["base_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_order_rate")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["store_name", ["SOAP::SOAPString", XSD::QName.new(nil, "store_name")], [0, 1]],
      ["remote_ip", ["SOAP::SOAPString", XSD::QName.new(nil, "remote_ip")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["order_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "order_currency_code")], [0, 1]],
      ["shipping_method", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_method")], [0, 1]],
      ["shipping_description", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_description")], [0, 1]],
      ["customer_email", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_email")], [0, 1]],
      ["customer_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_firstname")], [0, 1]],
      ["customer_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_lastname")], [0, 1]],
      ["quote_id", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_id")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPString", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["customer_group_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_group_id")], [0, 1]],
      ["customer_note_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note_notify")], [0, 1]],
      ["customer_is_guest", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_is_guest")], [0, 1]],
      ["email_sent", ["SOAP::SOAPString", XSD::QName.new(nil, "email_sent")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["gift_message", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message")], [0, 1]],
      ["shipping_address", ["SalesOrderAddressEntity", XSD::QName.new(nil, "shipping_address")], [0, 1]],
      ["billing_address", ["SalesOrderAddressEntity", XSD::QName.new(nil, "billing_address")], [0, 1]],
      ["items", ["SalesOrderItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["payment", ["SalesOrderPaymentEntity", XSD::QName.new(nil, "payment")], [0, 1]],
      ["status_history", ["SalesOrderStatusHistoryEntityArray", XSD::QName.new(nil, "status_history")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderListEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderListEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["total_paid", ["SOAP::SOAPString", XSD::QName.new(nil, "total_paid")], [0, 1]],
      ["total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_refunded")], [0, 1]],
      ["total_qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "total_qty_ordered")], [0, 1]],
      ["total_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "total_canceled")], [0, 1]],
      ["total_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "total_invoiced")], [0, 1]],
      ["total_online_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_online_refunded")], [0, 1]],
      ["total_offline_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_offline_refunded")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["base_total_paid", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_paid")], [0, 1]],
      ["base_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_refunded")], [0, 1]],
      ["base_total_qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_qty_ordered")], [0, 1]],
      ["base_total_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_canceled")], [0, 1]],
      ["base_total_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_invoiced")], [0, 1]],
      ["base_total_online_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_online_refunded")], [0, 1]],
      ["base_total_offline_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_offline_refunded")], [0, 1]],
      ["billing_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_address_id")], [0, 1]],
      ["billing_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_firstname")], [0, 1]],
      ["billing_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_lastname")], [0, 1]],
      ["shipping_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_address_id")], [0, 1]],
      ["shipping_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_firstname")], [0, 1]],
      ["shipping_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_lastname")], [0, 1]],
      ["billing_name", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_name")], [0, 1]],
      ["shipping_name", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_name")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["store_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_order_rate")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["base_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_order_rate")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["store_name", ["SOAP::SOAPString", XSD::QName.new(nil, "store_name")], [0, 1]],
      ["remote_ip", ["SOAP::SOAPString", XSD::QName.new(nil, "remote_ip")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["order_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "order_currency_code")], [0, 1]],
      ["shipping_method", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_method")], [0, 1]],
      ["shipping_description", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_description")], [0, 1]],
      ["customer_email", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_email")], [0, 1]],
      ["customer_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_firstname")], [0, 1]],
      ["customer_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_lastname")], [0, 1]],
      ["quote_id", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_id")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPString", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["customer_group_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_group_id")], [0, 1]],
      ["customer_note_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note_notify")], [0, 1]],
      ["customer_is_guest", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_is_guest")], [0, 1]],
      ["email_sent", ["SOAP::SOAPString", XSD::QName.new(nil, "email_sent")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["coupon_code", ["SOAP::SOAPString", XSD::QName.new(nil, "coupon_code")], [0, 1]],
      ["protect_code", ["SOAP::SOAPString", XSD::QName.new(nil, "protect_code")], [0, 1]],
      ["base_discount_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_canceled")], [0, 1]],
      ["base_discount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_invoiced")], [0, 1]],
      ["base_discount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_refunded")], [0, 1]],
      ["base_shipping_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_canceled")], [0, 1]],
      ["base_shipping_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_invoiced")], [0, 1]],
      ["base_shipping_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_refunded")], [0, 1]],
      ["base_shipping_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_tax_amount")], [0, 1]],
      ["base_shipping_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_tax_refunded")], [0, 1]],
      ["base_subtotal_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_canceled")], [0, 1]],
      ["base_subtotal_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_invoiced")], [0, 1]],
      ["base_subtotal_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_refunded")], [0, 1]],
      ["base_tax_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_canceled")], [0, 1]],
      ["base_tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_invoiced")], [0, 1]],
      ["base_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_refunded")], [0, 1]],
      ["base_total_invoiced_cost", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_invoiced_cost")], [0, 1]],
      ["discount_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_canceled")], [0, 1]],
      ["discount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_invoiced")], [0, 1]],
      ["discount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_refunded")], [0, 1]],
      ["shipping_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_canceled")], [0, 1]],
      ["shipping_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_invoiced")], [0, 1]],
      ["shipping_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_refunded")], [0, 1]],
      ["shipping_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_tax_amount")], [0, 1]],
      ["shipping_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_tax_refunded")], [0, 1]],
      ["subtotal_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_canceled")], [0, 1]],
      ["subtotal_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_invoiced")], [0, 1]],
      ["subtotal_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_refunded")], [0, 1]],
      ["tax_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_canceled")], [0, 1]],
      ["tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_invoiced")], [0, 1]],
      ["tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_refunded")], [0, 1]],
      ["can_ship_partially", ["SOAP::SOAPString", XSD::QName.new(nil, "can_ship_partially")], [0, 1]],
      ["can_ship_partially_item", ["SOAP::SOAPString", XSD::QName.new(nil, "can_ship_partially_item")], [0, 1]],
      ["edit_increment", ["SOAP::SOAPString", XSD::QName.new(nil, "edit_increment")], [0, 1]],
      ["forced_do_shipment_with_invoice", ["SOAP::SOAPString", XSD::QName.new(nil, "forced_do_shipment_with_invoice")], [0, 1]],
      ["payment_authorization_expiration", ["SOAP::SOAPString", XSD::QName.new(nil, "payment_authorization_expiration")], [0, 1]],
      ["paypal_ipn_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "paypal_ipn_customer_notified")], [0, 1]],
      ["quote_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_address_id")], [0, 1]],
      ["adjustment_negative", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment_negative")], [0, 1]],
      ["adjustment_positive", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment_positive")], [0, 1]],
      ["base_adjustment_negative", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment_negative")], [0, 1]],
      ["base_adjustment_positive", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment_positive")], [0, 1]],
      ["base_shipping_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_discount_amount")], [0, 1]],
      ["base_subtotal_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_incl_tax")], [0, 1]],
      ["base_total_due", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_due")], [0, 1]],
      ["payment_authorization_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "payment_authorization_amount")], [0, 1]],
      ["shipping_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_discount_amount")], [0, 1]],
      ["subtotal_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_incl_tax")], [0, 1]],
      ["total_due", ["SOAP::SOAPString", XSD::QName.new(nil, "total_due")], [0, 1]],
      ["customer_dob", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_dob")], [0, 1]],
      ["customer_middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_middlename")], [0, 1]],
      ["customer_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_prefix")], [0, 1]],
      ["customer_suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_suffix")], [0, 1]],
      ["customer_taxvat", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_taxvat")], [0, 1]],
      ["discount_description", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_description")], [0, 1]],
      ["ext_customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_customer_id")], [0, 1]],
      ["ext_order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_order_id")], [0, 1]],
      ["hold_before_state", ["SOAP::SOAPString", XSD::QName.new(nil, "hold_before_state")], [0, 1]],
      ["hold_before_status", ["SOAP::SOAPString", XSD::QName.new(nil, "hold_before_status")], [0, 1]],
      ["original_increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "original_increment_id")], [0, 1]],
      ["relation_child_id", ["SOAP::SOAPString", XSD::QName.new(nil, "relation_child_id")], [0, 1]],
      ["relation_child_real_id", ["SOAP::SOAPString", XSD::QName.new(nil, "relation_child_real_id")], [0, 1]],
      ["relation_parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "relation_parent_id")], [0, 1]],
      ["relation_parent_real_id", ["SOAP::SOAPString", XSD::QName.new(nil, "relation_parent_real_id")], [0, 1]],
      ["x_forwarded_for", ["SOAP::SOAPString", XSD::QName.new(nil, "x_forwarded_for")], [0, 1]],
      ["customer_note", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note")], [0, 1]],
      ["total_item_count", ["SOAP::SOAPString", XSD::QName.new(nil, "total_item_count")], [0, 1]],
      ["customer_gender", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_gender")], [0, 1]],
      ["hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_amount")], [0, 1]],
      ["base_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_amount")], [0, 1]],
      ["shipping_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_hidden_tax_amount")], [0, 1]],
      ["base_shipping_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_hidden_tax_amount")], [0, 1]],
      ["hidden_tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_invoiced")], [0, 1]],
      ["base_hidden_tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_invoiced")], [0, 1]],
      ["hidden_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_refunded")], [0, 1]],
      ["base_hidden_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_refunded")], [0, 1]],
      ["shipping_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_incl_tax")], [0, 1]],
      ["base_shipping_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_incl_tax")], [0, 1]],
      ["base_customer_balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_amount")], [0, 1]],
      ["customer_balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_amount")], [0, 1]],
      ["base_customer_balance_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_invoiced")], [0, 1]],
      ["customer_balance_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_invoiced")], [0, 1]],
      ["base_customer_balance_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_refunded")], [0, 1]],
      ["customer_balance_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_refunded")], [0, 1]],
      ["base_customer_balance_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_total_refunded")], [0, 1]],
      ["customer_balance_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_total_refunded")], [0, 1]],
      ["gift_cards", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards")], [0, 1]],
      ["base_gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_amount")], [0, 1]],
      ["gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_amount")], [0, 1]],
      ["base_gift_cards_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_invoiced")], [0, 1]],
      ["gift_cards_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_invoiced")], [0, 1]],
      ["base_gift_cards_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_refunded")], [0, 1]],
      ["gift_cards_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_refunded")], [0, 1]],
      ["reward_points_balance", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance")], [0, 1]],
      ["base_reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount")], [0, 1]],
      ["reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount")], [0, 1]],
      ["base_reward_currency_amount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount_invoiced")], [0, 1]],
      ["reward_currency_amount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount_invoiced")], [0, 1]],
      ["base_reward_currency_amount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount_refunded")], [0, 1]],
      ["reward_currency_amount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount_refunded")], [0, 1]],
      ["reward_points_balance_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance_refunded")], [0, 1]],
      ["reward_points_balance_to_refund", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance_to_refund")], [0, 1]],
      ["reward_salesrule_points", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_salesrule_points")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderListEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderListEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderAddressEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderAddressEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["address_type", ["SOAP::SOAPString", XSD::QName.new(nil, "address_type")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(nil, "street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["region_id", ["SOAP::SOAPString", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "address_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderItemEntity"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["quote_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_item_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["product_type", ["SOAP::SOAPString", XSD::QName.new(nil, "product_type")], [0, 1]],
      ["product_options", ["SOAP::SOAPString", XSD::QName.new(nil, "product_options")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPString", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["free_shipping", ["SOAP::SOAPString", XSD::QName.new(nil, "free_shipping")], [0, 1]],
      ["is_qty_decimal", ["SOAP::SOAPString", XSD::QName.new(nil, "is_qty_decimal")], [0, 1]],
      ["no_discount", ["SOAP::SOAPString", XSD::QName.new(nil, "no_discount")], [0, 1]],
      ["qty_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_canceled")], [0, 1]],
      ["qty_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_invoiced")], [0, 1]],
      ["qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_ordered")], [0, 1]],
      ["qty_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_refunded")], [0, 1]],
      ["qty_shipped", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_shipped")], [0, 1]],
      ["cost", ["SOAP::SOAPString", XSD::QName.new(nil, "cost")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "base_price")], [0, 1]],
      ["original_price", ["SOAP::SOAPString", XSD::QName.new(nil, "original_price")], [0, 1]],
      ["base_original_price", ["SOAP::SOAPString", XSD::QName.new(nil, "base_original_price")], [0, 1]],
      ["tax_percent", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_percent")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_invoiced")], [0, 1]],
      ["base_tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_invoiced")], [0, 1]],
      ["discount_percent", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_percent")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["discount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_invoiced")], [0, 1]],
      ["base_discount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_invoiced")], [0, 1]],
      ["amount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "amount_refunded")], [0, 1]],
      ["base_amount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_amount_refunded")], [0, 1]],
      ["row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "row_total")], [0, 1]],
      ["base_row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_total")], [0, 1]],
      ["row_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "row_invoiced")], [0, 1]],
      ["base_row_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_invoiced")], [0, 1]],
      ["row_weight", ["SOAP::SOAPString", XSD::QName.new(nil, "row_weight")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["gift_message", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message")], [0, 1]],
      ["gift_message_available", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_available")], [0, 1]],
      ["base_tax_before_discount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_before_discount")], [0, 1]],
      ["tax_before_discount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_before_discount")], [0, 1]],
      ["weee_tax_applied", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied")], [0, 1]],
      ["weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_amount")], [0, 1]],
      ["weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_row_amount")], [0, 1]],
      ["base_weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_amount")], [0, 1]],
      ["base_weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_row_amount")], [0, 1]],
      ["weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_disposition")], [0, 1]],
      ["weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_row_disposition")], [0, 1]],
      ["base_weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_disposition")], [0, 1]],
      ["base_weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_row_disposition")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => OrderItemIdQty,
    :schema_type => XSD::QName.new(NsMagento, "orderItemIdQty"),
    :schema_element => [
      ["order_item_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "order_item_id")]],
      ["qty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "qty")]]
    ]
  )

  EncodedRegistry.register(
    :class => OrderItemIdQtyArray,
    :schema_type => XSD::QName.new(NsMagento, "orderItemIdQtyArray"),
    :schema_element => [
      ["complexObjectArray", ["OrderItemIdQty[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderPaymentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderPaymentEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["amount_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "amount_ordered")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["base_amount_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "base_amount_ordered")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["po_number", ["SOAP::SOAPString", XSD::QName.new(nil, "po_number")], [0, 1]],
      ["cc_type", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_type")], [0, 1]],
      ["cc_number_enc", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_number_enc")], [0, 1]],
      ["cc_last4", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_last4")], [0, 1]],
      ["cc_owner", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_owner")], [0, 1]],
      ["cc_exp_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_month")], [0, 1]],
      ["cc_exp_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_year")], [0, 1]],
      ["cc_ss_start_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_start_month")], [0, 1]],
      ["cc_ss_start_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_start_year")], [0, 1]],
      ["payment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "payment_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderStatusHistoryEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderStatusHistoryEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderStatusHistoryEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderStatusHistoryEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderStatusHistoryEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderShipmentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["shipping_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_address_id")], [0, 1]],
      ["shipping_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_firstname")], [0, 1]],
      ["shipping_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_lastname")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["order_increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_increment_id")], [0, 1]],
      ["order_created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "order_created_at")], [0, 1]],
      ["total_qty", ["SOAP::SOAPString", XSD::QName.new(nil, "total_qty")], [0, 1]],
      ["shipment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipment_id")], [0, 1]],
      ["items", ["SalesOrderShipmentItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["tracks", ["SalesOrderShipmentTrackEntityArray", XSD::QName.new(nil, "tracks")], [0, 1]],
      ["comments", ["SalesOrderShipmentCommentEntityArray", XSD::QName.new(nil, "comments")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderShipmentEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderShipmentEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderShipmentCommentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentCommentEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")], [0, 1]],
      ["comment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "comment_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderShipmentCommentEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentCommentEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderShipmentCommentEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderShipmentTrackEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentTrackEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["carrier_code", ["SOAP::SOAPString", XSD::QName.new(nil, "carrier_code")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["track_id", ["SOAP::SOAPString", XSD::QName.new(nil, "track_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderShipmentTrackEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentTrackEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderShipmentTrackEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderShipmentItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentItemEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["order_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_item_id")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderShipmentItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderShipmentItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderInvoiceEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["order_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "order_currency_code")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["store_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_order_rate")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["base_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_order_rate")], [0, 1]],
      ["subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["billing_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_address_id")], [0, 1]],
      ["billing_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_firstname")], [0, 1]],
      ["billing_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_lastname")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["order_increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_increment_id")], [0, 1]],
      ["order_created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "order_created_at")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["invoice_id", ["SOAP::SOAPString", XSD::QName.new(nil, "invoice_id")], [0, 1]],
      ["items", ["SalesOrderInvoiceItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["comments", ["SalesOrderInvoiceCommentEntityArray", XSD::QName.new(nil, "comments")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderInvoiceEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderInvoiceEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderInvoiceItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceItemEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["weee_tax_applied", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["cost", ["SOAP::SOAPString", XSD::QName.new(nil, "cost")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "row_total")], [0, 1]],
      ["base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "base_price")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["base_row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_total")], [0, 1]],
      ["base_weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_amount")], [0, 1]],
      ["base_weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_row_amount")], [0, 1]],
      ["weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_amount")], [0, 1]],
      ["weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_row_amount")], [0, 1]],
      ["weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_disposition")], [0, 1]],
      ["weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_row_disposition")], [0, 1]],
      ["base_weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_disposition")], [0, 1]],
      ["base_weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_row_disposition")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["order_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_item_id")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderInvoiceItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderInvoiceItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderInvoiceCommentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceCommentEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")], [0, 1]],
      ["comment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "comment_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderInvoiceCommentEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceCommentEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderInvoiceCommentEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderCreditmemoEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoEntity"),
    :schema_element => [
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["transaction_id", ["SOAP::SOAPString", XSD::QName.new(nil, "transaction_id")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["order_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "order_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["cybersource_token", ["SOAP::SOAPString", XSD::QName.new(nil, "cybersource_token")], [0, 1]],
      ["invoice_id", ["SOAP::SOAPString", XSD::QName.new(nil, "invoice_id")], [0, 1]],
      ["billing_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_address_id")], [0, 1]],
      ["shipping_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_address_id")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["creditmemo_status", ["SOAP::SOAPString", XSD::QName.new(nil, "creditmemo_status")], [0, 1]],
      ["email_sent", ["SOAP::SOAPString", XSD::QName.new(nil, "email_sent")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["shipping_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_tax_amount")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["base_adjustment_positive", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment_positive")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["adjustment", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment")], [0, 1]],
      ["subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["base_adjustment", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["adjustment_negative", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment_negative")], [0, 1]],
      ["subtotal_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_incl_tax")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["base_subtotal_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_incl_tax")], [0, 1]],
      ["base_adjustment_negative", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment_negative")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["base_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_order_rate")], [0, 1]],
      ["store_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_order_rate")], [0, 1]],
      ["base_shipping_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_tax_amount")], [0, 1]],
      ["adjustment_positive", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment_positive")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_amount")], [0, 1]],
      ["base_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_amount")], [0, 1]],
      ["shipping_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_hidden_tax_amount")], [0, 1]],
      ["base_shipping_hidden_tax_amnt", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_hidden_tax_amnt")], [0, 1]],
      ["shipping_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_incl_tax")], [0, 1]],
      ["base_shipping_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_incl_tax")], [0, 1]],
      ["base_customer_balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_amount")], [0, 1]],
      ["customer_balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_amount")], [0, 1]],
      ["bs_customer_bal_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "bs_customer_bal_total_refunded")], [0, 1]],
      ["customer_bal_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_bal_total_refunded")], [0, 1]],
      ["base_gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_amount")], [0, 1]],
      ["gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_amount")], [0, 1]],
      ["gw_base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_base_price")], [0, 1]],
      ["gw_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_price")], [0, 1]],
      ["gw_items_base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_items_base_price")], [0, 1]],
      ["gw_items_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_items_price")], [0, 1]],
      ["gw_card_base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_card_base_price")], [0, 1]],
      ["gw_card_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_card_price")], [0, 1]],
      ["gw_base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_base_tax_amount")], [0, 1]],
      ["gw_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_tax_amount")], [0, 1]],
      ["gw_items_base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_items_base_tax_amount")], [0, 1]],
      ["gw_items_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_items_tax_amount")], [0, 1]],
      ["gw_card_base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_card_base_tax_amount")], [0, 1]],
      ["gw_card_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_card_tax_amount")], [0, 1]],
      ["base_reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount")], [0, 1]],
      ["reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount")], [0, 1]],
      ["reward_points_balance", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance")], [0, 1]],
      ["reward_points_balance_refund", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance_refund")], [0, 1]],
      ["creditmemo_id", ["SOAP::SOAPString", XSD::QName.new(nil, "creditmemo_id")], [0, 1]],
      ["items", ["SalesOrderCreditmemoItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["comments", ["SalesOrderCreditmemoCommentEntityArray", XSD::QName.new(nil, "comments")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderCreditmemoEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderCreditmemoEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderCreditmemoItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoItemEntity"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_row_amount")], [0, 1]],
      ["base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "base_price")], [0, 1]],
      ["base_weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_row_disposition")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["base_weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_amount")], [0, 1]],
      ["weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_row_disposition")], [0, 1]],
      ["base_row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_total")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "row_total")], [0, 1]],
      ["weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["base_weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_disposition")], [0, 1]],
      ["price_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "price_incl_tax")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_disposition")], [0, 1]],
      ["base_price_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_price_incl_tax")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["base_cost", ["SOAP::SOAPString", XSD::QName.new(nil, "base_cost")], [0, 1]],
      ["base_weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_row_amount")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["base_row_total_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_total_incl_tax")], [0, 1]],
      ["row_total_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "row_total_incl_tax")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["order_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_item_id")], [0, 1]],
      ["additional_data", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_data")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["weee_tax_applied", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_amount")], [0, 1]],
      ["base_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_amount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderCreditmemoItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderCreditmemoItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderCreditmemoCommentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoCommentEntity"),
    :schema_element => [
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")], [0, 1]],
      ["comment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "comment_id")], [0, 1]],
      ["is_visible_on_front", ["SOAP::SOAPString", XSD::QName.new(nil, "is_visible_on_front")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderCreditmemoCommentEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoCommentEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderCreditmemoCommentEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesOrderCreditmemoData,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoData"),
    :schema_element => [
      ["qtys", ["OrderItemIdQtyArray", XSD::QName.new(nil, "qtys")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["adjustment_positive", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustment_positive")], [0, 1]],
      ["adjustment_negative", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustment_negative")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogInventoryStockItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogInventoryStockItemEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["is_in_stock", ["SOAP::SOAPString", XSD::QName.new(nil, "is_in_stock")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogInventoryStockItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogInventoryStockItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogInventoryStockItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogInventoryStockItemUpdateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogInventoryStockItemUpdateEntity"),
    :schema_element => [
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["is_in_stock", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_in_stock")], [0, 1]],
      ["manage_stock", ["SOAP::SOAPInt", XSD::QName.new(nil, "manage_stock")], [0, 1]],
      ["use_config_manage_stock", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_manage_stock")], [0, 1]],
      ["min_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "min_qty")], [0, 1]],
      ["use_config_min_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_min_qty")], [0, 1]],
      ["min_sale_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "min_sale_qty")], [0, 1]],
      ["use_config_min_sale_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_min_sale_qty")], [0, 1]],
      ["max_sale_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "max_sale_qty")], [0, 1]],
      ["use_config_max_sale_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_max_sale_qty")], [0, 1]],
      ["is_qty_decimal", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_qty_decimal")], [0, 1]],
      ["backorders", ["SOAP::SOAPInt", XSD::QName.new(nil, "backorders")], [0, 1]],
      ["use_config_backorders", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_backorders")], [0, 1]],
      ["notify_stock_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "notify_stock_qty")], [0, 1]],
      ["use_config_notify_stock_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_notify_stock_qty")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartAddressEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartAddressEntity"),
    :schema_element => [
      ["address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "address_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["save_in_address_book", ["SOAP::SOAPInt", XSD::QName.new(nil, "save_in_address_book")], [0, 1]],
      ["customer_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_address_id")], [0, 1]],
      ["address_type", ["SOAP::SOAPString", XSD::QName.new(nil, "address_type")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "middlename")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(nil, "street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["region_id", ["SOAP::SOAPString", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["same_as_billing", ["SOAP::SOAPInt", XSD::QName.new(nil, "same_as_billing")], [0, 1]],
      ["free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "free_shipping")], [0, 1]],
      ["shipping_method", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_method")], [0, 1]],
      ["shipping_description", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_description")], [0, 1]],
      ["weight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weight")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartItemEntity"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["parent_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_item_id")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["additional_data", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_data")], [0, 1]],
      ["free_shipping", ["SOAP::SOAPString", XSD::QName.new(nil, "free_shipping")], [0, 1]],
      ["is_qty_decimal", ["SOAP::SOAPString", XSD::QName.new(nil, "is_qty_decimal")], [0, 1]],
      ["no_discount", ["SOAP::SOAPString", XSD::QName.new(nil, "no_discount")], [0, 1]],
      ["weight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weight")], [0, 1]],
      ["qty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "qty")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "price")], [0, 1]],
      ["base_price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_price")], [0, 1]],
      ["custom_price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "custom_price")], [0, 1]],
      ["discount_percent", ["SOAP::SOAPDouble", XSD::QName.new(nil, "discount_percent")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["tax_percent", ["SOAP::SOAPDouble", XSD::QName.new(nil, "tax_percent")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["row_total", ["SOAP::SOAPDouble", XSD::QName.new(nil, "row_total")], [0, 1]],
      ["base_row_total", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_row_total")], [0, 1]],
      ["row_total_with_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "row_total_with_discount")], [0, 1]],
      ["row_weight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "row_weight")], [0, 1]],
      ["product_type", ["SOAP::SOAPString", XSD::QName.new(nil, "product_type")], [0, 1]],
      ["base_tax_before_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_tax_before_discount")], [0, 1]],
      ["tax_before_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "tax_before_discount")], [0, 1]],
      ["original_custom_price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "original_custom_price")], [0, 1]],
      ["base_cost", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_cost")], [0, 1]],
      ["price_incl_tax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "price_incl_tax")], [0, 1]],
      ["base_price_incl_tax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_price_incl_tax")], [0, 1]],
      ["row_total_incl_tax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "row_total_incl_tax")], [0, 1]],
      ["base_row_total_incl_tax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_row_total_incl_tax")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["gift_message", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message")], [0, 1]],
      ["gift_message_available", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_available")], [0, 1]],
      ["weee_tax_applied", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_applied")], [0, 1]],
      ["weee_tax_applied_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_applied_amount")], [0, 1]],
      ["weee_tax_applied_row_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_applied_row_amount")], [0, 1]],
      ["base_weee_tax_applied_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_weee_tax_applied_amount")], [0, 1]],
      ["base_weee_tax_applied_row_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_weee_tax_applied_row_amount")], [0, 1]],
      ["weee_tax_disposition", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_disposition")], [0, 1]],
      ["weee_tax_row_disposition", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_row_disposition")], [0, 1]],
      ["base_weee_tax_disposition", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_weee_tax_disposition")], [0, 1]],
      ["base_weee_tax_row_disposition", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_weee_tax_row_disposition")], [0, 1]],
      ["tax_class_id", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_class_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartPaymentEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartPaymentEntity"),
    :schema_element => [
      ["payment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "payment_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["cc_type", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_type")], [0, 1]],
      ["cc_number_enc", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_number_enc")], [0, 1]],
      ["cc_last4", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_last4")], [0, 1]],
      ["cc_cid_enc", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_cid_enc")], [0, 1]],
      ["cc_owner", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_owner")], [0, 1]],
      ["cc_exp_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_month")], [0, 1]],
      ["cc_exp_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_year")], [0, 1]],
      ["cc_ss_owner", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_owner")], [0, 1]],
      ["cc_ss_start_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_start_month")], [0, 1]],
      ["cc_ss_start_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_start_year")], [0, 1]],
      ["cc_ss_issue", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_issue")], [0, 1]],
      ["po_number", ["SOAP::SOAPString", XSD::QName.new(nil, "po_number")], [0, 1]],
      ["additional_data", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_data")], [0, 1]],
      ["additional_information", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_information")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartInfoEntity"),
    :schema_element => [
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["converted_at", ["SOAP::SOAPString", XSD::QName.new(nil, "converted_at")], [0, 1]],
      ["quote_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "quote_id")], [0, 1]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["is_multi_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_multi_shipping")], [0, 1]],
      ["items_count", ["SOAP::SOAPDouble", XSD::QName.new(nil, "items_count")], [0, 1]],
      ["items_qty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "items_qty")], [0, 1]],
      ["orig_order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "orig_order_id")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["store_to_quote_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_quote_rate")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["quote_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_currency_code")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["checkout_method", ["SOAP::SOAPString", XSD::QName.new(nil, "checkout_method")], [0, 1]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["customer_tax_class_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_tax_class_id")], [0, 1]],
      ["customer_group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_group_id")], [0, 1]],
      ["customer_email", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_email")], [0, 1]],
      ["customer_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_prefix")], [0, 1]],
      ["customer_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_firstname")], [0, 1]],
      ["customer_middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_middlename")], [0, 1]],
      ["customer_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_lastname")], [0, 1]],
      ["customer_suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_suffix")], [0, 1]],
      ["customer_note", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note")], [0, 1]],
      ["customer_note_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note_notify")], [0, 1]],
      ["customer_is_guest", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_is_guest")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["reserved_order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "reserved_order_id")], [0, 1]],
      ["password_hash", ["SOAP::SOAPString", XSD::QName.new(nil, "password_hash")], [0, 1]],
      ["coupon_code", ["SOAP::SOAPString", XSD::QName.new(nil, "coupon_code")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["base_to_quote_rate", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_to_quote_rate")], [0, 1]],
      ["customer_taxvat", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_taxvat")], [0, 1]],
      ["customer_gender", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_gender")], [0, 1]],
      ["subtotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["subtotal_with_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "subtotal_with_discount")], [0, 1]],
      ["base_subtotal_with_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_subtotal_with_discount")], [0, 1]],
      ["ext_shipping_info", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_shipping_info")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["gift_message", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message")], [0, 1]],
      ["customer_balance_amount_used", ["SOAP::SOAPDouble", XSD::QName.new(nil, "customer_balance_amount_used")], [0, 1]],
      ["base_customer_balance_amount_used", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_customer_balance_amount_used")], [0, 1]],
      ["use_customer_balance", ["SOAP::SOAPString", XSD::QName.new(nil, "use_customer_balance")], [0, 1]],
      ["gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_amount")], [0, 1]],
      ["base_gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_amount")], [0, 1]],
      ["gift_cards_amount_used", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_amount_used")], [0, 1]],
      ["use_reward_points", ["SOAP::SOAPString", XSD::QName.new(nil, "use_reward_points")], [0, 1]],
      ["reward_points_balance", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance")], [0, 1]],
      ["base_reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount")], [0, 1]],
      ["reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount")], [0, 1]],
      ["shipping_address", ["ShoppingCartAddressEntity", XSD::QName.new(nil, "shipping_address")], [0, 1]],
      ["billing_address", ["ShoppingCartAddressEntity", XSD::QName.new(nil, "billing_address")], [0, 1]],
      ["items", ["ShoppingCartItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["payment", ["ShoppingCartPaymentEntity", XSD::QName.new(nil, "payment")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartTotalsEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartTotalsEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartTotalsEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartTotalsEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartTotalsEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartLicenseEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartLicenseEntity"),
    :schema_element => [
      ["agreement_id", ["SOAP::SOAPString", XSD::QName.new(nil, "agreement_id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")], [0, 1]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_html", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_html")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartLicenseEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartLicenseEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartLicenseEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartProductEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartProductEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["qty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "qty")], [0, 1]],
      ["options", ["AssociativeArray", XSD::QName.new(nil, "options")], [0, 1]],
      ["bundle_option", ["AssociativeArray", XSD::QName.new(nil, "bundle_option")], [0, 1]],
      ["bundle_option_qty", ["AssociativeArray", XSD::QName.new(nil, "bundle_option_qty")], [0, 1]],
      ["links", ["ArrayOfString", XSD::QName.new(nil, "links")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartProductEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartProductEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartProductEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartProductResponseEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartProductResponseEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartCustomerEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartCustomerEntity"),
    :schema_element => [
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")], [0, 1]],
      ["customer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]],
      ["confirmation", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmation")], [0, 1]],
      ["website_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "website_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "group_id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartCustomerAddressEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartCustomerAddressEntity"),
    :schema_element => [
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")], [0, 1]],
      ["address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "address_id")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(nil, "street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["region_id", ["SOAP::SOAPString", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["is_default_billing", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_default_billing")], [0, 1]],
      ["is_default_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_default_shipping")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartCustomerAddressEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartCustomerAddressEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartCustomerAddressEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartShippingMethodEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartShippingMethodEntity"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["carrier", ["SOAP::SOAPString", XSD::QName.new(nil, "carrier")], [0, 1]],
      ["carrier_title", ["SOAP::SOAPString", XSD::QName.new(nil, "carrier_title")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["method_title", ["SOAP::SOAPString", XSD::QName.new(nil, "method_title")], [0, 1]],
      ["method_description", ["SOAP::SOAPString", XSD::QName.new(nil, "method_description")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "price")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartShippingMethodEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartShippingMethodEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartShippingMethodEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartPaymentMethodEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartPaymentMethodEntity"),
    :schema_element => [
      ["po_number", ["SOAP::SOAPString", XSD::QName.new(nil, "po_number")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["cc_cid", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_cid")], [0, 1]],
      ["cc_owner", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_owner")], [0, 1]],
      ["cc_number", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_number")], [0, 1]],
      ["cc_type", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_type")], [0, 1]],
      ["cc_exp_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_year")], [0, 1]],
      ["cc_exp_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_month")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ShoppingCartPaymentMethodResponseEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartPaymentMethodResponseEntityArray"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["cc_types", ["AssociativeArray", XSD::QName.new(nil, "cc_types")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTagListEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagListEntity"),
    :schema_element => [
      ["tag_id", ["SOAP::SOAPString", XSD::QName.new(nil, "tag_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTagListEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagListEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductTagListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTagAddEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagAddEntity"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTagUpdateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagUpdateEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["base_popularity", ["SOAP::SOAPString", XSD::QName.new(nil, "base_popularity")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductTagInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagInfoEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["base_popularity", ["SOAP::SOAPString", XSD::QName.new(nil, "base_popularity")]],
      ["products", ["AssociativeArray", XSD::QName.new(nil, "products")]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftMessageEntity,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageEntity"),
    :schema_element => [
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "from")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "to")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftMessageResponse,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageResponse"),
    :schema_element => [
      ["entityId", ["SOAP::SOAPString", XSD::QName.new(nil, "entityId")], [0, 1]],
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")], [0, 1]],
      ["error", ["SOAP::SOAPString", XSD::QName.new(nil, "error")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftMessageResponseArray,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageResponseArray"),
    :schema_element => [
      ["complexObjectArray", ["GiftMessageResponse[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftMessageAssociativeProductsEntity,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageAssociativeProductsEntity"),
    :schema_element => [
      ["product", ["ShoppingCartProductEntity", XSD::QName.new(nil, "product")]],
      ["message", ["GiftMessageEntity", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftMessageAssociativeProductsEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageAssociativeProductsEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["GiftMessageAssociativeProductsEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkFileEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkFileEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["base64_content", ["SOAP::SOAPString", XSD::QName.new(nil, "base64_content")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkAddSampleEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkAddSampleEntity"),
    :schema_element => [
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["file", ["CatalogProductDownloadableLinkFileEntity", XSD::QName.new(nil, "file")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkAddEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkAddEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["is_unlimited", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_unlimited")], [0, 1]],
      ["number_of_downloads", ["SOAP::SOAPInt", XSD::QName.new(nil, "number_of_downloads")], [0, 1]],
      ["is_shareable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_shareable")], [0, 1]],
      ["sample", ["CatalogProductDownloadableLinkAddSampleEntity", XSD::QName.new(nil, "sample")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["file", ["CatalogProductDownloadableLinkFileEntity", XSD::QName.new(nil, "file")], [0, 1]],
      ["link_url", ["SOAP::SOAPString", XSD::QName.new(nil, "link_url")], [0, 1]],
      ["sample_url", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_url")], [0, 1]],
      ["sort_order", ["SOAP::SOAPInt", XSD::QName.new(nil, "sort_order")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkFileInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkFileInfoEntity"),
    :schema_element => [
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(nil, "size")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkFileInfoEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkFileInfoEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductDownloadableLinkFileInfoEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkEntity"),
    :schema_element => [
      ["link_id", ["SOAP::SOAPString", XSD::QName.new(nil, "link_id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["number_of_downloads", ["SOAP::SOAPInt", XSD::QName.new(nil, "number_of_downloads")], [0, 1]],
      ["is_unlimited", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_unlimited")], [0, 1]],
      ["is_shareable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_shareable")]],
      ["link_url", ["SOAP::SOAPString", XSD::QName.new(nil, "link_url")]],
      ["link_type", ["SOAP::SOAPString", XSD::QName.new(nil, "link_type")]],
      ["sample_file", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_file")], [0, 1]],
      ["sample_url", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_url")], [0, 1]],
      ["sample_type", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_type")]],
      ["sort_order", ["SOAP::SOAPInt", XSD::QName.new(nil, "sort_order")]],
      ["file_save", ["CatalogProductDownloadableLinkFileInfoEntityArray", XSD::QName.new(nil, "file_save")], [0, 1]],
      ["sample_file_save", ["CatalogProductDownloadableLinkFileInfoEntityArray", XSD::QName.new(nil, "sample_file_save")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductDownloadableLinkEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkSampleEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkSampleEntity"),
    :schema_element => [
      ["sample_id", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_id")]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")]],
      ["sample_file", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_file")], [0, 1]],
      ["sample_url", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_url")], [0, 1]],
      ["sample_type", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_type")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]],
      ["default_title", ["SOAP::SOAPString", XSD::QName.new(nil, "default_title")]],
      ["store_title", ["SOAP::SOAPString", XSD::QName.new(nil, "store_title")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkSampleEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkSampleEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductDownloadableLinkSampleEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductDownloadableLinkListEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkListEntity"),
    :schema_element => [
      ["links", ["CatalogProductDownloadableLinkEntityArray", XSD::QName.new(nil, "links")]],
      ["samples", ["CatalogProductDownloadableLinkSampleEntityArray", XSD::QName.new(nil, "samples")]]
    ]
  )

  EncodedRegistry.register(
    :class => EnterpriseCustomerbalanceHistoryItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "enterpriseCustomerbalanceHistoryItemEntity"),
    :schema_element => [
      ["history_id", ["SOAP::SOAPString", XSD::QName.new(nil, "history_id")]],
      ["balance_id", ["SOAP::SOAPString", XSD::QName.new(nil, "balance_id")]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")]],
      ["action", ["SOAP::SOAPString", XSD::QName.new(nil, "action")]],
      ["balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "balance_amount")]],
      ["balance_delta", ["SOAP::SOAPString", XSD::QName.new(nil, "balance_delta")]],
      ["additional_info", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_info")]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")]],
      ["website_id", ["SOAP::SOAPString", XSD::QName.new(nil, "website_id")]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")]]
    ]
  )

  EncodedRegistry.register(
    :class => EnterpriseCustomerbalanceHistoryItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "enterpriseCustomerbalanceHistoryItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["EnterpriseCustomerbalanceHistoryItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftcardAccountCreateGiftcardAccountData,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountCreateGiftcardAccountData"),
    :schema_element => [
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["date_expires", ["SOAP::SOAPString", XSD::QName.new(nil, "date_expires")], [0, 1]],
      ["website_id", ["SOAP::SOAPString", XSD::QName.new(nil, "website_id")]],
      ["balance", ["SOAP::SOAPString", XSD::QName.new(nil, "balance")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["is_redeemable", ["SOAP::SOAPString", XSD::QName.new(nil, "is_redeemable")]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftcardAccountCreateNotificationData,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountCreateNotificationData"),
    :schema_element => [
      ["recipient_name", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient_name")]],
      ["recipient_email", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient_email")]],
      ["recipient_store", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient_store")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftcardAccountEntity,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntity"),
    :schema_element => [
      ["giftcard_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "giftcard_id")], [0, 1]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")], [0, 1]],
      ["expire_date", ["SOAP::SOAPString", XSD::QName.new(nil, "expire_date")], [0, 1]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_redeemable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_redeemable")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance")], [0, 1]],
      ["history", ["GiftcardAccountEntityHistoryArray", XSD::QName.new(nil, "history")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftcardAccountEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["GiftcardAccountEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftcardAccountEntityHistory,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntityHistory"),
    :schema_element => [
      ["record_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "record_id")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(nil, "date")], [0, 1]],
      ["action", ["SOAP::SOAPString", XSD::QName.new(nil, "action")], [0, 1]],
      ["balance_delta", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance_delta")], [0, 1]],
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance")], [0, 1]],
      ["info", ["SOAP::SOAPString", XSD::QName.new(nil, "info")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftcardAccountEntityHistoryArray,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntityHistoryArray"),
    :schema_element => [
      ["complexObjectArray", ["GiftcardAccountEntityHistory[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftcardAccountEntityToUpdate,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntityToUpdate"),
    :schema_element => [
      ["is_active", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_redeemable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_redeemable")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance")], [0, 1]],
      ["date_expires", ["SOAP::SOAPString", XSD::QName.new(nil, "date_expires")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GiftcardCustomerEntity,
    :schema_type => XSD::QName.new(NsMagento, "giftcardCustomerEntity"),
    :schema_element => [
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance")], [0, 1]],
      ["expire_date", ["SOAP::SOAPString", XSD::QName.new(nil, "expire_date")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EnterpriseGiftcardaccountListEntity,
    :schema_type => XSD::QName.new(NsMagento, "enterpriseGiftcardaccountListEntity"),
    :schema_element => [
      ["giftcardaccount_id", ["SOAP::SOAPString", XSD::QName.new(nil, "giftcardaccount_id")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["used_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "used_amount")]],
      ["base_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_amount")]]
    ]
  )

  EncodedRegistry.register(
    :class => EnterpriseGiftcardaccountListEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "enterpriseGiftcardaccountListEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["EnterpriseGiftcardaccountListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AssociativeEntity,
    :schema_type => XSD::QName.new(NsMagento, "associativeEntity"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => AssociativeArray,
    :schema_type => XSD::QName.new(NsMagento, "associativeArray"),
    :schema_element => [
      ["complexObjectArray", ["AssociativeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AssociativeMultiEntity,
    :schema_type => XSD::QName.new(NsMagento, "associativeMultiEntity"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["value", ["ArrayOfString", XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => AssociativeMultiArray,
    :schema_type => XSD::QName.new(NsMagento, "associativeMultiArray"),
    :schema_element => [
      ["complexObjectArray", ["AssociativeMultiEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ComplexFilter,
    :schema_type => XSD::QName.new(NsMagento, "complexFilter"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["value", ["AssociativeEntity", XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => ComplexFilterArray,
    :schema_type => XSD::QName.new(NsMagento, "complexFilterArray"),
    :schema_element => [
      ["complexObjectArray", ["ComplexFilter[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Filters,
    :schema_type => XSD::QName.new(NsMagento, "filters"),
    :schema_element => [
      ["filter", ["AssociativeArray", XSD::QName.new(nil, "filter")], [0, 1]],
      ["complex_filter", ["ComplexFilterArray", XSD::QName.new(nil, "complex_filter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfString"),
    :schema_element => [
      ["complexObjectArray", ["SOAP::SOAPString[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfInt,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfInt"),
    :schema_element => [
      ["complexObjectArray", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiMethodEntity,
    :schema_type => XSD::QName.new(NsMagento, "apiMethodEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["path", ["SOAP::SOAPString", XSD::QName.new(nil, "path")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["aliases", ["ArrayOfString", XSD::QName.new(nil, "aliases")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfApiMethods,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfApiMethods"),
    :schema_element => [
      ["complexObjectArray", ["ApiMethodEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiEntity,
    :schema_type => XSD::QName.new(NsMagento, "apiEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["aliases", ["ArrayOfString", XSD::QName.new(nil, "aliases")]],
      ["methods", ["ArrayOfApiMethods", XSD::QName.new(nil, "methods")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfApis,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfApis"),
    :schema_element => [
      ["complexObjectArray", ["ApiEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ExistsFaltureEntity,
    :schema_type => XSD::QName.new(NsMagento, "existsFaltureEntity"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfExistsFaltures,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfExistsFaltures"),
    :schema_element => [
      ["complexObjectArray", ["ExistsFaltureEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StoreEntity,
    :schema_type => XSD::QName.new(NsMagento, "storeEntity"),
    :schema_element => [
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["website_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "website_id")]],
      ["group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "group_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["sort_order", ["SOAP::SOAPInt", XSD::QName.new(nil, "sort_order")]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")]]
    ]
  )

  LiteralRegistry.register(
    :class => StoreEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "storeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["StoreEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MagentoInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "magentoInfoEntity"),
    :schema_element => [
      ["magento_version", ["SOAP::SOAPString", XSD::QName.new(nil, "magento_version")]],
      ["magento_edition", ["SOAP::SOAPString", XSD::QName.new(nil, "magento_edition")]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryCountryEntity,
    :schema_type => XSD::QName.new(NsMagento, "directoryCountryEntity"),
    :schema_element => [
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")]],
      ["iso2_code", ["SOAP::SOAPString", XSD::QName.new(nil, "iso2_code")]],
      ["iso3_code", ["SOAP::SOAPString", XSD::QName.new(nil, "iso3_code")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryCountryEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "directoryCountryEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["DirectoryCountryEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryRegionEntity,
    :schema_type => XSD::QName.new(NsMagento, "directoryRegionEntity"),
    :schema_element => [
      ["region_id", ["SOAP::SOAPString", XSD::QName.new(nil, "region_id")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryRegionEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "directoryRegionEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["DirectoryRegionEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerEntityToCreate,
    :schema_type => XSD::QName.new(NsMagento, "customerCustomerEntityToCreate"),
    :schema_element => [
      ["customer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]],
      ["website_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "website_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "group_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerEntity,
    :schema_type => XSD::QName.new(NsMagento, "customerCustomerEntity"),
    :schema_element => [
      ["customer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["website_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "website_id")], [0, 1]],
      ["created_in", ["SOAP::SOAPString", XSD::QName.new(nil, "created_in")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "middlename")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "group_id")], [0, 1]],
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")], [0, 1]],
      ["dob", ["SOAP::SOAPString", XSD::QName.new(nil, "dob")], [0, 1]],
      ["taxvat", ["SOAP::SOAPString", XSD::QName.new(nil, "taxvat")], [0, 1]],
      ["confirmation", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "confirmation")], [0, 1]],
      ["password_hash", ["SOAP::SOAPString", XSD::QName.new(nil, "password_hash")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "customerCustomerEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CustomerCustomerEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerGroupEntity,
    :schema_type => XSD::QName.new(NsMagento, "customerGroupEntity"),
    :schema_element => [
      ["customer_group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_group_id")]],
      ["customer_group_code", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_group_code")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerGroupEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "customerGroupEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CustomerGroupEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressEntityCreate,
    :schema_type => XSD::QName.new(NsMagento, "customerAddressEntityCreate"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "middlename")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")], [0, 1]],
      ["region_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["street", ["ArrayOfString", XSD::QName.new(nil, "street")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["is_default_billing", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_default_billing")], [0, 1]],
      ["is_default_shipping", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_default_shipping")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressEntityItem,
    :schema_type => XSD::QName.new(NsMagento, "customerAddressEntityItem"),
    :schema_element => [
      ["customer_address_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_address_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "middlename")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["region_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(nil, "street")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["is_default_billing", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_default_billing")], [0, 1]],
      ["is_default_shipping", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_default_shipping")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "customerAddressEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CustomerAddressEntityItem[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["set", ["SOAP::SOAPString", XSD::QName.new(nil, "set")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["category_ids", ["ArrayOfString", XSD::QName.new(nil, "category_ids")]],
      ["website_ids", ["ArrayOfString", XSD::QName.new(nil, "website_ids")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductRequestAttributes,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductRequestAttributes"),
    :schema_element => [
      ["attributes", ["ArrayOfString", XSD::QName.new(nil, "attributes")], [0, 1]],
      ["additional_attributes", ["ArrayOfString", XSD::QName.new(nil, "additional_attributes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductReturnEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductReturnEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["set", ["SOAP::SOAPString", XSD::QName.new(nil, "set")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["categories", ["ArrayOfString", XSD::QName.new(nil, "categories")], [0, 1]],
      ["websites", ["ArrayOfString", XSD::QName.new(nil, "websites")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["type_id", ["SOAP::SOAPString", XSD::QName.new(nil, "type_id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["short_description", ["SOAP::SOAPString", XSD::QName.new(nil, "short_description")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["url_key", ["SOAP::SOAPString", XSD::QName.new(nil, "url_key")], [0, 1]],
      ["url_path", ["SOAP::SOAPString", XSD::QName.new(nil, "url_path")], [0, 1]],
      ["visibility", ["SOAP::SOAPString", XSD::QName.new(nil, "visibility")], [0, 1]],
      ["category_ids", ["ArrayOfString", XSD::QName.new(nil, "category_ids")], [0, 1]],
      ["website_ids", ["ArrayOfString", XSD::QName.new(nil, "website_ids")], [0, 1]],
      ["has_options", ["SOAP::SOAPString", XSD::QName.new(nil, "has_options")], [0, 1]],
      ["gift_message_available", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_available")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["special_price", ["SOAP::SOAPString", XSD::QName.new(nil, "special_price")], [0, 1]],
      ["special_from_date", ["SOAP::SOAPString", XSD::QName.new(nil, "special_from_date")], [0, 1]],
      ["special_to_date", ["SOAP::SOAPString", XSD::QName.new(nil, "special_to_date")], [0, 1]],
      ["tax_class_id", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_class_id")], [0, 1]],
      ["tier_price", ["CatalogProductTierPriceEntityArray", XSD::QName.new(nil, "tier_price")], [0, 1]],
      ["meta_title", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_title")], [0, 1]],
      ["meta_keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_keyword")], [0, 1]],
      ["meta_description", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_description")], [0, 1]],
      ["custom_design", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design")], [0, 1]],
      ["custom_layout_update", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_layout_update")], [0, 1]],
      ["options_container", ["SOAP::SOAPString", XSD::QName.new(nil, "options_container")], [0, 1]],
      ["additional_attributes", ["AssociativeArray", XSD::QName.new(nil, "additional_attributes")], [0, 1]],
      ["enable_googlecheckout", ["SOAP::SOAPString", XSD::QName.new(nil, "enable_googlecheckout")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCreateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCreateEntity"),
    :schema_element => [
      ["categories", ["ArrayOfString", XSD::QName.new(nil, "categories")], [0, 1]],
      ["websites", ["ArrayOfString", XSD::QName.new(nil, "websites")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["short_description", ["SOAP::SOAPString", XSD::QName.new(nil, "short_description")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["url_key", ["SOAP::SOAPString", XSD::QName.new(nil, "url_key")], [0, 1]],
      ["url_path", ["SOAP::SOAPString", XSD::QName.new(nil, "url_path")], [0, 1]],
      ["visibility", ["SOAP::SOAPString", XSD::QName.new(nil, "visibility")], [0, 1]],
      ["category_ids", ["ArrayOfString", XSD::QName.new(nil, "category_ids")], [0, 1]],
      ["website_ids", ["ArrayOfString", XSD::QName.new(nil, "website_ids")], [0, 1]],
      ["has_options", ["SOAP::SOAPString", XSD::QName.new(nil, "has_options")], [0, 1]],
      ["gift_message_available", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_available")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["special_price", ["SOAP::SOAPString", XSD::QName.new(nil, "special_price")], [0, 1]],
      ["special_from_date", ["SOAP::SOAPString", XSD::QName.new(nil, "special_from_date")], [0, 1]],
      ["special_to_date", ["SOAP::SOAPString", XSD::QName.new(nil, "special_to_date")], [0, 1]],
      ["tax_class_id", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_class_id")], [0, 1]],
      ["tier_price", ["CatalogProductTierPriceEntityArray", XSD::QName.new(nil, "tier_price")], [0, 1]],
      ["meta_title", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_title")], [0, 1]],
      ["meta_keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_keyword")], [0, 1]],
      ["meta_description", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_description")], [0, 1]],
      ["custom_design", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design")], [0, 1]],
      ["custom_layout_update", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_layout_update")], [0, 1]],
      ["options_container", ["SOAP::SOAPString", XSD::QName.new(nil, "options_container")], [0, 1]],
      ["additional_attributes", ["AssociativeArray", XSD::QName.new(nil, "additional_attributes")], [0, 1]],
      ["stock_data", ["CatalogInventoryStockItemUpdateEntity", XSD::QName.new(nil, "stock_data")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeSetEntity"),
    :schema_element => [
      ["set_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "set_id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeSetEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductAttributeSetEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTypeEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTypeEntity"),
    :schema_element => [
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTypeEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTypeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductTypeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTierPriceEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTierPriceEntity"),
    :schema_element => [
      ["customer_group_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_group_id")], [0, 1]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")], [0, 1]],
      ["qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "qty")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "price")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTierPriceEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTierPriceEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductTierPriceEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCatalogCategoryEntities,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfCatalogCategoryEntities"),
    :schema_element => [
      ["complexObjectArray", ["CatalogCategoryEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryEntity"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category_id")]],
      ["parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")]],
      ["level", ["SOAP::SOAPInt", XSD::QName.new(nil, "level")]],
      ["children", ["ArrayOfCatalogCategoryEntities", XSD::QName.new(nil, "children")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryEntityNoChildren,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryEntityNoChildren"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category_id")]],
      ["parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")]],
      ["level", ["SOAP::SOAPInt", XSD::QName.new(nil, "level")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCatalogCategoryEntitiesNoChildren,
    :schema_type => XSD::QName.new(NsMagento, "ArrayOfCatalogCategoryEntitiesNoChildren"),
    :schema_element => [
      ["complexObjectArray", ["CatalogCategoryEntityNoChildren[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryTree,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryTree"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category_id")]],
      ["parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "parent_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")]],
      ["level", ["SOAP::SOAPInt", XSD::QName.new(nil, "level")]],
      ["children", ["ArrayOfCatalogCategoryEntities", XSD::QName.new(nil, "children")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryEntityCreate,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryEntityCreate"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")], [0, 1]],
      ["available_sort_by", ["ArrayOfString", XSD::QName.new(nil, "available_sort_by")], [0, 1]],
      ["custom_design", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design")], [0, 1]],
      ["custom_design_apply", ["SOAP::SOAPInt", XSD::QName.new(nil, "custom_design_apply")], [0, 1]],
      ["custom_design_from", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_from")], [0, 1]],
      ["custom_design_to", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_to")], [0, 1]],
      ["custom_layout_update", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_layout_update")], [0, 1]],
      ["default_sort_by", ["SOAP::SOAPString", XSD::QName.new(nil, "default_sort_by")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["display_mode", ["SOAP::SOAPString", XSD::QName.new(nil, "display_mode")], [0, 1]],
      ["is_anchor", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_anchor")], [0, 1]],
      ["landing_page", ["SOAP::SOAPInt", XSD::QName.new(nil, "landing_page")], [0, 1]],
      ["meta_description", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_description")], [0, 1]],
      ["meta_keywords", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_keywords")], [0, 1]],
      ["meta_title", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_title")], [0, 1]],
      ["page_layout", ["SOAP::SOAPString", XSD::QName.new(nil, "page_layout")], [0, 1]],
      ["url_key", ["SOAP::SOAPString", XSD::QName.new(nil, "url_key")], [0, 1]],
      ["include_in_menu", ["SOAP::SOAPInt", XSD::QName.new(nil, "include_in_menu")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryInfo,
    :schema_type => XSD::QName.new(NsMagento, "catalogCategoryInfo"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPString", XSD::QName.new(nil, "category_id")]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")]],
      ["level", ["SOAP::SOAPString", XSD::QName.new(nil, "level")]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")]],
      ["all_children", ["SOAP::SOAPString", XSD::QName.new(nil, "all_children")]],
      ["children", ["SOAP::SOAPString", XSD::QName.new(nil, "children")]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["url_key", ["SOAP::SOAPString", XSD::QName.new(nil, "url_key")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["meta_title", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_title")], [0, 1]],
      ["meta_keywords", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_keywords")], [0, 1]],
      ["meta_description", ["SOAP::SOAPString", XSD::QName.new(nil, "meta_description")], [0, 1]],
      ["path", ["SOAP::SOAPString", XSD::QName.new(nil, "path")], [0, 1]],
      ["url_path", ["SOAP::SOAPString", XSD::QName.new(nil, "url_path")], [0, 1]],
      ["children_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "children_count")], [0, 1]],
      ["display_mode", ["SOAP::SOAPString", XSD::QName.new(nil, "display_mode")], [0, 1]],
      ["is_anchor", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_anchor")], [0, 1]],
      ["available_sort_by", ["ArrayOfString", XSD::QName.new(nil, "available_sort_by")], [0, 1]],
      ["custom_design", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design")], [0, 1]],
      ["custom_design_apply", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_apply")], [0, 1]],
      ["custom_design_from", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_from")], [0, 1]],
      ["custom_design_to", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_design_to")], [0, 1]],
      ["page_layout", ["SOAP::SOAPString", XSD::QName.new(nil, "page_layout")], [0, 1]],
      ["custom_layout_update", ["SOAP::SOAPString", XSD::QName.new(nil, "custom_layout_update")], [0, 1]],
      ["default_sort_by", ["SOAP::SOAPString", XSD::QName.new(nil, "default_sort_by")], [0, 1]],
      ["landing_page", ["SOAP::SOAPInt", XSD::QName.new(nil, "landing_page")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogAssignedProduct,
    :schema_type => XSD::QName.new(NsMagento, "catalogAssignedProduct"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "product_id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["set", ["SOAP::SOAPInt", XSD::QName.new(nil, "set")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(nil, "position")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogAssignedProductArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogAssignedProductArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogAssignedProduct[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogAttributeEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogAttributeEntity"),
    :schema_element => [
      ["attribute_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "attribute_id")], [0, 1]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["required", ["SOAP::SOAPString", XSD::QName.new(nil, "required")], [0, 1]],
      ["scope", ["SOAP::SOAPString", XSD::QName.new(nil, "scope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogAttributeEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogAttributeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogAttributeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogAttributeOptionEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogAttributeOptionEntity"),
    :schema_element => [
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogAttributeOptionEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogAttributeOptionEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogAttributeOptionEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductImageEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductImageEntity"),
    :schema_element => [
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")]],
      ["exclude", ["SOAP::SOAPString", XSD::QName.new(nil, "exclude")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]],
      ["types", ["ArrayOfString", XSD::QName.new(nil, "types")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductImageEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductImageEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductImageEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaTypeEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeMediaTypeEntity"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["scope", ["SOAP::SOAPString", XSD::QName.new(nil, "scope")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaTypeEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeMediaTypeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductAttributeMediaTypeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductImageFileEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductImageFileEntity"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")]],
      ["mime", ["SOAP::SOAPString", XSD::QName.new(nil, "mime")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaCreateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeMediaCreateEntity"),
    :schema_element => [
      ["file", ["CatalogProductImageFileEntity", XSD::QName.new(nil, "file")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")], [0, 1]],
      ["types", ["ArrayOfString", XSD::QName.new(nil, "types")], [0, 1]],
      ["exclude", ["SOAP::SOAPString", XSD::QName.new(nil, "exclude")], [0, 1]],
      ["remove", ["SOAP::SOAPString", XSD::QName.new(nil, "remove")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductLinkEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["set", ["SOAP::SOAPString", XSD::QName.new(nil, "set")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductLinkEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductLinkEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkAttributeEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductLinkAttributeEntity"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkAttributeEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductLinkAttributeEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductLinkAttributeEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeFrontendLabelEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeFrontendLabelEntity"),
    :schema_element => [
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeFrontendLabelArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeFrontendLabelArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductAttributeFrontendLabelEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeEntityToCreate,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductAttributeEntityToCreate"),
    :schema_element => [
      ["attribute_code", ["SOAP::SOAPString", XSD::QName.new(nil, "attribute_code")]],
      ["frontend_input", ["SOAP::SOAPString", XSD::QName.new(nil, "frontend_input")]],
      ["scope", ["SOAP::SOAPString", XSD::QName.new(nil, "scope")], [0, 1]],
      ["default_value", ["SOAP::SOAPString", XSD::QName.new(nil, "default_value")], [0, 1]],
      ["is_unique", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_unique")], [0, 1]],
      ["is_required", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_required")], [0, 1]],
      ["apply_to", ["ArrayOfString", XSD::QName.new(nil, "apply_to")], [0, 1]],
      ["is_configurable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_configurable")], [0, 1]],
      ["is_searchable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_searchable")], [0, 1]],
      ["is_visible_in_advanced_search", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_visible_in_advanced_search")], [0, 1]],
      ["is_comparable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_comparable")], [0, 1]],
      ["is_used_for_promo_rules", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_used_for_promo_rules")], [0, 1]],
      ["is_visible_on_front", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_visible_on_front")], [0, 1]],
      ["used_in_product_listing", ["SOAP::SOAPInt", XSD::QName.new(nil, "used_in_product_listing")], [0, 1]],
      ["additional_fields", ["AssociativeArray", XSD::QName.new(nil, "additional_fields")], [0, 1]],
      ["frontend_label", ["CatalogProductAttributeFrontendLabelArray", XSD::QName.new(nil, "frontend_label")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionAdditionalFieldsEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionAdditionalFieldsEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["max_characters", ["SOAP::SOAPString", XSD::QName.new(nil, "max_characters")], [0, 1]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]],
      ["file_extension", ["SOAP::SOAPString", XSD::QName.new(nil, "file_extension")], [0, 1]],
      ["image_size_x", ["SOAP::SOAPString", XSD::QName.new(nil, "image_size_x")], [0, 1]],
      ["image_size_y", ["SOAP::SOAPString", XSD::QName.new(nil, "image_size_y")], [0, 1]],
      ["value_id", ["SOAP::SOAPString", XSD::QName.new(nil, "value_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionAdditionalFieldsArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionAdditionalFieldsArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionAdditionalFieldsEntity[]", XSD::QName.new(nil, "complexObjectArray")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionToAdd,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionToAdd"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]],
      ["is_require", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_require")], [0, 1]],
      ["additional_fields", ["CatalogProductCustomOptionAdditionalFieldsArray", XSD::QName.new(nil, "additional_fields")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionToUpdate,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionToUpdate"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]],
      ["is_require", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_require")], [0, 1]],
      ["additional_fields", ["CatalogProductCustomOptionAdditionalFieldsArray", XSD::QName.new(nil, "additional_fields")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionInfoEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]],
      ["is_require", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_require")]],
      ["additional_fields", ["CatalogProductCustomOptionAdditionalFieldsArray", XSD::QName.new(nil, "additional_fields")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionListEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionListEntity"),
    :schema_element => [
      ["option_id", ["SOAP::SOAPString", XSD::QName.new(nil, "option_id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]],
      ["is_require", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_require")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionListArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionListArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionTypesEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionTypesEntity"),
    :schema_element => [
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionTypesArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionTypesArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionTypesEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueInfoEntity"),
    :schema_element => [
      ["value_id", ["SOAP::SOAPString", XSD::QName.new(nil, "value_id")]],
      ["option_id", ["SOAP::SOAPString", XSD::QName.new(nil, "option_id")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]],
      ["default_price", ["SOAP::SOAPString", XSD::QName.new(nil, "default_price")]],
      ["default_price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "default_price_type")]],
      ["store_price", ["SOAP::SOAPString", XSD::QName.new(nil, "store_price")]],
      ["store_price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "store_price_type")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")]],
      ["default_title", ["SOAP::SOAPString", XSD::QName.new(nil, "default_title")]],
      ["store_title", ["SOAP::SOAPString", XSD::QName.new(nil, "store_title")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueListEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueListEntity"),
    :schema_element => [
      ["value_id", ["SOAP::SOAPString", XSD::QName.new(nil, "value_id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueListArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueListArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionValueListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueAddEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueAddEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueAddArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueAddArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductCustomOptionValueAddEntity[]", XSD::QName.new(nil, "complexObjectArray")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueUpdateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueUpdateEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["price_type", ["SOAP::SOAPString", XSD::QName.new(nil, "price_type")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["total_paid", ["SOAP::SOAPString", XSD::QName.new(nil, "total_paid")], [0, 1]],
      ["total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_refunded")], [0, 1]],
      ["total_qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "total_qty_ordered")], [0, 1]],
      ["total_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "total_canceled")], [0, 1]],
      ["total_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "total_invoiced")], [0, 1]],
      ["total_online_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_online_refunded")], [0, 1]],
      ["total_offline_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_offline_refunded")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["base_total_paid", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_paid")], [0, 1]],
      ["base_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_refunded")], [0, 1]],
      ["base_total_qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_qty_ordered")], [0, 1]],
      ["base_total_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_canceled")], [0, 1]],
      ["base_total_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_invoiced")], [0, 1]],
      ["base_total_online_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_online_refunded")], [0, 1]],
      ["base_total_offline_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_offline_refunded")], [0, 1]],
      ["billing_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_address_id")], [0, 1]],
      ["billing_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_firstname")], [0, 1]],
      ["billing_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_lastname")], [0, 1]],
      ["shipping_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_address_id")], [0, 1]],
      ["shipping_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_firstname")], [0, 1]],
      ["shipping_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_lastname")], [0, 1]],
      ["billing_name", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_name")], [0, 1]],
      ["shipping_name", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_name")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["store_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_order_rate")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["base_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_order_rate")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["store_name", ["SOAP::SOAPString", XSD::QName.new(nil, "store_name")], [0, 1]],
      ["remote_ip", ["SOAP::SOAPString", XSD::QName.new(nil, "remote_ip")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["order_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "order_currency_code")], [0, 1]],
      ["shipping_method", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_method")], [0, 1]],
      ["shipping_description", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_description")], [0, 1]],
      ["customer_email", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_email")], [0, 1]],
      ["customer_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_firstname")], [0, 1]],
      ["customer_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_lastname")], [0, 1]],
      ["quote_id", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_id")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPString", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["customer_group_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_group_id")], [0, 1]],
      ["customer_note_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note_notify")], [0, 1]],
      ["customer_is_guest", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_is_guest")], [0, 1]],
      ["email_sent", ["SOAP::SOAPString", XSD::QName.new(nil, "email_sent")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["gift_message", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message")], [0, 1]],
      ["shipping_address", ["SalesOrderAddressEntity", XSD::QName.new(nil, "shipping_address")], [0, 1]],
      ["billing_address", ["SalesOrderAddressEntity", XSD::QName.new(nil, "billing_address")], [0, 1]],
      ["items", ["SalesOrderItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["payment", ["SalesOrderPaymentEntity", XSD::QName.new(nil, "payment")], [0, 1]],
      ["status_history", ["SalesOrderStatusHistoryEntityArray", XSD::QName.new(nil, "status_history")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderListEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderListEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["total_paid", ["SOAP::SOAPString", XSD::QName.new(nil, "total_paid")], [0, 1]],
      ["total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_refunded")], [0, 1]],
      ["total_qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "total_qty_ordered")], [0, 1]],
      ["total_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "total_canceled")], [0, 1]],
      ["total_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "total_invoiced")], [0, 1]],
      ["total_online_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_online_refunded")], [0, 1]],
      ["total_offline_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "total_offline_refunded")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["base_total_paid", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_paid")], [0, 1]],
      ["base_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_refunded")], [0, 1]],
      ["base_total_qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_qty_ordered")], [0, 1]],
      ["base_total_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_canceled")], [0, 1]],
      ["base_total_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_invoiced")], [0, 1]],
      ["base_total_online_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_online_refunded")], [0, 1]],
      ["base_total_offline_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_offline_refunded")], [0, 1]],
      ["billing_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_address_id")], [0, 1]],
      ["billing_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_firstname")], [0, 1]],
      ["billing_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_lastname")], [0, 1]],
      ["shipping_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_address_id")], [0, 1]],
      ["shipping_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_firstname")], [0, 1]],
      ["shipping_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_lastname")], [0, 1]],
      ["billing_name", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_name")], [0, 1]],
      ["shipping_name", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_name")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["store_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_order_rate")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["base_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_order_rate")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["store_name", ["SOAP::SOAPString", XSD::QName.new(nil, "store_name")], [0, 1]],
      ["remote_ip", ["SOAP::SOAPString", XSD::QName.new(nil, "remote_ip")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["order_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "order_currency_code")], [0, 1]],
      ["shipping_method", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_method")], [0, 1]],
      ["shipping_description", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_description")], [0, 1]],
      ["customer_email", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_email")], [0, 1]],
      ["customer_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_firstname")], [0, 1]],
      ["customer_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_lastname")], [0, 1]],
      ["quote_id", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_id")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPString", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["customer_group_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_group_id")], [0, 1]],
      ["customer_note_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note_notify")], [0, 1]],
      ["customer_is_guest", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_is_guest")], [0, 1]],
      ["email_sent", ["SOAP::SOAPString", XSD::QName.new(nil, "email_sent")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["coupon_code", ["SOAP::SOAPString", XSD::QName.new(nil, "coupon_code")], [0, 1]],
      ["protect_code", ["SOAP::SOAPString", XSD::QName.new(nil, "protect_code")], [0, 1]],
      ["base_discount_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_canceled")], [0, 1]],
      ["base_discount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_invoiced")], [0, 1]],
      ["base_discount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_refunded")], [0, 1]],
      ["base_shipping_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_canceled")], [0, 1]],
      ["base_shipping_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_invoiced")], [0, 1]],
      ["base_shipping_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_refunded")], [0, 1]],
      ["base_shipping_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_tax_amount")], [0, 1]],
      ["base_shipping_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_tax_refunded")], [0, 1]],
      ["base_subtotal_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_canceled")], [0, 1]],
      ["base_subtotal_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_invoiced")], [0, 1]],
      ["base_subtotal_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_refunded")], [0, 1]],
      ["base_tax_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_canceled")], [0, 1]],
      ["base_tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_invoiced")], [0, 1]],
      ["base_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_refunded")], [0, 1]],
      ["base_total_invoiced_cost", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_invoiced_cost")], [0, 1]],
      ["discount_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_canceled")], [0, 1]],
      ["discount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_invoiced")], [0, 1]],
      ["discount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_refunded")], [0, 1]],
      ["shipping_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_canceled")], [0, 1]],
      ["shipping_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_invoiced")], [0, 1]],
      ["shipping_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_refunded")], [0, 1]],
      ["shipping_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_tax_amount")], [0, 1]],
      ["shipping_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_tax_refunded")], [0, 1]],
      ["subtotal_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_canceled")], [0, 1]],
      ["subtotal_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_invoiced")], [0, 1]],
      ["subtotal_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_refunded")], [0, 1]],
      ["tax_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_canceled")], [0, 1]],
      ["tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_invoiced")], [0, 1]],
      ["tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_refunded")], [0, 1]],
      ["can_ship_partially", ["SOAP::SOAPString", XSD::QName.new(nil, "can_ship_partially")], [0, 1]],
      ["can_ship_partially_item", ["SOAP::SOAPString", XSD::QName.new(nil, "can_ship_partially_item")], [0, 1]],
      ["edit_increment", ["SOAP::SOAPString", XSD::QName.new(nil, "edit_increment")], [0, 1]],
      ["forced_do_shipment_with_invoice", ["SOAP::SOAPString", XSD::QName.new(nil, "forced_do_shipment_with_invoice")], [0, 1]],
      ["payment_authorization_expiration", ["SOAP::SOAPString", XSD::QName.new(nil, "payment_authorization_expiration")], [0, 1]],
      ["paypal_ipn_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "paypal_ipn_customer_notified")], [0, 1]],
      ["quote_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_address_id")], [0, 1]],
      ["adjustment_negative", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment_negative")], [0, 1]],
      ["adjustment_positive", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment_positive")], [0, 1]],
      ["base_adjustment_negative", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment_negative")], [0, 1]],
      ["base_adjustment_positive", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment_positive")], [0, 1]],
      ["base_shipping_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_discount_amount")], [0, 1]],
      ["base_subtotal_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_incl_tax")], [0, 1]],
      ["base_total_due", ["SOAP::SOAPString", XSD::QName.new(nil, "base_total_due")], [0, 1]],
      ["payment_authorization_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "payment_authorization_amount")], [0, 1]],
      ["shipping_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_discount_amount")], [0, 1]],
      ["subtotal_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_incl_tax")], [0, 1]],
      ["total_due", ["SOAP::SOAPString", XSD::QName.new(nil, "total_due")], [0, 1]],
      ["customer_dob", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_dob")], [0, 1]],
      ["customer_middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_middlename")], [0, 1]],
      ["customer_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_prefix")], [0, 1]],
      ["customer_suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_suffix")], [0, 1]],
      ["customer_taxvat", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_taxvat")], [0, 1]],
      ["discount_description", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_description")], [0, 1]],
      ["ext_customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_customer_id")], [0, 1]],
      ["ext_order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_order_id")], [0, 1]],
      ["hold_before_state", ["SOAP::SOAPString", XSD::QName.new(nil, "hold_before_state")], [0, 1]],
      ["hold_before_status", ["SOAP::SOAPString", XSD::QName.new(nil, "hold_before_status")], [0, 1]],
      ["original_increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "original_increment_id")], [0, 1]],
      ["relation_child_id", ["SOAP::SOAPString", XSD::QName.new(nil, "relation_child_id")], [0, 1]],
      ["relation_child_real_id", ["SOAP::SOAPString", XSD::QName.new(nil, "relation_child_real_id")], [0, 1]],
      ["relation_parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "relation_parent_id")], [0, 1]],
      ["relation_parent_real_id", ["SOAP::SOAPString", XSD::QName.new(nil, "relation_parent_real_id")], [0, 1]],
      ["x_forwarded_for", ["SOAP::SOAPString", XSD::QName.new(nil, "x_forwarded_for")], [0, 1]],
      ["customer_note", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note")], [0, 1]],
      ["total_item_count", ["SOAP::SOAPString", XSD::QName.new(nil, "total_item_count")], [0, 1]],
      ["customer_gender", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_gender")], [0, 1]],
      ["hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_amount")], [0, 1]],
      ["base_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_amount")], [0, 1]],
      ["shipping_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_hidden_tax_amount")], [0, 1]],
      ["base_shipping_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_hidden_tax_amount")], [0, 1]],
      ["hidden_tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_invoiced")], [0, 1]],
      ["base_hidden_tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_invoiced")], [0, 1]],
      ["hidden_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_refunded")], [0, 1]],
      ["base_hidden_tax_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_refunded")], [0, 1]],
      ["shipping_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_incl_tax")], [0, 1]],
      ["base_shipping_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_incl_tax")], [0, 1]],
      ["base_customer_balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_amount")], [0, 1]],
      ["customer_balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_amount")], [0, 1]],
      ["base_customer_balance_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_invoiced")], [0, 1]],
      ["customer_balance_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_invoiced")], [0, 1]],
      ["base_customer_balance_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_refunded")], [0, 1]],
      ["customer_balance_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_refunded")], [0, 1]],
      ["base_customer_balance_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_total_refunded")], [0, 1]],
      ["customer_balance_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_total_refunded")], [0, 1]],
      ["gift_cards", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards")], [0, 1]],
      ["base_gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_amount")], [0, 1]],
      ["gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_amount")], [0, 1]],
      ["base_gift_cards_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_invoiced")], [0, 1]],
      ["gift_cards_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_invoiced")], [0, 1]],
      ["base_gift_cards_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_refunded")], [0, 1]],
      ["gift_cards_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_refunded")], [0, 1]],
      ["reward_points_balance", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance")], [0, 1]],
      ["base_reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount")], [0, 1]],
      ["reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount")], [0, 1]],
      ["base_reward_currency_amount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount_invoiced")], [0, 1]],
      ["reward_currency_amount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount_invoiced")], [0, 1]],
      ["base_reward_currency_amount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount_refunded")], [0, 1]],
      ["reward_currency_amount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount_refunded")], [0, 1]],
      ["reward_points_balance_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance_refunded")], [0, 1]],
      ["reward_points_balance_to_refund", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance_to_refund")], [0, 1]],
      ["reward_salesrule_points", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_salesrule_points")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderListEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderListEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderAddressEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderAddressEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["address_type", ["SOAP::SOAPString", XSD::QName.new(nil, "address_type")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(nil, "street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["region_id", ["SOAP::SOAPString", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "address_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderItemEntity"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["quote_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_item_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["product_type", ["SOAP::SOAPString", XSD::QName.new(nil, "product_type")], [0, 1]],
      ["product_options", ["SOAP::SOAPString", XSD::QName.new(nil, "product_options")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPString", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["free_shipping", ["SOAP::SOAPString", XSD::QName.new(nil, "free_shipping")], [0, 1]],
      ["is_qty_decimal", ["SOAP::SOAPString", XSD::QName.new(nil, "is_qty_decimal")], [0, 1]],
      ["no_discount", ["SOAP::SOAPString", XSD::QName.new(nil, "no_discount")], [0, 1]],
      ["qty_canceled", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_canceled")], [0, 1]],
      ["qty_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_invoiced")], [0, 1]],
      ["qty_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_ordered")], [0, 1]],
      ["qty_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_refunded")], [0, 1]],
      ["qty_shipped", ["SOAP::SOAPString", XSD::QName.new(nil, "qty_shipped")], [0, 1]],
      ["cost", ["SOAP::SOAPString", XSD::QName.new(nil, "cost")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "base_price")], [0, 1]],
      ["original_price", ["SOAP::SOAPString", XSD::QName.new(nil, "original_price")], [0, 1]],
      ["base_original_price", ["SOAP::SOAPString", XSD::QName.new(nil, "base_original_price")], [0, 1]],
      ["tax_percent", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_percent")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_invoiced")], [0, 1]],
      ["base_tax_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_invoiced")], [0, 1]],
      ["discount_percent", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_percent")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["discount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_invoiced")], [0, 1]],
      ["base_discount_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_invoiced")], [0, 1]],
      ["amount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "amount_refunded")], [0, 1]],
      ["base_amount_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "base_amount_refunded")], [0, 1]],
      ["row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "row_total")], [0, 1]],
      ["base_row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_total")], [0, 1]],
      ["row_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "row_invoiced")], [0, 1]],
      ["base_row_invoiced", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_invoiced")], [0, 1]],
      ["row_weight", ["SOAP::SOAPString", XSD::QName.new(nil, "row_weight")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["gift_message", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message")], [0, 1]],
      ["gift_message_available", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_available")], [0, 1]],
      ["base_tax_before_discount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_before_discount")], [0, 1]],
      ["tax_before_discount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_before_discount")], [0, 1]],
      ["weee_tax_applied", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied")], [0, 1]],
      ["weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_amount")], [0, 1]],
      ["weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_row_amount")], [0, 1]],
      ["base_weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_amount")], [0, 1]],
      ["base_weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_row_amount")], [0, 1]],
      ["weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_disposition")], [0, 1]],
      ["weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_row_disposition")], [0, 1]],
      ["base_weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_disposition")], [0, 1]],
      ["base_weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_row_disposition")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderItemIdQty,
    :schema_type => XSD::QName.new(NsMagento, "orderItemIdQty"),
    :schema_element => [
      ["order_item_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "order_item_id")]],
      ["qty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "qty")]]
    ]
  )

  LiteralRegistry.register(
    :class => OrderItemIdQtyArray,
    :schema_type => XSD::QName.new(NsMagento, "orderItemIdQtyArray"),
    :schema_element => [
      ["complexObjectArray", ["OrderItemIdQty[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderPaymentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderPaymentEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["amount_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "amount_ordered")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["base_amount_ordered", ["SOAP::SOAPString", XSD::QName.new(nil, "base_amount_ordered")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["po_number", ["SOAP::SOAPString", XSD::QName.new(nil, "po_number")], [0, 1]],
      ["cc_type", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_type")], [0, 1]],
      ["cc_number_enc", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_number_enc")], [0, 1]],
      ["cc_last4", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_last4")], [0, 1]],
      ["cc_owner", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_owner")], [0, 1]],
      ["cc_exp_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_month")], [0, 1]],
      ["cc_exp_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_year")], [0, 1]],
      ["cc_ss_start_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_start_month")], [0, 1]],
      ["cc_ss_start_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_start_year")], [0, 1]],
      ["payment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "payment_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderStatusHistoryEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderStatusHistoryEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderStatusHistoryEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderStatusHistoryEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderStatusHistoryEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["shipping_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_address_id")], [0, 1]],
      ["shipping_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_firstname")], [0, 1]],
      ["shipping_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_lastname")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["order_increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_increment_id")], [0, 1]],
      ["order_created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "order_created_at")], [0, 1]],
      ["total_qty", ["SOAP::SOAPString", XSD::QName.new(nil, "total_qty")], [0, 1]],
      ["shipment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipment_id")], [0, 1]],
      ["items", ["SalesOrderShipmentItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["tracks", ["SalesOrderShipmentTrackEntityArray", XSD::QName.new(nil, "tracks")], [0, 1]],
      ["comments", ["SalesOrderShipmentCommentEntityArray", XSD::QName.new(nil, "comments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderShipmentEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentCommentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentCommentEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")], [0, 1]],
      ["comment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "comment_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentCommentEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentCommentEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderShipmentCommentEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentTrackEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentTrackEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["carrier_code", ["SOAP::SOAPString", XSD::QName.new(nil, "carrier_code")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "number")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["track_id", ["SOAP::SOAPString", XSD::QName.new(nil, "track_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentTrackEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentTrackEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderShipmentTrackEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentItemEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["order_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_item_id")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["weight", ["SOAP::SOAPString", XSD::QName.new(nil, "weight")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderShipmentItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderShipmentItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["order_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "order_currency_code")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["store_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_order_rate")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["base_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_order_rate")], [0, 1]],
      ["subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["billing_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_address_id")], [0, 1]],
      ["billing_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_firstname")], [0, 1]],
      ["billing_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_lastname")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["order_increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_increment_id")], [0, 1]],
      ["order_created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "order_created_at")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["invoice_id", ["SOAP::SOAPString", XSD::QName.new(nil, "invoice_id")], [0, 1]],
      ["items", ["SalesOrderInvoiceItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["comments", ["SalesOrderInvoiceCommentEntityArray", XSD::QName.new(nil, "comments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderInvoiceEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceItemEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["weee_tax_applied", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["cost", ["SOAP::SOAPString", XSD::QName.new(nil, "cost")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "row_total")], [0, 1]],
      ["base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "base_price")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["base_row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_total")], [0, 1]],
      ["base_weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_amount")], [0, 1]],
      ["base_weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_row_amount")], [0, 1]],
      ["weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_amount")], [0, 1]],
      ["weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_row_amount")], [0, 1]],
      ["weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_disposition")], [0, 1]],
      ["weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_row_disposition")], [0, 1]],
      ["base_weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_disposition")], [0, 1]],
      ["base_weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_row_disposition")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["order_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_item_id")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderInvoiceItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceCommentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceCommentEntity"),
    :schema_element => [
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["is_active", ["SOAP::SOAPString", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")], [0, 1]],
      ["comment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "comment_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceCommentEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderInvoiceCommentEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderInvoiceCommentEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoEntity"),
    :schema_element => [
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["increment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "increment_id")], [0, 1]],
      ["transaction_id", ["SOAP::SOAPString", XSD::QName.new(nil, "transaction_id")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["order_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "order_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["cybersource_token", ["SOAP::SOAPString", XSD::QName.new(nil, "cybersource_token")], [0, 1]],
      ["invoice_id", ["SOAP::SOAPString", XSD::QName.new(nil, "invoice_id")], [0, 1]],
      ["billing_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "billing_address_id")], [0, 1]],
      ["shipping_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_address_id")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["creditmemo_status", ["SOAP::SOAPString", XSD::QName.new(nil, "creditmemo_status")], [0, 1]],
      ["email_sent", ["SOAP::SOAPString", XSD::QName.new(nil, "email_sent")], [0, 1]],
      ["order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_id")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["shipping_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_tax_amount")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["base_adjustment_positive", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment_positive")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["adjustment", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment")], [0, 1]],
      ["subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["base_adjustment", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["base_shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_amount")], [0, 1]],
      ["adjustment_negative", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment_negative")], [0, 1]],
      ["subtotal_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "subtotal_incl_tax")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["base_subtotal_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_subtotal_incl_tax")], [0, 1]],
      ["base_adjustment_negative", ["SOAP::SOAPString", XSD::QName.new(nil, "base_adjustment_negative")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["base_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "base_to_order_rate")], [0, 1]],
      ["store_to_order_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_order_rate")], [0, 1]],
      ["base_shipping_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_tax_amount")], [0, 1]],
      ["adjustment_positive", ["SOAP::SOAPString", XSD::QName.new(nil, "adjustment_positive")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_amount")], [0, 1]],
      ["base_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_amount")], [0, 1]],
      ["shipping_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_hidden_tax_amount")], [0, 1]],
      ["base_shipping_hidden_tax_amnt", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_hidden_tax_amnt")], [0, 1]],
      ["shipping_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_incl_tax")], [0, 1]],
      ["base_shipping_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_shipping_incl_tax")], [0, 1]],
      ["base_customer_balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_customer_balance_amount")], [0, 1]],
      ["customer_balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_balance_amount")], [0, 1]],
      ["bs_customer_bal_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "bs_customer_bal_total_refunded")], [0, 1]],
      ["customer_bal_total_refunded", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_bal_total_refunded")], [0, 1]],
      ["base_gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_amount")], [0, 1]],
      ["gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_amount")], [0, 1]],
      ["gw_base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_base_price")], [0, 1]],
      ["gw_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_price")], [0, 1]],
      ["gw_items_base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_items_base_price")], [0, 1]],
      ["gw_items_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_items_price")], [0, 1]],
      ["gw_card_base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_card_base_price")], [0, 1]],
      ["gw_card_price", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_card_price")], [0, 1]],
      ["gw_base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_base_tax_amount")], [0, 1]],
      ["gw_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_tax_amount")], [0, 1]],
      ["gw_items_base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_items_base_tax_amount")], [0, 1]],
      ["gw_items_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_items_tax_amount")], [0, 1]],
      ["gw_card_base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_card_base_tax_amount")], [0, 1]],
      ["gw_card_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gw_card_tax_amount")], [0, 1]],
      ["base_reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount")], [0, 1]],
      ["reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount")], [0, 1]],
      ["reward_points_balance", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance")], [0, 1]],
      ["reward_points_balance_refund", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance_refund")], [0, 1]],
      ["creditmemo_id", ["SOAP::SOAPString", XSD::QName.new(nil, "creditmemo_id")], [0, 1]],
      ["items", ["SalesOrderCreditmemoItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["comments", ["SalesOrderCreditmemoCommentEntityArray", XSD::QName.new(nil, "comments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderCreditmemoEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoItemEntity"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]],
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_row_amount")], [0, 1]],
      ["base_price", ["SOAP::SOAPString", XSD::QName.new(nil, "base_price")], [0, 1]],
      ["base_weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_row_disposition")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["base_weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_amount")], [0, 1]],
      ["weee_tax_row_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_row_disposition")], [0, 1]],
      ["base_row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_total")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["row_total", ["SOAP::SOAPString", XSD::QName.new(nil, "row_total")], [0, 1]],
      ["weee_tax_applied_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["base_weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_disposition")], [0, 1]],
      ["price_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "price_incl_tax")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["weee_tax_disposition", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_disposition")], [0, 1]],
      ["base_price_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_price_incl_tax")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["base_cost", ["SOAP::SOAPString", XSD::QName.new(nil, "base_cost")], [0, 1]],
      ["base_weee_tax_applied_row_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_weee_tax_applied_row_amount")], [0, 1]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["base_row_total_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "base_row_total_incl_tax")], [0, 1]],
      ["row_total_incl_tax", ["SOAP::SOAPString", XSD::QName.new(nil, "row_total_incl_tax")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["order_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "order_item_id")], [0, 1]],
      ["additional_data", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_data")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["weee_tax_applied", ["SOAP::SOAPString", XSD::QName.new(nil, "weee_tax_applied")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "hidden_tax_amount")], [0, 1]],
      ["base_hidden_tax_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_hidden_tax_amount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderCreditmemoItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoCommentEntity,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoCommentEntity"),
    :schema_element => [
      ["parent_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")], [0, 1]],
      ["comment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "comment_id")], [0, 1]],
      ["is_visible_on_front", ["SOAP::SOAPString", XSD::QName.new(nil, "is_visible_on_front")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoCommentEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoCommentEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["SalesOrderCreditmemoCommentEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoData,
    :schema_type => XSD::QName.new(NsMagento, "salesOrderCreditmemoData"),
    :schema_element => [
      ["qtys", ["OrderItemIdQtyArray", XSD::QName.new(nil, "qtys")], [0, 1]],
      ["shipping_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "shipping_amount")], [0, 1]],
      ["adjustment_positive", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustment_positive")], [0, 1]],
      ["adjustment_negative", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustment_negative")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogInventoryStockItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogInventoryStockItemEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["is_in_stock", ["SOAP::SOAPString", XSD::QName.new(nil, "is_in_stock")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogInventoryStockItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogInventoryStockItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogInventoryStockItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogInventoryStockItemUpdateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogInventoryStockItemUpdateEntity"),
    :schema_element => [
      ["qty", ["SOAP::SOAPString", XSD::QName.new(nil, "qty")], [0, 1]],
      ["is_in_stock", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_in_stock")], [0, 1]],
      ["manage_stock", ["SOAP::SOAPInt", XSD::QName.new(nil, "manage_stock")], [0, 1]],
      ["use_config_manage_stock", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_manage_stock")], [0, 1]],
      ["min_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "min_qty")], [0, 1]],
      ["use_config_min_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_min_qty")], [0, 1]],
      ["min_sale_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "min_sale_qty")], [0, 1]],
      ["use_config_min_sale_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_min_sale_qty")], [0, 1]],
      ["max_sale_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "max_sale_qty")], [0, 1]],
      ["use_config_max_sale_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_max_sale_qty")], [0, 1]],
      ["is_qty_decimal", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_qty_decimal")], [0, 1]],
      ["backorders", ["SOAP::SOAPInt", XSD::QName.new(nil, "backorders")], [0, 1]],
      ["use_config_backorders", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_backorders")], [0, 1]],
      ["notify_stock_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "notify_stock_qty")], [0, 1]],
      ["use_config_notify_stock_qty", ["SOAP::SOAPInt", XSD::QName.new(nil, "use_config_notify_stock_qty")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartAddressEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartAddressEntity"),
    :schema_element => [
      ["address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "address_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["save_in_address_book", ["SOAP::SOAPInt", XSD::QName.new(nil, "save_in_address_book")], [0, 1]],
      ["customer_address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_address_id")], [0, 1]],
      ["address_type", ["SOAP::SOAPString", XSD::QName.new(nil, "address_type")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "prefix")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "middlename")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "suffix")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(nil, "street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["region_id", ["SOAP::SOAPString", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["same_as_billing", ["SOAP::SOAPInt", XSD::QName.new(nil, "same_as_billing")], [0, 1]],
      ["free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "free_shipping")], [0, 1]],
      ["shipping_method", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_method")], [0, 1]],
      ["shipping_description", ["SOAP::SOAPString", XSD::QName.new(nil, "shipping_description")], [0, 1]],
      ["weight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weight")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartItemEntity"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["parent_item_id", ["SOAP::SOAPString", XSD::QName.new(nil, "parent_item_id")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["additional_data", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_data")], [0, 1]],
      ["free_shipping", ["SOAP::SOAPString", XSD::QName.new(nil, "free_shipping")], [0, 1]],
      ["is_qty_decimal", ["SOAP::SOAPString", XSD::QName.new(nil, "is_qty_decimal")], [0, 1]],
      ["no_discount", ["SOAP::SOAPString", XSD::QName.new(nil, "no_discount")], [0, 1]],
      ["weight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weight")], [0, 1]],
      ["qty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "qty")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "price")], [0, 1]],
      ["base_price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_price")], [0, 1]],
      ["custom_price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "custom_price")], [0, 1]],
      ["discount_percent", ["SOAP::SOAPDouble", XSD::QName.new(nil, "discount_percent")], [0, 1]],
      ["discount_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "discount_amount")], [0, 1]],
      ["base_discount_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_discount_amount")], [0, 1]],
      ["tax_percent", ["SOAP::SOAPDouble", XSD::QName.new(nil, "tax_percent")], [0, 1]],
      ["tax_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "tax_amount")], [0, 1]],
      ["base_tax_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_tax_amount")], [0, 1]],
      ["row_total", ["SOAP::SOAPDouble", XSD::QName.new(nil, "row_total")], [0, 1]],
      ["base_row_total", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_row_total")], [0, 1]],
      ["row_total_with_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "row_total_with_discount")], [0, 1]],
      ["row_weight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "row_weight")], [0, 1]],
      ["product_type", ["SOAP::SOAPString", XSD::QName.new(nil, "product_type")], [0, 1]],
      ["base_tax_before_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_tax_before_discount")], [0, 1]],
      ["tax_before_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "tax_before_discount")], [0, 1]],
      ["original_custom_price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "original_custom_price")], [0, 1]],
      ["base_cost", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_cost")], [0, 1]],
      ["price_incl_tax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "price_incl_tax")], [0, 1]],
      ["base_price_incl_tax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_price_incl_tax")], [0, 1]],
      ["row_total_incl_tax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "row_total_incl_tax")], [0, 1]],
      ["base_row_total_incl_tax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_row_total_incl_tax")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["gift_message", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message")], [0, 1]],
      ["gift_message_available", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_available")], [0, 1]],
      ["weee_tax_applied", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_applied")], [0, 1]],
      ["weee_tax_applied_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_applied_amount")], [0, 1]],
      ["weee_tax_applied_row_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_applied_row_amount")], [0, 1]],
      ["base_weee_tax_applied_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_weee_tax_applied_amount")], [0, 1]],
      ["base_weee_tax_applied_row_amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_weee_tax_applied_row_amount")], [0, 1]],
      ["weee_tax_disposition", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_disposition")], [0, 1]],
      ["weee_tax_row_disposition", ["SOAP::SOAPDouble", XSD::QName.new(nil, "weee_tax_row_disposition")], [0, 1]],
      ["base_weee_tax_disposition", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_weee_tax_disposition")], [0, 1]],
      ["base_weee_tax_row_disposition", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_weee_tax_row_disposition")], [0, 1]],
      ["tax_class_id", ["SOAP::SOAPString", XSD::QName.new(nil, "tax_class_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartPaymentEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartPaymentEntity"),
    :schema_element => [
      ["payment_id", ["SOAP::SOAPString", XSD::QName.new(nil, "payment_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["cc_type", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_type")], [0, 1]],
      ["cc_number_enc", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_number_enc")], [0, 1]],
      ["cc_last4", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_last4")], [0, 1]],
      ["cc_cid_enc", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_cid_enc")], [0, 1]],
      ["cc_owner", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_owner")], [0, 1]],
      ["cc_exp_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_month")], [0, 1]],
      ["cc_exp_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_year")], [0, 1]],
      ["cc_ss_owner", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_owner")], [0, 1]],
      ["cc_ss_start_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_start_month")], [0, 1]],
      ["cc_ss_start_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_start_year")], [0, 1]],
      ["cc_ss_issue", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_ss_issue")], [0, 1]],
      ["po_number", ["SOAP::SOAPString", XSD::QName.new(nil, "po_number")], [0, 1]],
      ["additional_data", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_data")], [0, 1]],
      ["additional_information", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_information")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartInfoEntity"),
    :schema_element => [
      ["store_id", ["SOAP::SOAPString", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["created_at", ["SOAP::SOAPString", XSD::QName.new(nil, "created_at")], [0, 1]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")], [0, 1]],
      ["converted_at", ["SOAP::SOAPString", XSD::QName.new(nil, "converted_at")], [0, 1]],
      ["quote_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "quote_id")], [0, 1]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_virtual", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_virtual")], [0, 1]],
      ["is_multi_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_multi_shipping")], [0, 1]],
      ["items_count", ["SOAP::SOAPDouble", XSD::QName.new(nil, "items_count")], [0, 1]],
      ["items_qty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "items_qty")], [0, 1]],
      ["orig_order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "orig_order_id")], [0, 1]],
      ["store_to_base_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_base_rate")], [0, 1]],
      ["store_to_quote_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "store_to_quote_rate")], [0, 1]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")], [0, 1]],
      ["store_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "store_currency_code")], [0, 1]],
      ["quote_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "quote_currency_code")], [0, 1]],
      ["grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "grand_total")], [0, 1]],
      ["base_grand_total", ["SOAP::SOAPString", XSD::QName.new(nil, "base_grand_total")], [0, 1]],
      ["checkout_method", ["SOAP::SOAPString", XSD::QName.new(nil, "checkout_method")], [0, 1]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["customer_tax_class_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_tax_class_id")], [0, 1]],
      ["customer_group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_group_id")], [0, 1]],
      ["customer_email", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_email")], [0, 1]],
      ["customer_prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_prefix")], [0, 1]],
      ["customer_firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_firstname")], [0, 1]],
      ["customer_middlename", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_middlename")], [0, 1]],
      ["customer_lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_lastname")], [0, 1]],
      ["customer_suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_suffix")], [0, 1]],
      ["customer_note", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note")], [0, 1]],
      ["customer_note_notify", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_note_notify")], [0, 1]],
      ["customer_is_guest", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_is_guest")], [0, 1]],
      ["applied_rule_ids", ["SOAP::SOAPString", XSD::QName.new(nil, "applied_rule_ids")], [0, 1]],
      ["reserved_order_id", ["SOAP::SOAPString", XSD::QName.new(nil, "reserved_order_id")], [0, 1]],
      ["password_hash", ["SOAP::SOAPString", XSD::QName.new(nil, "password_hash")], [0, 1]],
      ["coupon_code", ["SOAP::SOAPString", XSD::QName.new(nil, "coupon_code")], [0, 1]],
      ["global_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "global_currency_code")], [0, 1]],
      ["base_to_global_rate", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_to_global_rate")], [0, 1]],
      ["base_to_quote_rate", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_to_quote_rate")], [0, 1]],
      ["customer_taxvat", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_taxvat")], [0, 1]],
      ["customer_gender", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_gender")], [0, 1]],
      ["subtotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "subtotal")], [0, 1]],
      ["base_subtotal", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_subtotal")], [0, 1]],
      ["subtotal_with_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "subtotal_with_discount")], [0, 1]],
      ["base_subtotal_with_discount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_subtotal_with_discount")], [0, 1]],
      ["ext_shipping_info", ["SOAP::SOAPString", XSD::QName.new(nil, "ext_shipping_info")], [0, 1]],
      ["gift_message_id", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message_id")], [0, 1]],
      ["gift_message", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_message")], [0, 1]],
      ["customer_balance_amount_used", ["SOAP::SOAPDouble", XSD::QName.new(nil, "customer_balance_amount_used")], [0, 1]],
      ["base_customer_balance_amount_used", ["SOAP::SOAPDouble", XSD::QName.new(nil, "base_customer_balance_amount_used")], [0, 1]],
      ["use_customer_balance", ["SOAP::SOAPString", XSD::QName.new(nil, "use_customer_balance")], [0, 1]],
      ["gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_amount")], [0, 1]],
      ["base_gift_cards_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_gift_cards_amount")], [0, 1]],
      ["gift_cards_amount_used", ["SOAP::SOAPString", XSD::QName.new(nil, "gift_cards_amount_used")], [0, 1]],
      ["use_reward_points", ["SOAP::SOAPString", XSD::QName.new(nil, "use_reward_points")], [0, 1]],
      ["reward_points_balance", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_points_balance")], [0, 1]],
      ["base_reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_reward_currency_amount")], [0, 1]],
      ["reward_currency_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "reward_currency_amount")], [0, 1]],
      ["shipping_address", ["ShoppingCartAddressEntity", XSD::QName.new(nil, "shipping_address")], [0, 1]],
      ["billing_address", ["ShoppingCartAddressEntity", XSD::QName.new(nil, "billing_address")], [0, 1]],
      ["items", ["ShoppingCartItemEntityArray", XSD::QName.new(nil, "items")], [0, 1]],
      ["payment", ["ShoppingCartPaymentEntity", XSD::QName.new(nil, "payment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartTotalsEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartTotalsEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(nil, "amount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartTotalsEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartTotalsEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartTotalsEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartLicenseEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartLicenseEntity"),
    :schema_element => [
      ["agreement_id", ["SOAP::SOAPString", XSD::QName.new(nil, "agreement_id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "content")], [0, 1]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_html", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_html")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartLicenseEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartLicenseEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartLicenseEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartProductEntity"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")], [0, 1]],
      ["qty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "qty")], [0, 1]],
      ["options", ["AssociativeArray", XSD::QName.new(nil, "options")], [0, 1]],
      ["bundle_option", ["AssociativeArray", XSD::QName.new(nil, "bundle_option")], [0, 1]],
      ["bundle_option_qty", ["AssociativeArray", XSD::QName.new(nil, "bundle_option_qty")], [0, 1]],
      ["links", ["ArrayOfString", XSD::QName.new(nil, "links")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartProductEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartProductEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductResponseEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartProductResponseEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartCustomerEntity"),
    :schema_element => [
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")], [0, 1]],
      ["customer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "customer_id")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")], [0, 1]],
      ["confirmation", ["SOAP::SOAPString", XSD::QName.new(nil, "confirmation")], [0, 1]],
      ["website_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "website_id")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "group_id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerAddressEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartCustomerAddressEntity"),
    :schema_element => [
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")], [0, 1]],
      ["address_id", ["SOAP::SOAPString", XSD::QName.new(nil, "address_id")], [0, 1]],
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")], [0, 1]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(nil, "company")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(nil, "street")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "city")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "region")], [0, 1]],
      ["region_id", ["SOAP::SOAPString", XSD::QName.new(nil, "region_id")], [0, 1]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "postcode")], [0, 1]],
      ["country_id", ["SOAP::SOAPString", XSD::QName.new(nil, "country_id")], [0, 1]],
      ["telephone", ["SOAP::SOAPString", XSD::QName.new(nil, "telephone")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(nil, "fax")], [0, 1]],
      ["is_default_billing", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_default_billing")], [0, 1]],
      ["is_default_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_default_shipping")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerAddressEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartCustomerAddressEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartCustomerAddressEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartShippingMethodEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartShippingMethodEntity"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["carrier", ["SOAP::SOAPString", XSD::QName.new(nil, "carrier")], [0, 1]],
      ["carrier_title", ["SOAP::SOAPString", XSD::QName.new(nil, "carrier_title")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["method_title", ["SOAP::SOAPString", XSD::QName.new(nil, "method_title")], [0, 1]],
      ["method_description", ["SOAP::SOAPString", XSD::QName.new(nil, "method_description")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(nil, "price")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartShippingMethodEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartShippingMethodEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["ShoppingCartShippingMethodEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartPaymentMethodEntity,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartPaymentMethodEntity"),
    :schema_element => [
      ["po_number", ["SOAP::SOAPString", XSD::QName.new(nil, "po_number")], [0, 1]],
      ["method", ["SOAP::SOAPString", XSD::QName.new(nil, "method")], [0, 1]],
      ["cc_cid", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_cid")], [0, 1]],
      ["cc_owner", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_owner")], [0, 1]],
      ["cc_number", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_number")], [0, 1]],
      ["cc_type", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_type")], [0, 1]],
      ["cc_exp_year", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_year")], [0, 1]],
      ["cc_exp_month", ["SOAP::SOAPString", XSD::QName.new(nil, "cc_exp_month")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartPaymentMethodResponseEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "shoppingCartPaymentMethodResponseEntityArray"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["cc_types", ["AssociativeArray", XSD::QName.new(nil, "cc_types")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagListEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagListEntity"),
    :schema_element => [
      ["tag_id", ["SOAP::SOAPString", XSD::QName.new(nil, "tag_id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagListEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagListEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductTagListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagAddEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagAddEntity"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagUpdateEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagUpdateEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["base_popularity", ["SOAP::SOAPString", XSD::QName.new(nil, "base_popularity")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductTagInfoEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["base_popularity", ["SOAP::SOAPString", XSD::QName.new(nil, "base_popularity")]],
      ["products", ["AssociativeArray", XSD::QName.new(nil, "products")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageEntity,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageEntity"),
    :schema_element => [
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "from")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "to")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageResponse,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageResponse"),
    :schema_element => [
      ["entityId", ["SOAP::SOAPString", XSD::QName.new(nil, "entityId")], [0, 1]],
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")], [0, 1]],
      ["error", ["SOAP::SOAPString", XSD::QName.new(nil, "error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageResponseArray,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageResponseArray"),
    :schema_element => [
      ["complexObjectArray", ["GiftMessageResponse[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageAssociativeProductsEntity,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageAssociativeProductsEntity"),
    :schema_element => [
      ["product", ["ShoppingCartProductEntity", XSD::QName.new(nil, "product")]],
      ["message", ["GiftMessageEntity", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageAssociativeProductsEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "giftMessageAssociativeProductsEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["GiftMessageAssociativeProductsEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkFileEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkFileEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["base64_content", ["SOAP::SOAPString", XSD::QName.new(nil, "base64_content")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkAddSampleEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkAddSampleEntity"),
    :schema_element => [
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["file", ["CatalogProductDownloadableLinkFileEntity", XSD::QName.new(nil, "file")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkAddEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkAddEntity"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")], [0, 1]],
      ["is_unlimited", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_unlimited")], [0, 1]],
      ["number_of_downloads", ["SOAP::SOAPInt", XSD::QName.new(nil, "number_of_downloads")], [0, 1]],
      ["is_shareable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_shareable")], [0, 1]],
      ["sample", ["CatalogProductDownloadableLinkAddSampleEntity", XSD::QName.new(nil, "sample")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["file", ["CatalogProductDownloadableLinkFileEntity", XSD::QName.new(nil, "file")], [0, 1]],
      ["link_url", ["SOAP::SOAPString", XSD::QName.new(nil, "link_url")], [0, 1]],
      ["sample_url", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_url")], [0, 1]],
      ["sort_order", ["SOAP::SOAPInt", XSD::QName.new(nil, "sort_order")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkFileInfoEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkFileInfoEntity"),
    :schema_element => [
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["size", ["SOAP::SOAPInt", XSD::QName.new(nil, "size")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkFileInfoEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkFileInfoEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductDownloadableLinkFileInfoEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkEntity"),
    :schema_element => [
      ["link_id", ["SOAP::SOAPString", XSD::QName.new(nil, "link_id")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["price", ["SOAP::SOAPString", XSD::QName.new(nil, "price")]],
      ["number_of_downloads", ["SOAP::SOAPInt", XSD::QName.new(nil, "number_of_downloads")], [0, 1]],
      ["is_unlimited", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_unlimited")], [0, 1]],
      ["is_shareable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_shareable")]],
      ["link_url", ["SOAP::SOAPString", XSD::QName.new(nil, "link_url")]],
      ["link_type", ["SOAP::SOAPString", XSD::QName.new(nil, "link_type")]],
      ["sample_file", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_file")], [0, 1]],
      ["sample_url", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_url")], [0, 1]],
      ["sample_type", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_type")]],
      ["sort_order", ["SOAP::SOAPInt", XSD::QName.new(nil, "sort_order")]],
      ["file_save", ["CatalogProductDownloadableLinkFileInfoEntityArray", XSD::QName.new(nil, "file_save")], [0, 1]],
      ["sample_file_save", ["CatalogProductDownloadableLinkFileInfoEntityArray", XSD::QName.new(nil, "sample_file_save")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductDownloadableLinkEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkSampleEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkSampleEntity"),
    :schema_element => [
      ["sample_id", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_id")]],
      ["product_id", ["SOAP::SOAPString", XSD::QName.new(nil, "product_id")]],
      ["sample_file", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_file")], [0, 1]],
      ["sample_url", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_url")], [0, 1]],
      ["sample_type", ["SOAP::SOAPString", XSD::QName.new(nil, "sample_type")]],
      ["sort_order", ["SOAP::SOAPString", XSD::QName.new(nil, "sort_order")]],
      ["default_title", ["SOAP::SOAPString", XSD::QName.new(nil, "default_title")]],
      ["store_title", ["SOAP::SOAPString", XSD::QName.new(nil, "store_title")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkSampleEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkSampleEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["CatalogProductDownloadableLinkSampleEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkListEntity,
    :schema_type => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkListEntity"),
    :schema_element => [
      ["links", ["CatalogProductDownloadableLinkEntityArray", XSD::QName.new(nil, "links")]],
      ["samples", ["CatalogProductDownloadableLinkSampleEntityArray", XSD::QName.new(nil, "samples")]]
    ]
  )

  LiteralRegistry.register(
    :class => EnterpriseCustomerbalanceHistoryItemEntity,
    :schema_type => XSD::QName.new(NsMagento, "enterpriseCustomerbalanceHistoryItemEntity"),
    :schema_element => [
      ["history_id", ["SOAP::SOAPString", XSD::QName.new(nil, "history_id")]],
      ["balance_id", ["SOAP::SOAPString", XSD::QName.new(nil, "balance_id")]],
      ["updated_at", ["SOAP::SOAPString", XSD::QName.new(nil, "updated_at")]],
      ["action", ["SOAP::SOAPString", XSD::QName.new(nil, "action")]],
      ["balance_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "balance_amount")]],
      ["balance_delta", ["SOAP::SOAPString", XSD::QName.new(nil, "balance_delta")]],
      ["additional_info", ["SOAP::SOAPString", XSD::QName.new(nil, "additional_info")]],
      ["is_customer_notified", ["SOAP::SOAPString", XSD::QName.new(nil, "is_customer_notified")]],
      ["customer_id", ["SOAP::SOAPString", XSD::QName.new(nil, "customer_id")]],
      ["website_id", ["SOAP::SOAPString", XSD::QName.new(nil, "website_id")]],
      ["base_currency_code", ["SOAP::SOAPString", XSD::QName.new(nil, "base_currency_code")]]
    ]
  )

  LiteralRegistry.register(
    :class => EnterpriseCustomerbalanceHistoryItemEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "enterpriseCustomerbalanceHistoryItemEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["EnterpriseCustomerbalanceHistoryItemEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountCreateGiftcardAccountData,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountCreateGiftcardAccountData"),
    :schema_element => [
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["date_expires", ["SOAP::SOAPString", XSD::QName.new(nil, "date_expires")], [0, 1]],
      ["website_id", ["SOAP::SOAPString", XSD::QName.new(nil, "website_id")]],
      ["balance", ["SOAP::SOAPString", XSD::QName.new(nil, "balance")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["is_redeemable", ["SOAP::SOAPString", XSD::QName.new(nil, "is_redeemable")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountCreateNotificationData,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountCreateNotificationData"),
    :schema_element => [
      ["recipient_name", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient_name")]],
      ["recipient_email", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient_email")]],
      ["recipient_store", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient_store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountEntity,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntity"),
    :schema_element => [
      ["giftcard_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "giftcard_id")], [0, 1]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["date_created", ["SOAP::SOAPString", XSD::QName.new(nil, "date_created")], [0, 1]],
      ["expire_date", ["SOAP::SOAPString", XSD::QName.new(nil, "expire_date")], [0, 1]],
      ["is_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_redeemable", ["SOAP::SOAPInt", XSD::QName.new(nil, "is_redeemable")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")], [0, 1]],
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance")], [0, 1]],
      ["history", ["GiftcardAccountEntityHistoryArray", XSD::QName.new(nil, "history")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["GiftcardAccountEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountEntityHistory,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntityHistory"),
    :schema_element => [
      ["record_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "record_id")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(nil, "date")], [0, 1]],
      ["action", ["SOAP::SOAPString", XSD::QName.new(nil, "action")], [0, 1]],
      ["balance_delta", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance_delta")], [0, 1]],
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance")], [0, 1]],
      ["info", ["SOAP::SOAPString", XSD::QName.new(nil, "info")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountEntityHistoryArray,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntityHistoryArray"),
    :schema_element => [
      ["complexObjectArray", ["GiftcardAccountEntityHistory[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountEntityToUpdate,
    :schema_type => XSD::QName.new(NsMagento, "giftcardAccountEntityToUpdate"),
    :schema_element => [
      ["is_active", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_active")], [0, 1]],
      ["is_redeemable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "is_redeemable")], [0, 1]],
      ["store_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "store_id")], [0, 1]],
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance")], [0, 1]],
      ["date_expires", ["SOAP::SOAPString", XSD::QName.new(nil, "date_expires")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardCustomerEntity,
    :schema_type => XSD::QName.new(NsMagento, "giftcardCustomerEntity"),
    :schema_element => [
      ["balance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "balance")], [0, 1]],
      ["expire_date", ["SOAP::SOAPString", XSD::QName.new(nil, "expire_date")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EnterpriseGiftcardaccountListEntity,
    :schema_type => XSD::QName.new(NsMagento, "enterpriseGiftcardaccountListEntity"),
    :schema_element => [
      ["giftcardaccount_id", ["SOAP::SOAPString", XSD::QName.new(nil, "giftcardaccount_id")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")], [0, 1]],
      ["used_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "used_amount")]],
      ["base_amount", ["SOAP::SOAPString", XSD::QName.new(nil, "base_amount")]]
    ]
  )

  LiteralRegistry.register(
    :class => EnterpriseGiftcardaccountListEntityArray,
    :schema_type => XSD::QName.new(NsMagento, "enterpriseGiftcardaccountListEntityArray"),
    :schema_element => [
      ["complexObjectArray", ["EnterpriseGiftcardaccountListEntity[]", XSD::QName.new(nil, "complexObjectArray")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CallParam,
    :schema_name => XSD::QName.new(NsMagento, "callParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["apiPath", ["SOAP::SOAPString", XSD::QName.new(nil, "apiPath")]],
      ["args", [nil, XSD::QName.new(nil, "args")]]
    ]
  )

  LiteralRegistry.register(
    :class => CallResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "callResponseParam"),
    :schema_element => [
      ["result", [nil, XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MultiCallParam,
    :schema_name => XSD::QName.new(NsMagento, "multiCallParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["calls", [nil, XSD::QName.new(nil, "calls")]],
      ["options", [nil, XSD::QName.new(nil, "options")]]
    ]
  )

  LiteralRegistry.register(
    :class => MultiCallResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "multiCallResponseParam"),
    :schema_element => [
      ["result", [nil, XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => EndSessionParam,
    :schema_name => XSD::QName.new(NsMagento, "endSessionParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => EndSessionResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "endSessionResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => LoginParam,
    :schema_name => XSD::QName.new(NsMagento, "loginParam"),
    :schema_element => [
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(nil, "apiKey")]]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "loginResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResourcesRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "resourcesRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResourcesResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "resourcesResponseParam"),
    :schema_element => [
      ["result", ["ArrayOfApis", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GlobalFaultsParam,
    :schema_name => XSD::QName.new(NsMagento, "globalFaultsParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => GlobalFaultsResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "globalFaultsResponseParam"),
    :schema_element => [
      ["result", ["ArrayOfExistsFaltures", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResourceFaultsParam,
    :schema_name => XSD::QName.new(NsMagento, "resourceFaultsParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["resourceName", ["SOAP::SOAPString", XSD::QName.new(nil, "resourceName")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResourceFaultsResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "resourceFaultsResponseParam"),
    :schema_element => [
      ["result", ["ArrayOfExistsFaltures", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => StartSessionResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "startSessionResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => StoreListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "storeListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => StoreListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "storeListResponseParam"),
    :schema_element => [
      ["result", ["StoreEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => StoreInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "storeInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]]
    ]
  )

  LiteralRegistry.register(
    :class => StoreInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "storeInfoResponseParam"),
    :schema_element => [
      ["result", ["StoreEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => MagentoInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "magentoInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MagentoInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "magentoInfoResponseParam"),
    :schema_element => [
      ["result", ["MagentoInfoEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryCountryListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "directoryCountryListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryCountryListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "directoryCountryListResponseParam"),
    :schema_element => [
      ["result", ["DirectoryCountryEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryRegionListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "directoryRegionListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "country")]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryRegionListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "directoryRegionListResponseParam"),
    :schema_element => [
      ["result", ["DirectoryRegionEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["filters", ["Filters", XSD::QName.new(nil, "filters")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerListResponseParam"),
    :schema_element => [
      ["result", ["CustomerCustomerEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["customerData", ["CustomerCustomerEntityToCreate", XSD::QName.new(nil, "customerData")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "customerId")]],
      ["attributes", ["ArrayOfString", XSD::QName.new(nil, "attributes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerInfoResponseParam"),
    :schema_element => [
      ["result", ["CustomerCustomerEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "customerId")]],
      ["customerData", ["CustomerCustomerEntityToCreate", XSD::QName.new(nil, "customerData")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerDeleteRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerDeleteRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "customerId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerCustomerDeleteResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerCustomerDeleteResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerGroupListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerGroupListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerGroupListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerGroupListResponseParam"),
    :schema_element => [
      ["result", ["CustomerGroupEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "customerId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressListResponseParam"),
    :schema_element => [
      ["result", ["CustomerAddressEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "customerId")]],
      ["addressData", ["CustomerAddressEntityCreate", XSD::QName.new(nil, "addressData")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["addressId", ["SOAP::SOAPInt", XSD::QName.new(nil, "addressId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressInfoResponseParam"),
    :schema_element => [
      ["result", ["CustomerAddressEntityItem", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["addressId", ["SOAP::SOAPInt", XSD::QName.new(nil, "addressId")]],
      ["addressData", ["CustomerAddressEntityCreate", XSD::QName.new(nil, "addressData")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressDeleteRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressDeleteRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["addressId", ["SOAP::SOAPInt", XSD::QName.new(nil, "addressId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerAddressDeleteResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "customerAddressDeleteResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCurrentStoreRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCurrentStoreRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCurrentStoreResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCurrentStoreResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["filters", ["Filters", XSD::QName.new(nil, "filters")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["attributes", ["CatalogProductRequestAttributes", XSD::QName.new(nil, "attributes")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductInfoResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductReturnEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["set", ["SOAP::SOAPString", XSD::QName.new(nil, "set")]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "sku")]],
      ["productData", ["CatalogProductCreateEntity", XSD::QName.new(nil, "productData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["productData", ["CatalogProductCreateEntity", XSD::QName.new(nil, "productData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductSetSpecialPriceRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductSetSpecialPriceRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["specialPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "specialPrice")], [0, 1]],
      ["fromDate", ["SOAP::SOAPString", XSD::QName.new(nil, "fromDate")], [0, 1]],
      ["toDate", ["SOAP::SOAPString", XSD::QName.new(nil, "toDate")], [0, 1]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductSetSpecialPriceResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductSetSpecialPriceResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductGetSpecialPriceRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductGetSpecialPriceRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductGetSpecialPriceResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductGetSpecialPriceResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductReturnEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDeleteRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductDeleteRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDeleteResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductDeleteResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeCurrentStoreRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeCurrentStoreRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeCurrentStoreResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeCurrentStoreResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["setId", ["SOAP::SOAPInt", XSD::QName.new(nil, "setId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeListResponseParam"),
    :schema_element => [
      ["result", ["CatalogAttributeEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeOptionsRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeOptionsRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["attributeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "attributeId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeOptionsResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeOptionsResponseParam"),
    :schema_element => [
      ["result", ["CatalogAttributeOptionEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["data", ["CatalogProductCustomOptionToAdd", XSD::QName.new(nil, "data")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionAddResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["optionId", ["SOAP::SOAPString", XSD::QName.new(nil, "optionId")]],
      ["data", ["CatalogProductCustomOptionToUpdate", XSD::QName.new(nil, "data")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionTypesRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionTypesRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionTypesResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionTypesResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductCustomOptionTypesArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductCustomOptionListArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["optionId", ["SOAP::SOAPString", XSD::QName.new(nil, "optionId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionInfoResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductCustomOptionInfoEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["optionId", ["SOAP::SOAPString", XSD::QName.new(nil, "optionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["optionId", ["SOAP::SOAPString", XSD::QName.new(nil, "optionId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductCustomOptionValueListArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["valueId", ["SOAP::SOAPString", XSD::QName.new(nil, "valueId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueInfoResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductCustomOptionValueInfoEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["optionId", ["SOAP::SOAPString", XSD::QName.new(nil, "optionId")]],
      ["data", ["CatalogProductCustomOptionValueAddArray", XSD::QName.new(nil, "data")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueAddResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["valueId", ["SOAP::SOAPString", XSD::QName.new(nil, "valueId")]],
      ["data", ["CatalogProductCustomOptionValueUpdateEntity", XSD::QName.new(nil, "data")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["valueId", ["SOAP::SOAPString", XSD::QName.new(nil, "valueId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductCustomOptionValueRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductCustomOptionValueRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["attributeSetName", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeSetName")]],
      ["skeletonSetId", ["SOAP::SOAPString", XSD::QName.new(nil, "skeletonSetId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["attributeSetId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeSetId")]],
      ["forceProductsRemove", ["SOAP::SOAPString", XSD::QName.new(nil, "forceProductsRemove")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductAttributeSetEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetAttributeAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetAttributeAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["attributeId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeId")]],
      ["attributeSetId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeSetId")]],
      ["attributeGroupId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeGroupId")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPString", XSD::QName.new(nil, "sortOrder")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetAttributeAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetAttributeAddResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetAttributeRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetAttributeRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["attributeId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeId")]],
      ["attributeSetId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeSetId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetAttributeRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetAttributeRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetGroupAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetGroupAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["attributeSetId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeSetId")]],
      ["groupName", ["SOAP::SOAPString", XSD::QName.new(nil, "groupName")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetGroupAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetGroupAddResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetGroupRenameRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetGroupRenameRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["groupId", ["SOAP::SOAPString", XSD::QName.new(nil, "groupId")]],
      ["groupName", ["SOAP::SOAPString", XSD::QName.new(nil, "groupName")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetGroupRenameResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetGroupRenameResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetGroupRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetGroupRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["attributeGroupId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeGroupId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeSetGroupRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeSetGroupRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTypeListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTypeListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTypeListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTypeListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductTypeEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeTierPriceInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeTierPriceInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeTierPriceInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeTierPriceInfoResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductTierPriceEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeTierPriceUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeTierPriceUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["tierPrices", ["CatalogProductTierPriceEntityArray", XSD::QName.new(nil, "tierPrices")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeTierPriceUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeTierPriceUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaCurrentStoreRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaCurrentStoreRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaCurrentStoreResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaCurrentStoreResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductImageEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaInfoResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductImageEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaTypesRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaTypesRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["setId", ["SOAP::SOAPString", XSD::QName.new(nil, "setId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaTypesResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaTypesResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductAttributeMediaTypeEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["data", ["CatalogProductAttributeMediaCreateEntity", XSD::QName.new(nil, "data")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]],
      ["data", ["CatalogProductAttributeMediaCreateEntity", XSD::QName.new(nil, "data")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["file", ["SOAP::SOAPString", XSD::QName.new(nil, "file")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeMediaRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeMediaRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductLinkEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkAssignRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkAssignRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["linkedProductId", ["SOAP::SOAPString", XSD::QName.new(nil, "linkedProductId")]],
      ["data", ["CatalogProductLinkEntity", XSD::QName.new(nil, "data")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkAssignResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkAssignResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["linkedProductId", ["SOAP::SOAPString", XSD::QName.new(nil, "linkedProductId")]],
      ["data", ["CatalogProductLinkEntity", XSD::QName.new(nil, "data")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["linkedProductId", ["SOAP::SOAPString", XSD::QName.new(nil, "linkedProductId")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkTypesRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkTypesRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkTypesResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkTypesResponseParam"),
    :schema_element => [
      ["result", ["ArrayOfString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkAttributesRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkAttributesRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductLinkAttributesResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductLinkAttributesResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductLinkAttributeEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryCurrentStoreRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryCurrentStoreRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryCurrentStoreResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryCurrentStoreResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryTreeRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryTreeRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["parentId", ["SOAP::SOAPString", XSD::QName.new(nil, "parentId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryTreeResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryTreeResponseParam"),
    :schema_element => [
      ["result", ["CatalogCategoryTree", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryLevelRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryLevelRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(nil, "website")], [0, 1]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["categoryId", ["SOAP::SOAPString", XSD::QName.new(nil, "categoryId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryLevelResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryLevelResponseParam"),
    :schema_element => [
      ["result", ["ArrayOfCatalogCategoryEntitiesNoChildren", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "categoryId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["attributes", ["ArrayOfString", XSD::QName.new(nil, "attributes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryInfoResponseParam"),
    :schema_element => [
      ["result", ["CatalogCategoryInfo", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["parentId", ["SOAP::SOAPInt", XSD::QName.new(nil, "parentId")]],
      ["categoryData", ["CatalogCategoryEntityCreate", XSD::QName.new(nil, "categoryData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "categoryId")]],
      ["categoryData", ["CatalogCategoryEntityCreate", XSD::QName.new(nil, "categoryData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryMoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryMoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "categoryId")]],
      ["parentId", ["SOAP::SOAPInt", XSD::QName.new(nil, "parentId")]],
      ["afterId", ["SOAP::SOAPString", XSD::QName.new(nil, "afterId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryMoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryMoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryDeleteRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryDeleteRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "categoryId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryDeleteResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryDeleteResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAssignedProductsRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAssignedProductsRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "categoryId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAssignedProductsResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAssignedProductsResponseParam"),
    :schema_element => [
      ["result", ["CatalogAssignedProductArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAssignProductRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAssignProductRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "categoryId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAssignProductResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAssignProductResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryUpdateProductRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryUpdateProductRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "categoryId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(nil, "position")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryUpdateProductResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryUpdateProductResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryRemoveProductRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryRemoveProductRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "categoryId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryRemoveProductResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryRemoveProductResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAttributeListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAttributeListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAttributeListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAttributeListResponseParam"),
    :schema_element => [
      ["result", ["CatalogAttributeEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAttributeOptionsRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAttributeOptionsRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["attributeId", ["SOAP::SOAPString", XSD::QName.new(nil, "attributeId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAttributeOptionsResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAttributeOptionsResponseParam"),
    :schema_element => [
      ["result", ["CatalogAttributeOptionEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAttributeCurrentStoreRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAttributeCurrentStoreRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogCategoryAttributeCurrentStoreResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogCategoryAttributeCurrentStoreResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["data", ["CatalogProductAttributeEntityToCreate", XSD::QName.new(nil, "data")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductAttributeCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductAttributeCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["filters", ["Filters", XSD::QName.new(nil, "filters")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderListResponseParam"),
    :schema_element => [
      ["result", ["SalesOrderListEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["orderIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "orderIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInfoResponseParam"),
    :schema_element => [
      ["result", ["SalesOrderEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderAddCommentRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderAddCommentRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["orderIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "orderIncrementId")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["notify", ["SOAP::SOAPInt", XSD::QName.new(nil, "notify")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderAddCommentResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderAddCommentResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderHoldRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderHoldRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["orderIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "orderIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderHoldResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderHoldResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderUnholdRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderUnholdRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["orderIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "orderIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderUnholdResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderUnholdResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCancelRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCancelRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["orderIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "orderIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCancelResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCancelResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["filters", ["Filters", XSD::QName.new(nil, "filters")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentListResponseParam"),
    :schema_element => [
      ["result", ["SalesOrderShipmentEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["shipmentIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "shipmentIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentInfoResponseParam"),
    :schema_element => [
      ["result", ["SalesOrderShipmentEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["orderIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "orderIncrementId")]],
      ["itemsQty", ["OrderItemIdQtyArray", XSD::QName.new(nil, "itemsQty")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["email", ["SOAP::SOAPInt", XSD::QName.new(nil, "email")]],
      ["includeComment", ["SOAP::SOAPInt", XSD::QName.new(nil, "includeComment")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentAddTrackRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentAddTrackRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["shipmentIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "shipmentIncrementId")]],
      ["carrier", ["SOAP::SOAPString", XSD::QName.new(nil, "carrier")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["trackNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "trackNumber")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentAddTrackResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentAddTrackResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentRemoveTrackRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentRemoveTrackRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["shipmentIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "shipmentIncrementId")]],
      ["trackId", ["SOAP::SOAPString", XSD::QName.new(nil, "trackId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentRemoveTrackResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentRemoveTrackResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentSendInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentSendInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["shipmentIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "shipmentIncrementId")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentSendInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentSendInfoResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentAddCommentRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentAddCommentRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["shipmentIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "shipmentIncrementId")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["includeInEmail", ["SOAP::SOAPString", XSD::QName.new(nil, "includeInEmail")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentAddCommentResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentAddCommentResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentGetCarriersRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentGetCarriersRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["orderIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "orderIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderShipmentGetCarriersResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderShipmentGetCarriersResponseParam"),
    :schema_element => [
      ["result", ["AssociativeArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["filters", ["Filters", XSD::QName.new(nil, "filters")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceListResponseParam"),
    :schema_element => [
      ["result", ["SalesOrderInvoiceEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["invoiceIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "invoiceIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceInfoResponseParam"),
    :schema_element => [
      ["result", ["SalesOrderInvoiceEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["invoiceIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "invoiceIncrementId")]],
      ["itemsQty", ["OrderItemIdQtyArray", XSD::QName.new(nil, "itemsQty")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["includeComment", ["SOAP::SOAPString", XSD::QName.new(nil, "includeComment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceAddCommentRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceAddCommentRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["invoiceIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "invoiceIncrementId")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")], [0, 1]],
      ["includeComment", ["SOAP::SOAPString", XSD::QName.new(nil, "includeComment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceAddCommentResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceAddCommentResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceCaptureRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceCaptureRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["invoiceIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "invoiceIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceCaptureResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceCaptureResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceVoidRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceVoidRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["invoiceIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "invoiceIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceVoidResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceVoidResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceCancelRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceCancelRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["invoiceIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "invoiceIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderInvoiceCancelResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderInvoiceCancelResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["filters", ["Filters", XSD::QName.new(nil, "filters")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoListResponseParam"),
    :schema_element => [
      ["result", ["SalesOrderCreditmemoEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["creditmemoIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "creditmemoIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoInfoResponseParam"),
    :schema_element => [
      ["result", ["SalesOrderCreditmemoEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["creditmemoIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "creditmemoIncrementId")]],
      ["creditmemoData", ["SalesOrderCreditmemoData", XSD::QName.new(nil, "creditmemoData")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["notifyCustomer", ["SOAP::SOAPInt", XSD::QName.new(nil, "notifyCustomer")], [0, 1]],
      ["includeComment", ["SOAP::SOAPInt", XSD::QName.new(nil, "includeComment")], [0, 1]],
      ["refundToStoreCreditAmount", ["SOAP::SOAPString", XSD::QName.new(nil, "refundToStoreCreditAmount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoAddCommentRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoAddCommentRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["creditmemoIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "creditmemoIncrementId")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["notifyCustomer", ["SOAP::SOAPInt", XSD::QName.new(nil, "notifyCustomer")], [0, 1]],
      ["includeComment", ["SOAP::SOAPInt", XSD::QName.new(nil, "includeComment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoAddCommentResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoAddCommentResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoCancelRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoCancelRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["creditmemoIncrementId", ["SOAP::SOAPString", XSD::QName.new(nil, "creditmemoIncrementId")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesOrderCreditmemoCancelResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "salesOrderCreditmemoCancelResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogInventoryStockItemListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogInventoryStockItemListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productIds", ["ArrayOfString", XSD::QName.new(nil, "productIds")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogInventoryStockItemListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogInventoryStockItemListResponseParam"),
    :schema_element => [
      ["result", ["CatalogInventoryStockItemEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogInventoryStockItemUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogInventoryStockItemUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["data", ["CatalogInventoryStockItemUpdateEntity", XSD::QName.new(nil, "data")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogInventoryStockItemUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogInventoryStockItemUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartOrderRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartOrderRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["agreements", ["ArrayOfString", XSD::QName.new(nil, "agreements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartOrderResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartOrderResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartInfoResponseParam"),
    :schema_element => [
      ["result", ["ShoppingCartInfoEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartTotalsRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartTotalsRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartTotalsResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartTotalsResponseParam"),
    :schema_element => [
      ["result", ["ShoppingCartTotalsEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartLicenseRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartLicenseRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartLicenseResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartLicenseResponseParam"),
    :schema_element => [
      ["result", ["ShoppingCartLicenseEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["productsData", ["ShoppingCartProductEntityArray", XSD::QName.new(nil, "productsData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductAddResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["productsData", ["ShoppingCartProductEntityArray", XSD::QName.new(nil, "productsData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["productsData", ["ShoppingCartProductEntityArray", XSD::QName.new(nil, "productsData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductListResponseParam"),
    :schema_element => [
      ["result", ["ShoppingCartProductResponseEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductMoveToCustomerQuoteRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductMoveToCustomerQuoteRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["productsData", ["ShoppingCartProductEntityArray", XSD::QName.new(nil, "productsData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartProductMoveToCustomerQuoteResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartProductMoveToCustomerQuoteResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerSetRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCustomerSetRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["customerData", ["ShoppingCartCustomerEntity", XSD::QName.new(nil, "customerData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerSetResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCustomerSetResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerAddressesRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCustomerAddressesRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["customerAddressData", ["ShoppingCartCustomerAddressEntityArray", XSD::QName.new(nil, "customerAddressData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerAddressesResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCustomerAddressesResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartShippingMethodRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartShippingMethodRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["shippingMethod", ["SOAP::SOAPString", XSD::QName.new(nil, "shippingMethod")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartShippingMethodResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartShippingMethodResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartShippingListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartShippingListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartShippingListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartShippingListResponseParam"),
    :schema_element => [
      ["result", ["ShoppingCartShippingMethodEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartPaymentMethodRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartPaymentMethodRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["paymentData", ["ShoppingCartPaymentMethodEntity", XSD::QName.new(nil, "paymentData")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartPaymentMethodResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartPaymentMethodResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartPaymentListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartPaymentListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartPaymentListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartPaymentListResponseParam"),
    :schema_element => [
      ["result", ["ShoppingCartPaymentMethodResponseEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCouponAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCouponAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["couponCode", ["SOAP::SOAPString", XSD::QName.new(nil, "couponCode")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCouponAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCouponAddResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCouponRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCouponRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPInt", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCouponRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCouponRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductTagListEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["tagId", ["SOAP::SOAPString", XSD::QName.new(nil, "tagId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagInfoResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductTagInfoEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["data", ["CatalogProductTagAddEntity", XSD::QName.new(nil, "data")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagAddResponseParam"),
    :schema_element => [
      ["result", ["AssociativeArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["tagId", ["SOAP::SOAPString", XSD::QName.new(nil, "tagId")]],
      ["data", ["CatalogProductTagUpdateEntity", XSD::QName.new(nil, "data")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["tagId", ["SOAP::SOAPString", XSD::QName.new(nil, "tagId")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductTagRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductTagRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageForQuoteRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftMessageForQuoteRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPString", XSD::QName.new(nil, "quoteId")]],
      ["giftMessage", ["GiftMessageEntity", XSD::QName.new(nil, "giftMessage")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageForQuoteResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftMessageForQuoteResponseParam"),
    :schema_element => [
      ["result", ["GiftMessageResponse", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageForQuoteItemRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftMessageForQuoteItemRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "quoteItemId")]],
      ["giftMessage", ["GiftMessageEntity", XSD::QName.new(nil, "giftMessage")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageForQuoteItemResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftMessageForQuoteItemResponseParam"),
    :schema_element => [
      ["result", ["GiftMessageResponse", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageForQuoteProductRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftMessageForQuoteProductRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPString", XSD::QName.new(nil, "quoteId")]],
      ["productsAndMessages", ["GiftMessageAssociativeProductsEntityArray", XSD::QName.new(nil, "productsAndMessages")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftMessageForQuoteProductResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftMessageForQuoteProductResponseParam"),
    :schema_element => [
      ["result", ["GiftMessageResponseArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["resource", ["CatalogProductDownloadableLinkAddEntity", XSD::QName.new(nil, "resource")]],
      ["resourceType", ["SOAP::SOAPString", XSD::QName.new(nil, "resourceType")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkAddResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["productId", ["SOAP::SOAPString", XSD::QName.new(nil, "productId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "identifierType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkListResponseParam"),
    :schema_element => [
      ["result", ["CatalogProductDownloadableLinkListEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["linkId", ["SOAP::SOAPString", XSD::QName.new(nil, "linkId")]],
      ["resourceType", ["SOAP::SOAPString", XSD::QName.new(nil, "resourceType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductDownloadableLinkRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "catalogProductDownloadableLinkRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => EnterpriseCustomerbalanceBalanceRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "enterpriseCustomerbalanceBalanceRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["customerId", ["SOAP::SOAPString", XSD::QName.new(nil, "customerId")]],
      ["websiteId", ["SOAP::SOAPString", XSD::QName.new(nil, "websiteId")]]
    ]
  )

  LiteralRegistry.register(
    :class => EnterpriseCustomerbalanceBalanceResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "enterpriseCustomerbalanceBalanceResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => EnterpriseCustomerbalanceHistoryRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "enterpriseCustomerbalanceHistoryRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["customerId", ["SOAP::SOAPString", XSD::QName.new(nil, "customerId")]],
      ["websiteId", ["SOAP::SOAPString", XSD::QName.new(nil, "websiteId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EnterpriseCustomerbalanceHistoryResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "enterpriseCustomerbalanceHistoryResponseParam"),
    :schema_element => [
      ["result", ["EnterpriseCustomerbalanceHistoryItemEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerbalanceSetAmountRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCustomerbalanceSetAmountRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPString", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerbalanceSetAmountResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCustomerbalanceSetAmountResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPFloat", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerbalanceRemoveAmountRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCustomerbalanceRemoveAmountRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPString", XSD::QName.new(nil, "quoteId")]],
      ["store", ["SOAP::SOAPString", XSD::QName.new(nil, "store")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartCustomerbalanceRemoveAmountResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartCustomerbalanceRemoveAmountResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountCreateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountCreateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["giftcardAccountData", ["GiftcardAccountCreateGiftcardAccountData", XSD::QName.new(nil, "giftcardAccountData")]],
      ["notificationData", ["GiftcardAccountCreateNotificationData", XSD::QName.new(nil, "notificationData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountCreateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountCreateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountUpdateRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountUpdateRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["giftcardAccountId", ["SOAP::SOAPString", XSD::QName.new(nil, "giftcardAccountId")]],
      ["giftcardData", ["GiftcardAccountEntityToUpdate", XSD::QName.new(nil, "giftcardData")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountUpdateResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountUpdateResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["giftcardAccountId", ["SOAP::SOAPString", XSD::QName.new(nil, "giftcardAccountId")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["filters", ["Filters", XSD::QName.new(nil, "filters")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountListResponseParam"),
    :schema_element => [
      ["result", ["GiftcardAccountEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["giftcardAccountId", ["SOAP::SOAPString", XSD::QName.new(nil, "giftcardAccountId")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardAccountInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardAccountInfoResponseParam"),
    :schema_element => [
      ["result", ["GiftcardAccountEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardCustomerInfoRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardCustomerInfoRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardCustomerInfoResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardCustomerInfoResponseParam"),
    :schema_element => [
      ["result", ["GiftcardCustomerEntity", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardCustomerRedeemRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardCustomerRedeemRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]],
      ["customerId", ["SOAP::SOAPString", XSD::QName.new(nil, "customerId")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GiftcardCustomerRedeemResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "giftcardCustomerRedeemResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartGiftcardAddRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartGiftcardAddRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["giftcardAccountCode", ["SOAP::SOAPString", XSD::QName.new(nil, "giftcardAccountCode")]],
      ["quoteId", ["SOAP::SOAPString", XSD::QName.new(nil, "quoteId")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartGiftcardAddResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartGiftcardAddResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartGiftcardRemoveRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartGiftcardRemoveRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["giftcardAccountCode", ["SOAP::SOAPString", XSD::QName.new(nil, "giftcardAccountCode")]],
      ["quoteId", ["SOAP::SOAPString", XSD::QName.new(nil, "quoteId")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartGiftcardRemoveResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartGiftcardRemoveResponseParam"),
    :schema_element => [
      ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartGiftcardListRequestParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartGiftcardListRequestParam"),
    :schema_element => [
      ["sessionId", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionId")]],
      ["quoteId", ["SOAP::SOAPString", XSD::QName.new(nil, "quoteId")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShoppingCartGiftcardListResponseParam,
    :schema_name => XSD::QName.new(NsMagento, "shoppingCartGiftcardListResponseParam"),
    :schema_element => [
      ["result", ["EnterpriseGiftcardaccountListEntityArray", XSD::QName.new(nil, "result")]]
    ]
  )
end
