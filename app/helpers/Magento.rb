require 'xsd/qname'

# {urn:Magento}associativeEntity
#   key - SOAP::SOAPString
#   value - SOAP::SOAPString
class AssociativeEntity
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {urn:Magento}associativeArray
class AssociativeArray < ::Array
end

# {urn:Magento}associativeMultiEntity
#   key - SOAP::SOAPString
#   value - ArrayOfString
class AssociativeMultiEntity
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {urn:Magento}associativeMultiArray
class AssociativeMultiArray < ::Array
end

# {urn:Magento}complexFilter
#   key - SOAP::SOAPString
#   value - AssociativeEntity
class ComplexFilter
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {urn:Magento}complexFilterArray
class ComplexFilterArray < ::Array
end

# {urn:Magento}filters
#   filter - AssociativeArray
#   complex_filter - ComplexFilterArray
class Filters
  attr_accessor :filter
  attr_accessor :complex_filter

  def initialize(filter = nil, complex_filter = nil)
    @filter = filter
    @complex_filter = complex_filter
  end
end

# {urn:Magento}ArrayOfString
class ArrayOfString < ::Array
end

# {urn:Magento}ArrayOfInt
class ArrayOfInt < ::Array
end

# {urn:Magento}apiMethodEntity
#   title - SOAP::SOAPString
#   path - SOAP::SOAPString
#   name - SOAP::SOAPString
#   aliases - ArrayOfString
class ApiMethodEntity
  attr_accessor :title
  attr_accessor :path
  attr_accessor :name
  attr_accessor :aliases

  def initialize(title = nil, path = nil, name = nil, aliases = nil)
    @title = title
    @path = path
    @name = name
    @aliases = aliases
  end
end

# {urn:Magento}ArrayOfApiMethods
class ArrayOfApiMethods < ::Array
end

# {urn:Magento}apiEntity
#   title - SOAP::SOAPString
#   name - SOAP::SOAPString
#   aliases - ArrayOfString
#   methods - ArrayOfApiMethods
class ApiEntity
  attr_accessor :title
  attr_accessor :name
  attr_accessor :aliases
  attr_accessor :methods

  def initialize(title = nil, name = nil, aliases = nil, methods = nil)
    @title = title
    @name = name
    @aliases = aliases
    @methods = methods
  end
end

# {urn:Magento}ArrayOfApis
class ArrayOfApis < ::Array
end

# {urn:Magento}existsFaltureEntity
#   code - SOAP::SOAPString
#   message - SOAP::SOAPString
class ExistsFaltureEntity
  attr_accessor :code
  attr_accessor :message

  def initialize(code = nil, message = nil)
    @code = code
    @message = message
  end
end

# {urn:Magento}ArrayOfExistsFaltures
class ArrayOfExistsFaltures < ::Array
end

# {urn:Magento}storeEntity
#   store_id - SOAP::SOAPInt
#   code - SOAP::SOAPString
#   website_id - SOAP::SOAPInt
#   group_id - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   sort_order - SOAP::SOAPInt
#   is_active - SOAP::SOAPInt
class StoreEntity
  attr_accessor :store_id
  attr_accessor :code
  attr_accessor :website_id
  attr_accessor :group_id
  attr_accessor :name
  attr_accessor :sort_order
  attr_accessor :is_active

  def initialize(store_id = nil, code = nil, website_id = nil, group_id = nil, name = nil, sort_order = nil, is_active = nil)
    @store_id = store_id
    @code = code
    @website_id = website_id
    @group_id = group_id
    @name = name
    @sort_order = sort_order
    @is_active = is_active
  end
end

# {urn:Magento}storeEntityArray
class StoreEntityArray < ::Array
end

# {urn:Magento}magentoInfoEntity
#   magento_version - SOAP::SOAPString
#   magento_edition - SOAP::SOAPString
class MagentoInfoEntity
  attr_accessor :magento_version
  attr_accessor :magento_edition

  def initialize(magento_version = nil, magento_edition = nil)
    @magento_version = magento_version
    @magento_edition = magento_edition
  end
end

# {urn:Magento}directoryCountryEntity
#   country_id - SOAP::SOAPString
#   iso2_code - SOAP::SOAPString
#   iso3_code - SOAP::SOAPString
#   name - SOAP::SOAPString
class DirectoryCountryEntity
  attr_accessor :country_id
  attr_accessor :iso2_code
  attr_accessor :iso3_code
  attr_accessor :name

  def initialize(country_id = nil, iso2_code = nil, iso3_code = nil, name = nil)
    @country_id = country_id
    @iso2_code = iso2_code
    @iso3_code = iso3_code
    @name = name
  end
end

# {urn:Magento}directoryCountryEntityArray
class DirectoryCountryEntityArray < ::Array
end

# {urn:Magento}directoryRegionEntity
#   region_id - SOAP::SOAPString
#   code - SOAP::SOAPString
#   name - SOAP::SOAPString
class DirectoryRegionEntity
  attr_accessor :region_id
  attr_accessor :code
  attr_accessor :name

  def initialize(region_id = nil, code = nil, name = nil)
    @region_id = region_id
    @code = code
    @name = name
  end
end

# {urn:Magento}directoryRegionEntityArray
class DirectoryRegionEntityArray < ::Array
end

# {urn:Magento}customerCustomerEntityToCreate
#   customer_id - SOAP::SOAPInt
#   email - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   password - SOAP::SOAPString
#   website_id - SOAP::SOAPInt
#   store_id - SOAP::SOAPInt
#   group_id - SOAP::SOAPInt
class CustomerCustomerEntityToCreate
  attr_accessor :customer_id
  attr_accessor :email
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :password
  attr_accessor :website_id
  attr_accessor :store_id
  attr_accessor :group_id

  def initialize(customer_id = nil, email = nil, firstname = nil, lastname = nil, password = nil, website_id = nil, store_id = nil, group_id = nil)
    @customer_id = customer_id
    @email = email
    @firstname = firstname
    @lastname = lastname
    @password = password
    @website_id = website_id
    @store_id = store_id
    @group_id = group_id
  end
end

# {urn:Magento}customerCustomerEntity
#   customer_id - SOAP::SOAPInt
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   increment_id - SOAP::SOAPString
#   store_id - SOAP::SOAPInt
#   website_id - SOAP::SOAPInt
#   created_in - SOAP::SOAPString
#   email - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   middlename - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   group_id - SOAP::SOAPInt
#   prefix - SOAP::SOAPString
#   suffix - SOAP::SOAPString
#   dob - SOAP::SOAPString
#   taxvat - SOAP::SOAPString
#   confirmation - SOAP::SOAPBoolean
#   password_hash - SOAP::SOAPString
class CustomerCustomerEntity
  attr_accessor :customer_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :increment_id
  attr_accessor :store_id
  attr_accessor :website_id
  attr_accessor :created_in
  attr_accessor :email
  attr_accessor :firstname
  attr_accessor :middlename
  attr_accessor :lastname
  attr_accessor :group_id
  attr_accessor :prefix
  attr_accessor :suffix
  attr_accessor :dob
  attr_accessor :taxvat
  attr_accessor :confirmation
  attr_accessor :password_hash

  def initialize(customer_id = nil, created_at = nil, updated_at = nil, increment_id = nil, store_id = nil, website_id = nil, created_in = nil, email = nil, firstname = nil, middlename = nil, lastname = nil, group_id = nil, prefix = nil, suffix = nil, dob = nil, taxvat = nil, confirmation = nil, password_hash = nil)
    @customer_id = customer_id
    @created_at = created_at
    @updated_at = updated_at
    @increment_id = increment_id
    @store_id = store_id
    @website_id = website_id
    @created_in = created_in
    @email = email
    @firstname = firstname
    @middlename = middlename
    @lastname = lastname
    @group_id = group_id
    @prefix = prefix
    @suffix = suffix
    @dob = dob
    @taxvat = taxvat
    @confirmation = confirmation
    @password_hash = password_hash
  end
end

# {urn:Magento}customerCustomerEntityArray
class CustomerCustomerEntityArray < ::Array
end

# {urn:Magento}customerGroupEntity
#   customer_group_id - SOAP::SOAPInt
#   customer_group_code - SOAP::SOAPString
class CustomerGroupEntity
  attr_accessor :customer_group_id
  attr_accessor :customer_group_code

  def initialize(customer_group_id = nil, customer_group_code = nil)
    @customer_group_id = customer_group_id
    @customer_group_code = customer_group_code
  end
end

# {urn:Magento}customerGroupEntityArray
class CustomerGroupEntityArray < ::Array
end

# {urn:Magento}customerAddressEntityCreate
#   city - SOAP::SOAPString
#   company - SOAP::SOAPString
#   country_id - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   middlename - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   prefix - SOAP::SOAPString
#   region_id - SOAP::SOAPInt
#   region - SOAP::SOAPString
#   street - ArrayOfString
#   suffix - SOAP::SOAPString
#   telephone - SOAP::SOAPString
#   is_default_billing - SOAP::SOAPBoolean
#   is_default_shipping - SOAP::SOAPBoolean
class CustomerAddressEntityCreate
  attr_accessor :city
  attr_accessor :company
  attr_accessor :country_id
  attr_accessor :fax
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :middlename
  attr_accessor :postcode
  attr_accessor :prefix
  attr_accessor :region_id
  attr_accessor :region
  attr_accessor :street
  attr_accessor :suffix
  attr_accessor :telephone
  attr_accessor :is_default_billing
  attr_accessor :is_default_shipping

  def initialize(city = nil, company = nil, country_id = nil, fax = nil, firstname = nil, lastname = nil, middlename = nil, postcode = nil, prefix = nil, region_id = nil, region = nil, street = nil, suffix = nil, telephone = nil, is_default_billing = nil, is_default_shipping = nil)
    @city = city
    @company = company
    @country_id = country_id
    @fax = fax
    @firstname = firstname
    @lastname = lastname
    @middlename = middlename
    @postcode = postcode
    @prefix = prefix
    @region_id = region_id
    @region = region
    @street = street
    @suffix = suffix
    @telephone = telephone
    @is_default_billing = is_default_billing
    @is_default_shipping = is_default_shipping
  end
end

# {urn:Magento}customerAddressEntityItem
#   customer_address_id - SOAP::SOAPInt
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   increment_id - SOAP::SOAPString
#   city - SOAP::SOAPString
#   company - SOAP::SOAPString
#   country_id - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   middlename - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   prefix - SOAP::SOAPString
#   region - SOAP::SOAPString
#   region_id - SOAP::SOAPInt
#   street - SOAP::SOAPString
#   suffix - SOAP::SOAPString
#   telephone - SOAP::SOAPString
#   is_default_billing - SOAP::SOAPBoolean
#   is_default_shipping - SOAP::SOAPBoolean
class CustomerAddressEntityItem
  attr_accessor :customer_address_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :increment_id
  attr_accessor :city
  attr_accessor :company
  attr_accessor :country_id
  attr_accessor :fax
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :middlename
  attr_accessor :postcode
  attr_accessor :prefix
  attr_accessor :region
  attr_accessor :region_id
  attr_accessor :street
  attr_accessor :suffix
  attr_accessor :telephone
  attr_accessor :is_default_billing
  attr_accessor :is_default_shipping

  def initialize(customer_address_id = nil, created_at = nil, updated_at = nil, increment_id = nil, city = nil, company = nil, country_id = nil, fax = nil, firstname = nil, lastname = nil, middlename = nil, postcode = nil, prefix = nil, region = nil, region_id = nil, street = nil, suffix = nil, telephone = nil, is_default_billing = nil, is_default_shipping = nil)
    @customer_address_id = customer_address_id
    @created_at = created_at
    @updated_at = updated_at
    @increment_id = increment_id
    @city = city
    @company = company
    @country_id = country_id
    @fax = fax
    @firstname = firstname
    @lastname = lastname
    @middlename = middlename
    @postcode = postcode
    @prefix = prefix
    @region = region
    @region_id = region_id
    @street = street
    @suffix = suffix
    @telephone = telephone
    @is_default_billing = is_default_billing
    @is_default_shipping = is_default_shipping
  end
end

# {urn:Magento}customerAddressEntityArray
class CustomerAddressEntityArray < ::Array
end

# {urn:Magento}catalogProductEntityArray
class CatalogProductEntityArray < ::Array
end

# {urn:Magento}catalogProductEntity
#   product_id - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   name - SOAP::SOAPString
#   set - SOAP::SOAPString
#   type - SOAP::SOAPString
#   category_ids - ArrayOfString
#   website_ids - ArrayOfString
class CatalogProductEntity
  attr_accessor :product_id
  attr_accessor :sku
  attr_accessor :name
  attr_accessor :set
  attr_accessor :type
  attr_accessor :category_ids
  attr_accessor :website_ids

  def initialize(product_id = nil, sku = nil, name = nil, set = nil, type = nil, category_ids = nil, website_ids = nil)
    @product_id = product_id
    @sku = sku
    @name = name
    @set = set
    @type = type
    @category_ids = category_ids
    @website_ids = website_ids
  end
end

# {urn:Magento}catalogProductRequestAttributes
#   attributes - ArrayOfString
#   additional_attributes - ArrayOfString
class CatalogProductRequestAttributes
  attr_accessor :attributes
  attr_accessor :additional_attributes

  def initialize(attributes = nil, additional_attributes = nil)
    @attributes = attributes
    @additional_attributes = additional_attributes
  end
end

# {urn:Magento}catalogProductReturnEntity
#   product_id - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   set - SOAP::SOAPString
#   type - SOAP::SOAPString
#   categories - ArrayOfString
#   websites - ArrayOfString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   type_id - SOAP::SOAPString
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   short_description - SOAP::SOAPString
#   weight - SOAP::SOAPString
#   status - SOAP::SOAPString
#   url_key - SOAP::SOAPString
#   url_path - SOAP::SOAPString
#   visibility - SOAP::SOAPString
#   category_ids - ArrayOfString
#   website_ids - ArrayOfString
#   has_options - SOAP::SOAPString
#   gift_message_available - SOAP::SOAPString
#   price - SOAP::SOAPString
#   special_price - SOAP::SOAPString
#   special_from_date - SOAP::SOAPString
#   special_to_date - SOAP::SOAPString
#   tax_class_id - SOAP::SOAPString
#   tier_price - CatalogProductTierPriceEntityArray
#   meta_title - SOAP::SOAPString
#   meta_keyword - SOAP::SOAPString
#   meta_description - SOAP::SOAPString
#   custom_design - SOAP::SOAPString
#   custom_layout_update - SOAP::SOAPString
#   options_container - SOAP::SOAPString
#   additional_attributes - AssociativeArray
#   enable_googlecheckout - SOAP::SOAPString
class CatalogProductReturnEntity
  attr_accessor :product_id
  attr_accessor :sku
  attr_accessor :set
  attr_accessor :type
  attr_accessor :categories
  attr_accessor :websites
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :type_id
  attr_accessor :name
  attr_accessor :description
  attr_accessor :short_description
  attr_accessor :weight
  attr_accessor :status
  attr_accessor :url_key
  attr_accessor :url_path
  attr_accessor :visibility
  attr_accessor :category_ids
  attr_accessor :website_ids
  attr_accessor :has_options
  attr_accessor :gift_message_available
  attr_accessor :price
  attr_accessor :special_price
  attr_accessor :special_from_date
  attr_accessor :special_to_date
  attr_accessor :tax_class_id
  attr_accessor :tier_price
  attr_accessor :meta_title
  attr_accessor :meta_keyword
  attr_accessor :meta_description
  attr_accessor :custom_design
  attr_accessor :custom_layout_update
  attr_accessor :options_container
  attr_accessor :additional_attributes
  attr_accessor :enable_googlecheckout

  def initialize(product_id = nil, sku = nil, set = nil, type = nil, categories = nil, websites = nil, created_at = nil, updated_at = nil, type_id = nil, name = nil, description = nil, short_description = nil, weight = nil, status = nil, url_key = nil, url_path = nil, visibility = nil, category_ids = nil, website_ids = nil, has_options = nil, gift_message_available = nil, price = nil, special_price = nil, special_from_date = nil, special_to_date = nil, tax_class_id = nil, tier_price = nil, meta_title = nil, meta_keyword = nil, meta_description = nil, custom_design = nil, custom_layout_update = nil, options_container = nil, additional_attributes = nil, enable_googlecheckout = nil)
    @product_id = product_id
    @sku = sku
    @set = set
    @type = type
    @categories = categories
    @websites = websites
    @created_at = created_at
    @updated_at = updated_at
    @type_id = type_id
    @name = name
    @description = description
    @short_description = short_description
    @weight = weight
    @status = status
    @url_key = url_key
    @url_path = url_path
    @visibility = visibility
    @category_ids = category_ids
    @website_ids = website_ids
    @has_options = has_options
    @gift_message_available = gift_message_available
    @price = price
    @special_price = special_price
    @special_from_date = special_from_date
    @special_to_date = special_to_date
    @tax_class_id = tax_class_id
    @tier_price = tier_price
    @meta_title = meta_title
    @meta_keyword = meta_keyword
    @meta_description = meta_description
    @custom_design = custom_design
    @custom_layout_update = custom_layout_update
    @options_container = options_container
    @additional_attributes = additional_attributes
    @enable_googlecheckout = enable_googlecheckout
  end
end

# {urn:Magento}catalogProductCreateEntity
#   categories - ArrayOfString
#   websites - ArrayOfString
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   short_description - SOAP::SOAPString
#   weight - SOAP::SOAPString
#   status - SOAP::SOAPString
#   url_key - SOAP::SOAPString
#   url_path - SOAP::SOAPString
#   visibility - SOAP::SOAPString
#   category_ids - ArrayOfString
#   website_ids - ArrayOfString
#   has_options - SOAP::SOAPString
#   gift_message_available - SOAP::SOAPString
#   price - SOAP::SOAPString
#   special_price - SOAP::SOAPString
#   special_from_date - SOAP::SOAPString
#   special_to_date - SOAP::SOAPString
#   tax_class_id - SOAP::SOAPString
#   tier_price - CatalogProductTierPriceEntityArray
#   meta_title - SOAP::SOAPString
#   meta_keyword - SOAP::SOAPString
#   meta_description - SOAP::SOAPString
#   custom_design - SOAP::SOAPString
#   custom_layout_update - SOAP::SOAPString
#   options_container - SOAP::SOAPString
#   additional_attributes - AssociativeArray
#   stock_data - CatalogInventoryStockItemUpdateEntity
class CatalogProductCreateEntity
  attr_accessor :categories
  attr_accessor :websites
  attr_accessor :name
  attr_accessor :description
  attr_accessor :short_description
  attr_accessor :weight
  attr_accessor :status
  attr_accessor :url_key
  attr_accessor :url_path
  attr_accessor :visibility
  attr_accessor :category_ids
  attr_accessor :website_ids
  attr_accessor :has_options
  attr_accessor :gift_message_available
  attr_accessor :price
  attr_accessor :special_price
  attr_accessor :special_from_date
  attr_accessor :special_to_date
  attr_accessor :tax_class_id
  attr_accessor :tier_price
  attr_accessor :meta_title
  attr_accessor :meta_keyword
  attr_accessor :meta_description
  attr_accessor :custom_design
  attr_accessor :custom_layout_update
  attr_accessor :options_container
  attr_accessor :additional_attributes
  attr_accessor :stock_data

  def initialize(categories = nil, websites = nil, name = nil, description = nil, short_description = nil, weight = nil, status = nil, url_key = nil, url_path = nil, visibility = nil, category_ids = nil, website_ids = nil, has_options = nil, gift_message_available = nil, price = nil, special_price = nil, special_from_date = nil, special_to_date = nil, tax_class_id = nil, tier_price = nil, meta_title = nil, meta_keyword = nil, meta_description = nil, custom_design = nil, custom_layout_update = nil, options_container = nil, additional_attributes = nil, stock_data = nil)
    @categories = categories
    @websites = websites
    @name = name
    @description = description
    @short_description = short_description
    @weight = weight
    @status = status
    @url_key = url_key
    @url_path = url_path
    @visibility = visibility
    @category_ids = category_ids
    @website_ids = website_ids
    @has_options = has_options
    @gift_message_available = gift_message_available
    @price = price
    @special_price = special_price
    @special_from_date = special_from_date
    @special_to_date = special_to_date
    @tax_class_id = tax_class_id
    @tier_price = tier_price
    @meta_title = meta_title
    @meta_keyword = meta_keyword
    @meta_description = meta_description
    @custom_design = custom_design
    @custom_layout_update = custom_layout_update
    @options_container = options_container
    @additional_attributes = additional_attributes
    @stock_data = stock_data
  end
end

# {urn:Magento}catalogProductAttributeSetEntity
#   set_id - SOAP::SOAPInt
#   name - SOAP::SOAPString
class CatalogProductAttributeSetEntity
  attr_accessor :set_id
  attr_accessor :name

  def initialize(set_id = nil, name = nil)
    @set_id = set_id
    @name = name
  end
end

# {urn:Magento}catalogProductAttributeSetEntityArray
class CatalogProductAttributeSetEntityArray < ::Array
end

# {urn:Magento}catalogProductTypeEntity
#   type - SOAP::SOAPString
#   label - SOAP::SOAPString
class CatalogProductTypeEntity
  attr_accessor :type
  attr_accessor :label

  def initialize(type = nil, label = nil)
    @type = type
    @label = label
  end
end

# {urn:Magento}catalogProductTypeEntityArray
class CatalogProductTypeEntityArray < ::Array
end

# {urn:Magento}catalogProductTierPriceEntity
#   customer_group_id - SOAP::SOAPString
#   website - SOAP::SOAPString
#   qty - SOAP::SOAPInt
#   price - SOAP::SOAPDouble
class CatalogProductTierPriceEntity
  attr_accessor :customer_group_id
  attr_accessor :website
  attr_accessor :qty
  attr_accessor :price

  def initialize(customer_group_id = nil, website = nil, qty = nil, price = nil)
    @customer_group_id = customer_group_id
    @website = website
    @qty = qty
    @price = price
  end
end

# {urn:Magento}catalogProductTierPriceEntityArray
class CatalogProductTierPriceEntityArray < ::Array
end

# {urn:Magento}ArrayOfCatalogCategoryEntities
class ArrayOfCatalogCategoryEntities < ::Array
end

# {urn:Magento}catalogCategoryEntity
#   category_id - SOAP::SOAPInt
#   parent_id - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   is_active - SOAP::SOAPInt
#   position - SOAP::SOAPInt
#   level - SOAP::SOAPInt
#   children - ArrayOfCatalogCategoryEntities
class CatalogCategoryEntity
  attr_accessor :category_id
  attr_accessor :parent_id
  attr_accessor :name
  attr_accessor :is_active
  attr_accessor :position
  attr_accessor :level
  attr_accessor :children

  def initialize(category_id = nil, parent_id = nil, name = nil, is_active = nil, position = nil, level = nil, children = nil)
    @category_id = category_id
    @parent_id = parent_id
    @name = name
    @is_active = is_active
    @position = position
    @level = level
    @children = children
  end
end

# {urn:Magento}catalogCategoryEntityNoChildren
#   category_id - SOAP::SOAPInt
#   parent_id - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   is_active - SOAP::SOAPInt
#   position - SOAP::SOAPInt
#   level - SOAP::SOAPInt
class CatalogCategoryEntityNoChildren
  attr_accessor :category_id
  attr_accessor :parent_id
  attr_accessor :name
  attr_accessor :is_active
  attr_accessor :position
  attr_accessor :level

  def initialize(category_id = nil, parent_id = nil, name = nil, is_active = nil, position = nil, level = nil)
    @category_id = category_id
    @parent_id = parent_id
    @name = name
    @is_active = is_active
    @position = position
    @level = level
  end
end

# {urn:Magento}ArrayOfCatalogCategoryEntitiesNoChildren
class ArrayOfCatalogCategoryEntitiesNoChildren < ::Array
end

# {urn:Magento}catalogCategoryTree
#   category_id - SOAP::SOAPInt
#   parent_id - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   position - SOAP::SOAPInt
#   level - SOAP::SOAPInt
#   children - ArrayOfCatalogCategoryEntities
class CatalogCategoryTree
  attr_accessor :category_id
  attr_accessor :parent_id
  attr_accessor :name
  attr_accessor :position
  attr_accessor :level
  attr_accessor :children

  def initialize(category_id = nil, parent_id = nil, name = nil, position = nil, level = nil, children = nil)
    @category_id = category_id
    @parent_id = parent_id
    @name = name
    @position = position
    @level = level
    @children = children
  end
end

# {urn:Magento}catalogCategoryEntityCreate
#   name - SOAP::SOAPString
#   is_active - SOAP::SOAPInt
#   position - SOAP::SOAPInt
#   available_sort_by - ArrayOfString
#   custom_design - SOAP::SOAPString
#   custom_design_apply - SOAP::SOAPInt
#   custom_design_from - SOAP::SOAPString
#   custom_design_to - SOAP::SOAPString
#   custom_layout_update - SOAP::SOAPString
#   default_sort_by - SOAP::SOAPString
#   description - SOAP::SOAPString
#   display_mode - SOAP::SOAPString
#   is_anchor - SOAP::SOAPInt
#   landing_page - SOAP::SOAPInt
#   meta_description - SOAP::SOAPString
#   meta_keywords - SOAP::SOAPString
#   meta_title - SOAP::SOAPString
#   page_layout - SOAP::SOAPString
#   url_key - SOAP::SOAPString
#   include_in_menu - SOAP::SOAPInt
class CatalogCategoryEntityCreate
  attr_accessor :name
  attr_accessor :is_active
  attr_accessor :position
  attr_accessor :available_sort_by
  attr_accessor :custom_design
  attr_accessor :custom_design_apply
  attr_accessor :custom_design_from
  attr_accessor :custom_design_to
  attr_accessor :custom_layout_update
  attr_accessor :default_sort_by
  attr_accessor :description
  attr_accessor :display_mode
  attr_accessor :is_anchor
  attr_accessor :landing_page
  attr_accessor :meta_description
  attr_accessor :meta_keywords
  attr_accessor :meta_title
  attr_accessor :page_layout
  attr_accessor :url_key
  attr_accessor :include_in_menu

  def initialize(name = nil, is_active = nil, position = nil, available_sort_by = nil, custom_design = nil, custom_design_apply = nil, custom_design_from = nil, custom_design_to = nil, custom_layout_update = nil, default_sort_by = nil, description = nil, display_mode = nil, is_anchor = nil, landing_page = nil, meta_description = nil, meta_keywords = nil, meta_title = nil, page_layout = nil, url_key = nil, include_in_menu = nil)
    @name = name
    @is_active = is_active
    @position = position
    @available_sort_by = available_sort_by
    @custom_design = custom_design
    @custom_design_apply = custom_design_apply
    @custom_design_from = custom_design_from
    @custom_design_to = custom_design_to
    @custom_layout_update = custom_layout_update
    @default_sort_by = default_sort_by
    @description = description
    @display_mode = display_mode
    @is_anchor = is_anchor
    @landing_page = landing_page
    @meta_description = meta_description
    @meta_keywords = meta_keywords
    @meta_title = meta_title
    @page_layout = page_layout
    @url_key = url_key
    @include_in_menu = include_in_menu
  end
end

# {urn:Magento}catalogCategoryInfo
#   category_id - SOAP::SOAPString
#   is_active - SOAP::SOAPInt
#   position - SOAP::SOAPString
#   level - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   all_children - SOAP::SOAPString
#   children - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   name - SOAP::SOAPString
#   url_key - SOAP::SOAPString
#   description - SOAP::SOAPString
#   meta_title - SOAP::SOAPString
#   meta_keywords - SOAP::SOAPString
#   meta_description - SOAP::SOAPString
#   path - SOAP::SOAPString
#   url_path - SOAP::SOAPString
#   children_count - SOAP::SOAPInt
#   display_mode - SOAP::SOAPString
#   is_anchor - SOAP::SOAPInt
#   available_sort_by - ArrayOfString
#   custom_design - SOAP::SOAPString
#   custom_design_apply - SOAP::SOAPString
#   custom_design_from - SOAP::SOAPString
#   custom_design_to - SOAP::SOAPString
#   page_layout - SOAP::SOAPString
#   custom_layout_update - SOAP::SOAPString
#   default_sort_by - SOAP::SOAPString
#   landing_page - SOAP::SOAPInt
class CatalogCategoryInfo
  attr_accessor :category_id
  attr_accessor :is_active
  attr_accessor :position
  attr_accessor :level
  attr_accessor :parent_id
  attr_accessor :all_children
  attr_accessor :children
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :name
  attr_accessor :url_key
  attr_accessor :description
  attr_accessor :meta_title
  attr_accessor :meta_keywords
  attr_accessor :meta_description
  attr_accessor :path
  attr_accessor :url_path
  attr_accessor :children_count
  attr_accessor :display_mode
  attr_accessor :is_anchor
  attr_accessor :available_sort_by
  attr_accessor :custom_design
  attr_accessor :custom_design_apply
  attr_accessor :custom_design_from
  attr_accessor :custom_design_to
  attr_accessor :page_layout
  attr_accessor :custom_layout_update
  attr_accessor :default_sort_by
  attr_accessor :landing_page

  def initialize(category_id = nil, is_active = nil, position = nil, level = nil, parent_id = nil, all_children = nil, children = nil, created_at = nil, updated_at = nil, name = nil, url_key = nil, description = nil, meta_title = nil, meta_keywords = nil, meta_description = nil, path = nil, url_path = nil, children_count = nil, display_mode = nil, is_anchor = nil, available_sort_by = nil, custom_design = nil, custom_design_apply = nil, custom_design_from = nil, custom_design_to = nil, page_layout = nil, custom_layout_update = nil, default_sort_by = nil, landing_page = nil)
    @category_id = category_id
    @is_active = is_active
    @position = position
    @level = level
    @parent_id = parent_id
    @all_children = all_children
    @children = children
    @created_at = created_at
    @updated_at = updated_at
    @name = name
    @url_key = url_key
    @description = description
    @meta_title = meta_title
    @meta_keywords = meta_keywords
    @meta_description = meta_description
    @path = path
    @url_path = url_path
    @children_count = children_count
    @display_mode = display_mode
    @is_anchor = is_anchor
    @available_sort_by = available_sort_by
    @custom_design = custom_design
    @custom_design_apply = custom_design_apply
    @custom_design_from = custom_design_from
    @custom_design_to = custom_design_to
    @page_layout = page_layout
    @custom_layout_update = custom_layout_update
    @default_sort_by = default_sort_by
    @landing_page = landing_page
  end
end

# {urn:Magento}catalogAssignedProduct
#   product_id - SOAP::SOAPInt
#   type - SOAP::SOAPString
#   set - SOAP::SOAPInt
#   sku - SOAP::SOAPString
#   position - SOAP::SOAPInt
class CatalogAssignedProduct
  attr_accessor :product_id
  attr_accessor :type
  attr_accessor :set
  attr_accessor :sku
  attr_accessor :position

  def initialize(product_id = nil, type = nil, set = nil, sku = nil, position = nil)
    @product_id = product_id
    @type = type
    @set = set
    @sku = sku
    @position = position
  end
end

# {urn:Magento}catalogAssignedProductArray
class CatalogAssignedProductArray < ::Array
end

# {urn:Magento}catalogAttributeEntity
#   attribute_id - SOAP::SOAPInt
#   code - SOAP::SOAPString
#   type - SOAP::SOAPString
#   required - SOAP::SOAPString
#   scope - SOAP::SOAPString
class CatalogAttributeEntity
  attr_accessor :attribute_id
  attr_accessor :code
  attr_accessor :type
  attr_accessor :required
  attr_accessor :scope

  def initialize(attribute_id = nil, code = nil, type = nil, required = nil, scope = nil)
    @attribute_id = attribute_id
    @code = code
    @type = type
    @required = required
    @scope = scope
  end
end

# {urn:Magento}catalogAttributeEntityArray
class CatalogAttributeEntityArray < ::Array
end

# {urn:Magento}catalogAttributeOptionEntity
#   label - SOAP::SOAPString
#   value - SOAP::SOAPString
class CatalogAttributeOptionEntity
  attr_accessor :label
  attr_accessor :value

  def initialize(label = nil, value = nil)
    @label = label
    @value = value
  end
end

# {urn:Magento}catalogAttributeOptionEntityArray
class CatalogAttributeOptionEntityArray < ::Array
end

# {urn:Magento}catalogProductImageEntity
#   file - SOAP::SOAPString
#   label - SOAP::SOAPString
#   position - SOAP::SOAPString
#   exclude - SOAP::SOAPString
#   url - SOAP::SOAPString
#   types - ArrayOfString
class CatalogProductImageEntity
  attr_accessor :file
  attr_accessor :label
  attr_accessor :position
  attr_accessor :exclude
  attr_accessor :url
  attr_accessor :types

  def initialize(file = nil, label = nil, position = nil, exclude = nil, url = nil, types = nil)
    @file = file
    @label = label
    @position = position
    @exclude = exclude
    @url = url
    @types = types
  end
end

# {urn:Magento}catalogProductImageEntityArray
class CatalogProductImageEntityArray < ::Array
end

# {urn:Magento}catalogProductAttributeMediaTypeEntity
#   code - SOAP::SOAPString
#   scope - SOAP::SOAPString
class CatalogProductAttributeMediaTypeEntity
  attr_accessor :code
  attr_accessor :scope

  def initialize(code = nil, scope = nil)
    @code = code
    @scope = scope
  end
end

# {urn:Magento}catalogProductAttributeMediaTypeEntityArray
class CatalogProductAttributeMediaTypeEntityArray < ::Array
end

# {urn:Magento}catalogProductImageFileEntity
#   content - SOAP::SOAPString
#   mime - SOAP::SOAPString
#   name - SOAP::SOAPString
class CatalogProductImageFileEntity
  attr_accessor :content
  attr_accessor :mime
  attr_accessor :name

  def initialize(content = nil, mime = nil, name = nil)
    @content = content
    @mime = mime
    @name = name
  end
end

# {urn:Magento}catalogProductAttributeMediaCreateEntity
#   file - CatalogProductImageFileEntity
#   label - SOAP::SOAPString
#   position - SOAP::SOAPString
#   types - ArrayOfString
#   exclude - SOAP::SOAPString
#   remove - SOAP::SOAPString
class CatalogProductAttributeMediaCreateEntity
  attr_accessor :file
  attr_accessor :label
  attr_accessor :position
  attr_accessor :types
  attr_accessor :exclude
  attr_accessor :remove

  def initialize(file = nil, label = nil, position = nil, types = nil, exclude = nil, remove = nil)
    @file = file
    @label = label
    @position = position
    @types = types
    @exclude = exclude
    @remove = remove
  end
end

# {urn:Magento}catalogProductLinkEntity
#   product_id - SOAP::SOAPString
#   type - SOAP::SOAPString
#   set - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   position - SOAP::SOAPString
#   qty - SOAP::SOAPString
class CatalogProductLinkEntity
  attr_accessor :product_id
  attr_accessor :type
  attr_accessor :set
  attr_accessor :sku
  attr_accessor :position
  attr_accessor :qty

  def initialize(product_id = nil, type = nil, set = nil, sku = nil, position = nil, qty = nil)
    @product_id = product_id
    @type = type
    @set = set
    @sku = sku
    @position = position
    @qty = qty
  end
end

# {urn:Magento}catalogProductLinkEntityArray
class CatalogProductLinkEntityArray < ::Array
end

# {urn:Magento}catalogProductLinkAttributeEntity
#   code - SOAP::SOAPString
#   type - SOAP::SOAPString
class CatalogProductLinkAttributeEntity
  attr_accessor :code
  attr_accessor :type

  def initialize(code = nil, type = nil)
    @code = code
    @type = type
  end
end

# {urn:Magento}catalogProductLinkAttributeEntityArray
class CatalogProductLinkAttributeEntityArray < ::Array
end

# {urn:Magento}catalogProductAttributeFrontendLabelEntity
#   store_id - SOAP::SOAPString
#   label - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   label - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   label - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   label - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   label - SOAP::SOAPString
class CatalogProductAttributeFrontendLabelEntity
  attr_accessor :store_id
  attr_accessor :label
  attr_accessor :store_id
  attr_accessor :label
  attr_accessor :store_id
  attr_accessor :label
  attr_accessor :store_id
  attr_accessor :label
  attr_accessor :store_id
  attr_accessor :label

  def initialize(store1_id = nil, label1 = nil, store2_id = nil, label2 = nil, store3_id = nil, label3 = nil, store4_id = nil, label4 = nil, store5_id = nil, label5 = nil)
    @store1_id = store_id
    @label1 = label
    @store2_id = store_id
    @label2 = label
    @store3_id = store_id
    @label3 = label
    @store4_id = store_id
    @label4 = label
    @store5_id = store_id
    @label5 = label
  end
end

# {urn:Magento}catalogProductAttributeFrontendLabelArray
class CatalogProductAttributeFrontendLabelArray < ::Array
end

# {urn:Magento}catalogProductAttributeEntityToCreate
#   attribute_code - SOAP::SOAPString
#   frontend_input - SOAP::SOAPString
#   scope - SOAP::SOAPString
#   default_value - SOAP::SOAPString
#   is_unique - SOAP::SOAPInt
#   is_required - SOAP::SOAPInt
#   apply_to - ArrayOfString
#   is_configurable - SOAP::SOAPInt
#   is_searchable - SOAP::SOAPInt
#   is_visible_in_advanced_search - SOAP::SOAPInt
#   is_comparable - SOAP::SOAPInt
#   is_used_for_promo_rules - SOAP::SOAPInt
#   is_visible_on_front - SOAP::SOAPInt
#   used_in_product_listing - SOAP::SOAPInt
#   additional_fields - AssociativeArray
#   frontend_label - CatalogProductAttributeFrontendLabelArray
class CatalogProductAttributeEntityToCreate
  attr_accessor :attribute_code
  attr_accessor :frontend_input
  attr_accessor :scope
  attr_accessor :default_value
  attr_accessor :is_unique
  attr_accessor :is_required
  attr_accessor :apply_to
  attr_accessor :is_configurable
  attr_accessor :is_searchable
  attr_accessor :is_visible_in_advanced_search
  attr_accessor :is_comparable
  attr_accessor :is_used_for_promo_rules
  attr_accessor :is_visible_on_front
  attr_accessor :used_in_product_listing
  attr_accessor :additional_fields
  attr_accessor :frontend_label

  def initialize(attribute_code = nil, frontend_input = nil, scope = nil, default_value = nil, is_unique = nil, is_required = nil, apply_to = nil, is_configurable = nil, is_searchable = nil, is_visible_in_advanced_search = nil, is_comparable = nil, is_used_for_promo_rules = nil, is_visible_on_front = nil, used_in_product_listing = nil, additional_fields = nil, frontend_label = nil)
    @attribute_code = attribute_code
    @frontend_input = frontend_input
    @scope = scope
    @default_value = default_value
    @is_unique = is_unique
    @is_required = is_required
    @apply_to = apply_to
    @is_configurable = is_configurable
    @is_searchable = is_searchable
    @is_visible_in_advanced_search = is_visible_in_advanced_search
    @is_comparable = is_comparable
    @is_used_for_promo_rules = is_used_for_promo_rules
    @is_visible_on_front = is_visible_on_front
    @used_in_product_listing = used_in_product_listing
    @additional_fields = additional_fields
    @frontend_label = frontend_label
  end
end

# {urn:Magento}catalogProductCustomOptionAdditionalFieldsEntity
#   title - SOAP::SOAPString
#   price - SOAP::SOAPString
#   price_type - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   max_characters - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
#   file_extension - SOAP::SOAPString
#   image_size_x - SOAP::SOAPString
#   image_size_y - SOAP::SOAPString
#   value_id - SOAP::SOAPString
class CatalogProductCustomOptionAdditionalFieldsEntity
  attr_accessor :title
  attr_accessor :price
  attr_accessor :price_type
  attr_accessor :sku
  attr_accessor :max_characters
  attr_accessor :sort_order
  attr_accessor :file_extension
  attr_accessor :image_size_x
  attr_accessor :image_size_y
  attr_accessor :value_id

  def initialize(title = nil, price = nil, price_type = nil, sku = nil, max_characters = nil, sort_order = nil, file_extension = nil, image_size_x = nil, image_size_y = nil, value_id = nil)
    @title = title
    @price = price
    @price_type = price_type
    @sku = sku
    @max_characters = max_characters
    @sort_order = sort_order
    @file_extension = file_extension
    @image_size_x = image_size_x
    @image_size_y = image_size_y
    @value_id = value_id
  end
end

# {urn:Magento}catalogProductCustomOptionAdditionalFieldsArray
class CatalogProductCustomOptionAdditionalFieldsArray < ::Array
end

# {urn:Magento}catalogProductCustomOptionToAdd
#   title - SOAP::SOAPString
#   type - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
#   is_require - SOAP::SOAPInt
#   additional_fields - CatalogProductCustomOptionAdditionalFieldsArray
class CatalogProductCustomOptionToAdd
  attr_accessor :title
  attr_accessor :type
  attr_accessor :sort_order
  attr_accessor :is_require
  attr_accessor :additional_fields

  def initialize(title = nil, type = nil, sort_order = nil, is_require = nil, additional_fields = nil)
    @title = title
    @type = type
    @sort_order = sort_order
    @is_require = is_require
    @additional_fields = additional_fields
  end
end

# {urn:Magento}catalogProductCustomOptionToUpdate
#   title - SOAP::SOAPString
#   type - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
#   is_require - SOAP::SOAPInt
#   additional_fields - CatalogProductCustomOptionAdditionalFieldsArray
class CatalogProductCustomOptionToUpdate
  attr_accessor :title
  attr_accessor :type
  attr_accessor :sort_order
  attr_accessor :is_require
  attr_accessor :additional_fields

  def initialize(title = nil, type = nil, sort_order = nil, is_require = nil, additional_fields = nil)
    @title = title
    @type = type
    @sort_order = sort_order
    @is_require = is_require
    @additional_fields = additional_fields
  end
end

# {urn:Magento}catalogProductCustomOptionInfoEntity
#   title - SOAP::SOAPString
#   type - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
#   is_require - SOAP::SOAPInt
#   additional_fields - CatalogProductCustomOptionAdditionalFieldsArray
class CatalogProductCustomOptionInfoEntity
  attr_accessor :title
  attr_accessor :type
  attr_accessor :sort_order
  attr_accessor :is_require
  attr_accessor :additional_fields

  def initialize(title = nil, type = nil, sort_order = nil, is_require = nil, additional_fields = nil)
    @title = title
    @type = type
    @sort_order = sort_order
    @is_require = is_require
    @additional_fields = additional_fields
  end
end

# {urn:Magento}catalogProductCustomOptionListEntity
#   option_id - SOAP::SOAPString
#   title - SOAP::SOAPString
#   type - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
#   is_require - SOAP::SOAPInt
class CatalogProductCustomOptionListEntity
  attr_accessor :option_id
  attr_accessor :title
  attr_accessor :type
  attr_accessor :sort_order
  attr_accessor :is_require

  def initialize(option_id = nil, title = nil, type = nil, sort_order = nil, is_require = nil)
    @option_id = option_id
    @title = title
    @type = type
    @sort_order = sort_order
    @is_require = is_require
  end
end

# {urn:Magento}catalogProductCustomOptionListArray
class CatalogProductCustomOptionListArray < ::Array
end

# {urn:Magento}catalogProductCustomOptionTypesEntity
#   label - SOAP::SOAPString
#   value - SOAP::SOAPString
class CatalogProductCustomOptionTypesEntity
  attr_accessor :label
  attr_accessor :value

  def initialize(label = nil, value = nil)
    @label = label
    @value = value
  end
end

# {urn:Magento}catalogProductCustomOptionTypesArray
class CatalogProductCustomOptionTypesArray < ::Array
end

# {urn:Magento}catalogProductCustomOptionValueInfoEntity
#   value_id - SOAP::SOAPString
#   option_id - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
#   default_price - SOAP::SOAPString
#   default_price_type - SOAP::SOAPString
#   store_price - SOAP::SOAPString
#   store_price_type - SOAP::SOAPString
#   price - SOAP::SOAPString
#   price_type - SOAP::SOAPString
#   default_title - SOAP::SOAPString
#   store_title - SOAP::SOAPString
#   title - SOAP::SOAPString
class CatalogProductCustomOptionValueInfoEntity
  attr_accessor :value_id
  attr_accessor :option_id
  attr_accessor :sku
  attr_accessor :sort_order
  attr_accessor :default_price
  attr_accessor :default_price_type
  attr_accessor :store_price
  attr_accessor :store_price_type
  attr_accessor :price
  attr_accessor :price_type
  attr_accessor :default_title
  attr_accessor :store_title
  attr_accessor :title

  def initialize(value_id = nil, option_id = nil, sku = nil, sort_order = nil, default_price = nil, default_price_type = nil, store_price = nil, store_price_type = nil, price = nil, price_type = nil, default_title = nil, store_title = nil, title = nil)
    @value_id = value_id
    @option_id = option_id
    @sku = sku
    @sort_order = sort_order
    @default_price = default_price
    @default_price_type = default_price_type
    @store_price = store_price
    @store_price_type = store_price_type
    @price = price
    @price_type = price_type
    @default_title = default_title
    @store_title = store_title
    @title = title
  end
end

# {urn:Magento}catalogProductCustomOptionValueListEntity
#   value_id - SOAP::SOAPString
#   title - SOAP::SOAPString
#   price - SOAP::SOAPString
#   price_type - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
class CatalogProductCustomOptionValueListEntity
  attr_accessor :value_id
  attr_accessor :title
  attr_accessor :price
  attr_accessor :price_type
  attr_accessor :sku
  attr_accessor :sort_order

  def initialize(value_id = nil, title = nil, price = nil, price_type = nil, sku = nil, sort_order = nil)
    @value_id = value_id
    @title = title
    @price = price
    @price_type = price_type
    @sku = sku
    @sort_order = sort_order
  end
end

# {urn:Magento}catalogProductCustomOptionValueListArray
class CatalogProductCustomOptionValueListArray < ::Array
end

# {urn:Magento}catalogProductCustomOptionValueAddEntity
#   title - SOAP::SOAPString
#   price - SOAP::SOAPString
#   price_type - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
class CatalogProductCustomOptionValueAddEntity
  attr_accessor :title
  attr_accessor :price
  attr_accessor :price_type
  attr_accessor :sku
  attr_accessor :sort_order

  def initialize(title = nil, price = nil, price_type = nil, sku = nil, sort_order = nil)
    @title = title
    @price = price
    @price_type = price_type
    @sku = sku
    @sort_order = sort_order
  end
end

# {urn:Magento}catalogProductCustomOptionValueAddArray
class CatalogProductCustomOptionValueAddArray < ::Array
end

# {urn:Magento}catalogProductCustomOptionValueUpdateEntity
#   title - SOAP::SOAPString
#   price - SOAP::SOAPString
#   price_type - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
class CatalogProductCustomOptionValueUpdateEntity
  attr_accessor :title
  attr_accessor :price
  attr_accessor :price_type
  attr_accessor :sku
  attr_accessor :sort_order

  def initialize(title = nil, price = nil, price_type = nil, sku = nil, sort_order = nil)
    @title = title
    @price = price
    @price_type = price_type
    @sku = sku
    @sort_order = sort_order
  end
end

# {urn:Magento}salesOrderEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   customer_id - SOAP::SOAPString
#   tax_amount - SOAP::SOAPString
#   shipping_amount - SOAP::SOAPString
#   discount_amount - SOAP::SOAPString
#   subtotal - SOAP::SOAPString
#   grand_total - SOAP::SOAPString
#   total_paid - SOAP::SOAPString
#   total_refunded - SOAP::SOAPString
#   total_qty_ordered - SOAP::SOAPString
#   total_canceled - SOAP::SOAPString
#   total_invoiced - SOAP::SOAPString
#   total_online_refunded - SOAP::SOAPString
#   total_offline_refunded - SOAP::SOAPString
#   base_tax_amount - SOAP::SOAPString
#   base_shipping_amount - SOAP::SOAPString
#   base_discount_amount - SOAP::SOAPString
#   base_subtotal - SOAP::SOAPString
#   base_grand_total - SOAP::SOAPString
#   base_total_paid - SOAP::SOAPString
#   base_total_refunded - SOAP::SOAPString
#   base_total_qty_ordered - SOAP::SOAPString
#   base_total_canceled - SOAP::SOAPString
#   base_total_invoiced - SOAP::SOAPString
#   base_total_online_refunded - SOAP::SOAPString
#   base_total_offline_refunded - SOAP::SOAPString
#   billing_address_id - SOAP::SOAPString
#   billing_firstname - SOAP::SOAPString
#   billing_lastname - SOAP::SOAPString
#   shipping_address_id - SOAP::SOAPString
#   shipping_firstname - SOAP::SOAPString
#   shipping_lastname - SOAP::SOAPString
#   billing_name - SOAP::SOAPString
#   shipping_name - SOAP::SOAPString
#   store_to_base_rate - SOAP::SOAPString
#   store_to_order_rate - SOAP::SOAPString
#   base_to_global_rate - SOAP::SOAPString
#   base_to_order_rate - SOAP::SOAPString
#   weight - SOAP::SOAPString
#   store_name - SOAP::SOAPString
#   remote_ip - SOAP::SOAPString
#   status - SOAP::SOAPString
#   state - SOAP::SOAPString
#   applied_rule_ids - SOAP::SOAPString
#   global_currency_code - SOAP::SOAPString
#   base_currency_code - SOAP::SOAPString
#   store_currency_code - SOAP::SOAPString
#   order_currency_code - SOAP::SOAPString
#   shipping_method - SOAP::SOAPString
#   shipping_description - SOAP::SOAPString
#   customer_email - SOAP::SOAPString
#   customer_firstname - SOAP::SOAPString
#   customer_lastname - SOAP::SOAPString
#   quote_id - SOAP::SOAPString
#   is_virtual - SOAP::SOAPString
#   customer_group_id - SOAP::SOAPString
#   customer_note_notify - SOAP::SOAPString
#   customer_is_guest - SOAP::SOAPString
#   email_sent - SOAP::SOAPString
#   order_id - SOAP::SOAPString
#   gift_message_id - SOAP::SOAPString
#   gift_message - SOAP::SOAPString
#   shipping_address - SalesOrderAddressEntity
#   billing_address - SalesOrderAddressEntity
#   items - SalesOrderItemEntityArray
#   payment - SalesOrderPaymentEntity
#   status_history - SalesOrderStatusHistoryEntityArray
class SalesOrderEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :store_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :customer_id
  attr_accessor :tax_amount
  attr_accessor :shipping_amount
  attr_accessor :discount_amount
  attr_accessor :subtotal
  attr_accessor :grand_total
  attr_accessor :total_paid
  attr_accessor :total_refunded
  attr_accessor :total_qty_ordered
  attr_accessor :total_canceled
  attr_accessor :total_invoiced
  attr_accessor :total_online_refunded
  attr_accessor :total_offline_refunded
  attr_accessor :base_tax_amount
  attr_accessor :base_shipping_amount
  attr_accessor :base_discount_amount
  attr_accessor :base_subtotal
  attr_accessor :base_grand_total
  attr_accessor :base_total_paid
  attr_accessor :base_total_refunded
  attr_accessor :base_total_qty_ordered
  attr_accessor :base_total_canceled
  attr_accessor :base_total_invoiced
  attr_accessor :base_total_online_refunded
  attr_accessor :base_total_offline_refunded
  attr_accessor :billing_address_id
  attr_accessor :billing_firstname
  attr_accessor :billing_lastname
  attr_accessor :shipping_address_id
  attr_accessor :shipping_firstname
  attr_accessor :shipping_lastname
  attr_accessor :billing_name
  attr_accessor :shipping_name
  attr_accessor :store_to_base_rate
  attr_accessor :store_to_order_rate
  attr_accessor :base_to_global_rate
  attr_accessor :base_to_order_rate
  attr_accessor :weight
  attr_accessor :store_name
  attr_accessor :remote_ip
  attr_accessor :status
  attr_accessor :state
  attr_accessor :applied_rule_ids
  attr_accessor :global_currency_code
  attr_accessor :base_currency_code
  attr_accessor :store_currency_code
  attr_accessor :order_currency_code
  attr_accessor :shipping_method
  attr_accessor :shipping_description
  attr_accessor :customer_email
  attr_accessor :customer_firstname
  attr_accessor :customer_lastname
  attr_accessor :quote_id
  attr_accessor :is_virtual
  attr_accessor :customer_group_id
  attr_accessor :customer_note_notify
  attr_accessor :customer_is_guest
  attr_accessor :email_sent
  attr_accessor :order_id
  attr_accessor :gift_message_id
  attr_accessor :gift_message
  attr_accessor :shipping_address
  attr_accessor :billing_address
  attr_accessor :items
  attr_accessor :payment
  attr_accessor :status_history

  def initialize(increment_id = nil, parent_id = nil, store_id = nil, created_at = nil, updated_at = nil, is_active = nil, customer_id = nil, tax_amount = nil, shipping_amount = nil, discount_amount = nil, subtotal = nil, grand_total = nil, total_paid = nil, total_refunded = nil, total_qty_ordered = nil, total_canceled = nil, total_invoiced = nil, total_online_refunded = nil, total_offline_refunded = nil, base_tax_amount = nil, base_shipping_amount = nil, base_discount_amount = nil, base_subtotal = nil, base_grand_total = nil, base_total_paid = nil, base_total_refunded = nil, base_total_qty_ordered = nil, base_total_canceled = nil, base_total_invoiced = nil, base_total_online_refunded = nil, base_total_offline_refunded = nil, billing_address_id = nil, billing_firstname = nil, billing_lastname = nil, shipping_address_id = nil, shipping_firstname = nil, shipping_lastname = nil, billing_name = nil, shipping_name = nil, store_to_base_rate = nil, store_to_order_rate = nil, base_to_global_rate = nil, base_to_order_rate = nil, weight = nil, store_name = nil, remote_ip = nil, status = nil, state = nil, applied_rule_ids = nil, global_currency_code = nil, base_currency_code = nil, store_currency_code = nil, order_currency_code = nil, shipping_method = nil, shipping_description = nil, customer_email = nil, customer_firstname = nil, customer_lastname = nil, quote_id = nil, is_virtual = nil, customer_group_id = nil, customer_note_notify = nil, customer_is_guest = nil, email_sent = nil, order_id = nil, gift_message_id = nil, gift_message = nil, shipping_address = nil, billing_address = nil, items = nil, payment = nil, status_history = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @store_id = store_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @customer_id = customer_id
    @tax_amount = tax_amount
    @shipping_amount = shipping_amount
    @discount_amount = discount_amount
    @subtotal = subtotal
    @grand_total = grand_total
    @total_paid = total_paid
    @total_refunded = total_refunded
    @total_qty_ordered = total_qty_ordered
    @total_canceled = total_canceled
    @total_invoiced = total_invoiced
    @total_online_refunded = total_online_refunded
    @total_offline_refunded = total_offline_refunded
    @base_tax_amount = base_tax_amount
    @base_shipping_amount = base_shipping_amount
    @base_discount_amount = base_discount_amount
    @base_subtotal = base_subtotal
    @base_grand_total = base_grand_total
    @base_total_paid = base_total_paid
    @base_total_refunded = base_total_refunded
    @base_total_qty_ordered = base_total_qty_ordered
    @base_total_canceled = base_total_canceled
    @base_total_invoiced = base_total_invoiced
    @base_total_online_refunded = base_total_online_refunded
    @base_total_offline_refunded = base_total_offline_refunded
    @billing_address_id = billing_address_id
    @billing_firstname = billing_firstname
    @billing_lastname = billing_lastname
    @shipping_address_id = shipping_address_id
    @shipping_firstname = shipping_firstname
    @shipping_lastname = shipping_lastname
    @billing_name = billing_name
    @shipping_name = shipping_name
    @store_to_base_rate = store_to_base_rate
    @store_to_order_rate = store_to_order_rate
    @base_to_global_rate = base_to_global_rate
    @base_to_order_rate = base_to_order_rate
    @weight = weight
    @store_name = store_name
    @remote_ip = remote_ip
    @status = status
    @state = state
    @applied_rule_ids = applied_rule_ids
    @global_currency_code = global_currency_code
    @base_currency_code = base_currency_code
    @store_currency_code = store_currency_code
    @order_currency_code = order_currency_code
    @shipping_method = shipping_method
    @shipping_description = shipping_description
    @customer_email = customer_email
    @customer_firstname = customer_firstname
    @customer_lastname = customer_lastname
    @quote_id = quote_id
    @is_virtual = is_virtual
    @customer_group_id = customer_group_id
    @customer_note_notify = customer_note_notify
    @customer_is_guest = customer_is_guest
    @email_sent = email_sent
    @order_id = order_id
    @gift_message_id = gift_message_id
    @gift_message = gift_message
    @shipping_address = shipping_address
    @billing_address = billing_address
    @items = items
    @payment = payment
    @status_history = status_history
  end
end

# {urn:Magento}salesOrderListEntity
#   increment_id - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   customer_id - SOAP::SOAPString
#   tax_amount - SOAP::SOAPString
#   shipping_amount - SOAP::SOAPString
#   discount_amount - SOAP::SOAPString
#   subtotal - SOAP::SOAPString
#   grand_total - SOAP::SOAPString
#   total_paid - SOAP::SOAPString
#   total_refunded - SOAP::SOAPString
#   total_qty_ordered - SOAP::SOAPString
#   total_canceled - SOAP::SOAPString
#   total_invoiced - SOAP::SOAPString
#   total_online_refunded - SOAP::SOAPString
#   total_offline_refunded - SOAP::SOAPString
#   base_tax_amount - SOAP::SOAPString
#   base_shipping_amount - SOAP::SOAPString
#   base_discount_amount - SOAP::SOAPString
#   base_subtotal - SOAP::SOAPString
#   base_grand_total - SOAP::SOAPString
#   base_total_paid - SOAP::SOAPString
#   base_total_refunded - SOAP::SOAPString
#   base_total_qty_ordered - SOAP::SOAPString
#   base_total_canceled - SOAP::SOAPString
#   base_total_invoiced - SOAP::SOAPString
#   base_total_online_refunded - SOAP::SOAPString
#   base_total_offline_refunded - SOAP::SOAPString
#   billing_address_id - SOAP::SOAPString
#   billing_firstname - SOAP::SOAPString
#   billing_lastname - SOAP::SOAPString
#   shipping_address_id - SOAP::SOAPString
#   shipping_firstname - SOAP::SOAPString
#   shipping_lastname - SOAP::SOAPString
#   billing_name - SOAP::SOAPString
#   shipping_name - SOAP::SOAPString
#   store_to_base_rate - SOAP::SOAPString
#   store_to_order_rate - SOAP::SOAPString
#   base_to_global_rate - SOAP::SOAPString
#   base_to_order_rate - SOAP::SOAPString
#   weight - SOAP::SOAPString
#   store_name - SOAP::SOAPString
#   remote_ip - SOAP::SOAPString
#   status - SOAP::SOAPString
#   state - SOAP::SOAPString
#   applied_rule_ids - SOAP::SOAPString
#   global_currency_code - SOAP::SOAPString
#   base_currency_code - SOAP::SOAPString
#   store_currency_code - SOAP::SOAPString
#   order_currency_code - SOAP::SOAPString
#   shipping_method - SOAP::SOAPString
#   shipping_description - SOAP::SOAPString
#   customer_email - SOAP::SOAPString
#   customer_firstname - SOAP::SOAPString
#   customer_lastname - SOAP::SOAPString
#   quote_id - SOAP::SOAPString
#   is_virtual - SOAP::SOAPString
#   customer_group_id - SOAP::SOAPString
#   customer_note_notify - SOAP::SOAPString
#   customer_is_guest - SOAP::SOAPString
#   email_sent - SOAP::SOAPString
#   order_id - SOAP::SOAPString
#   gift_message_id - SOAP::SOAPString
#   coupon_code - SOAP::SOAPString
#   protect_code - SOAP::SOAPString
#   base_discount_canceled - SOAP::SOAPString
#   base_discount_invoiced - SOAP::SOAPString
#   base_discount_refunded - SOAP::SOAPString
#   base_shipping_canceled - SOAP::SOAPString
#   base_shipping_invoiced - SOAP::SOAPString
#   base_shipping_refunded - SOAP::SOAPString
#   base_shipping_tax_amount - SOAP::SOAPString
#   base_shipping_tax_refunded - SOAP::SOAPString
#   base_subtotal_canceled - SOAP::SOAPString
#   base_subtotal_invoiced - SOAP::SOAPString
#   base_subtotal_refunded - SOAP::SOAPString
#   base_tax_canceled - SOAP::SOAPString
#   base_tax_invoiced - SOAP::SOAPString
#   base_tax_refunded - SOAP::SOAPString
#   base_total_invoiced_cost - SOAP::SOAPString
#   discount_canceled - SOAP::SOAPString
#   discount_invoiced - SOAP::SOAPString
#   discount_refunded - SOAP::SOAPString
#   shipping_canceled - SOAP::SOAPString
#   shipping_invoiced - SOAP::SOAPString
#   shipping_refunded - SOAP::SOAPString
#   shipping_tax_amount - SOAP::SOAPString
#   shipping_tax_refunded - SOAP::SOAPString
#   subtotal_canceled - SOAP::SOAPString
#   subtotal_invoiced - SOAP::SOAPString
#   subtotal_refunded - SOAP::SOAPString
#   tax_canceled - SOAP::SOAPString
#   tax_invoiced - SOAP::SOAPString
#   tax_refunded - SOAP::SOAPString
#   can_ship_partially - SOAP::SOAPString
#   can_ship_partially_item - SOAP::SOAPString
#   edit_increment - SOAP::SOAPString
#   forced_do_shipment_with_invoice - SOAP::SOAPString
#   payment_authorization_expiration - SOAP::SOAPString
#   paypal_ipn_customer_notified - SOAP::SOAPString
#   quote_address_id - SOAP::SOAPString
#   adjustment_negative - SOAP::SOAPString
#   adjustment_positive - SOAP::SOAPString
#   base_adjustment_negative - SOAP::SOAPString
#   base_adjustment_positive - SOAP::SOAPString
#   base_shipping_discount_amount - SOAP::SOAPString
#   base_subtotal_incl_tax - SOAP::SOAPString
#   base_total_due - SOAP::SOAPString
#   payment_authorization_amount - SOAP::SOAPString
#   shipping_discount_amount - SOAP::SOAPString
#   subtotal_incl_tax - SOAP::SOAPString
#   total_due - SOAP::SOAPString
#   customer_dob - SOAP::SOAPString
#   customer_middlename - SOAP::SOAPString
#   customer_prefix - SOAP::SOAPString
#   customer_suffix - SOAP::SOAPString
#   customer_taxvat - SOAP::SOAPString
#   discount_description - SOAP::SOAPString
#   ext_customer_id - SOAP::SOAPString
#   ext_order_id - SOAP::SOAPString
#   hold_before_state - SOAP::SOAPString
#   hold_before_status - SOAP::SOAPString
#   original_increment_id - SOAP::SOAPString
#   relation_child_id - SOAP::SOAPString
#   relation_child_real_id - SOAP::SOAPString
#   relation_parent_id - SOAP::SOAPString
#   relation_parent_real_id - SOAP::SOAPString
#   x_forwarded_for - SOAP::SOAPString
#   customer_note - SOAP::SOAPString
#   total_item_count - SOAP::SOAPString
#   customer_gender - SOAP::SOAPString
#   hidden_tax_amount - SOAP::SOAPString
#   base_hidden_tax_amount - SOAP::SOAPString
#   shipping_hidden_tax_amount - SOAP::SOAPString
#   base_shipping_hidden_tax_amount - SOAP::SOAPString
#   hidden_tax_invoiced - SOAP::SOAPString
#   base_hidden_tax_invoiced - SOAP::SOAPString
#   hidden_tax_refunded - SOAP::SOAPString
#   base_hidden_tax_refunded - SOAP::SOAPString
#   shipping_incl_tax - SOAP::SOAPString
#   base_shipping_incl_tax - SOAP::SOAPString
#   base_customer_balance_amount - SOAP::SOAPString
#   customer_balance_amount - SOAP::SOAPString
#   base_customer_balance_invoiced - SOAP::SOAPString
#   customer_balance_invoiced - SOAP::SOAPString
#   base_customer_balance_refunded - SOAP::SOAPString
#   customer_balance_refunded - SOAP::SOAPString
#   base_customer_balance_total_refunded - SOAP::SOAPString
#   customer_balance_total_refunded - SOAP::SOAPString
#   gift_cards - SOAP::SOAPString
#   base_gift_cards_amount - SOAP::SOAPString
#   gift_cards_amount - SOAP::SOAPString
#   base_gift_cards_invoiced - SOAP::SOAPString
#   gift_cards_invoiced - SOAP::SOAPString
#   base_gift_cards_refunded - SOAP::SOAPString
#   gift_cards_refunded - SOAP::SOAPString
#   reward_points_balance - SOAP::SOAPString
#   base_reward_currency_amount - SOAP::SOAPString
#   reward_currency_amount - SOAP::SOAPString
#   base_reward_currency_amount_invoiced - SOAP::SOAPString
#   reward_currency_amount_invoiced - SOAP::SOAPString
#   base_reward_currency_amount_refunded - SOAP::SOAPString
#   reward_currency_amount_refunded - SOAP::SOAPString
#   reward_points_balance_refunded - SOAP::SOAPString
#   reward_points_balance_to_refund - SOAP::SOAPString
#   reward_salesrule_points - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   telephone - SOAP::SOAPString
#   postcode - SOAP::SOAPString
class SalesOrderListEntity
  attr_accessor :increment_id
  attr_accessor :store_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :customer_id
  attr_accessor :tax_amount
  attr_accessor :shipping_amount
  attr_accessor :discount_amount
  attr_accessor :subtotal
  attr_accessor :grand_total
  attr_accessor :total_paid
  attr_accessor :total_refunded
  attr_accessor :total_qty_ordered
  attr_accessor :total_canceled
  attr_accessor :total_invoiced
  attr_accessor :total_online_refunded
  attr_accessor :total_offline_refunded
  attr_accessor :base_tax_amount
  attr_accessor :base_shipping_amount
  attr_accessor :base_discount_amount
  attr_accessor :base_subtotal
  attr_accessor :base_grand_total
  attr_accessor :base_total_paid
  attr_accessor :base_total_refunded
  attr_accessor :base_total_qty_ordered
  attr_accessor :base_total_canceled
  attr_accessor :base_total_invoiced
  attr_accessor :base_total_online_refunded
  attr_accessor :base_total_offline_refunded
  attr_accessor :billing_address_id
  attr_accessor :billing_firstname
  attr_accessor :billing_lastname
  attr_accessor :shipping_address_id
  attr_accessor :shipping_firstname
  attr_accessor :shipping_lastname
  attr_accessor :billing_name
  attr_accessor :shipping_name
  attr_accessor :store_to_base_rate
  attr_accessor :store_to_order_rate
  attr_accessor :base_to_global_rate
  attr_accessor :base_to_order_rate
  attr_accessor :weight
  attr_accessor :store_name
  attr_accessor :remote_ip
  attr_accessor :status
  attr_accessor :state
  attr_accessor :applied_rule_ids
  attr_accessor :global_currency_code
  attr_accessor :base_currency_code
  attr_accessor :store_currency_code
  attr_accessor :order_currency_code
  attr_accessor :shipping_method
  attr_accessor :shipping_description
  attr_accessor :customer_email
  attr_accessor :customer_firstname
  attr_accessor :customer_lastname
  attr_accessor :quote_id
  attr_accessor :is_virtual
  attr_accessor :customer_group_id
  attr_accessor :customer_note_notify
  attr_accessor :customer_is_guest
  attr_accessor :email_sent
  attr_accessor :order_id
  attr_accessor :gift_message_id
  attr_accessor :coupon_code
  attr_accessor :protect_code
  attr_accessor :base_discount_canceled
  attr_accessor :base_discount_invoiced
  attr_accessor :base_discount_refunded
  attr_accessor :base_shipping_canceled
  attr_accessor :base_shipping_invoiced
  attr_accessor :base_shipping_refunded
  attr_accessor :base_shipping_tax_amount
  attr_accessor :base_shipping_tax_refunded
  attr_accessor :base_subtotal_canceled
  attr_accessor :base_subtotal_invoiced
  attr_accessor :base_subtotal_refunded
  attr_accessor :base_tax_canceled
  attr_accessor :base_tax_invoiced
  attr_accessor :base_tax_refunded
  attr_accessor :base_total_invoiced_cost
  attr_accessor :discount_canceled
  attr_accessor :discount_invoiced
  attr_accessor :discount_refunded
  attr_accessor :shipping_canceled
  attr_accessor :shipping_invoiced
  attr_accessor :shipping_refunded
  attr_accessor :shipping_tax_amount
  attr_accessor :shipping_tax_refunded
  attr_accessor :subtotal_canceled
  attr_accessor :subtotal_invoiced
  attr_accessor :subtotal_refunded
  attr_accessor :tax_canceled
  attr_accessor :tax_invoiced
  attr_accessor :tax_refunded
  attr_accessor :can_ship_partially
  attr_accessor :can_ship_partially_item
  attr_accessor :edit_increment
  attr_accessor :forced_do_shipment_with_invoice
  attr_accessor :payment_authorization_expiration
  attr_accessor :paypal_ipn_customer_notified
  attr_accessor :quote_address_id
  attr_accessor :adjustment_negative
  attr_accessor :adjustment_positive
  attr_accessor :base_adjustment_negative
  attr_accessor :base_adjustment_positive
  attr_accessor :base_shipping_discount_amount
  attr_accessor :base_subtotal_incl_tax
  attr_accessor :base_total_due
  attr_accessor :payment_authorization_amount
  attr_accessor :shipping_discount_amount
  attr_accessor :subtotal_incl_tax
  attr_accessor :total_due
  attr_accessor :customer_dob
  attr_accessor :customer_middlename
  attr_accessor :customer_prefix
  attr_accessor :customer_suffix
  attr_accessor :customer_taxvat
  attr_accessor :discount_description
  attr_accessor :ext_customer_id
  attr_accessor :ext_order_id
  attr_accessor :hold_before_state
  attr_accessor :hold_before_status
  attr_accessor :original_increment_id
  attr_accessor :relation_child_id
  attr_accessor :relation_child_real_id
  attr_accessor :relation_parent_id
  attr_accessor :relation_parent_real_id
  attr_accessor :x_forwarded_for
  attr_accessor :customer_note
  attr_accessor :total_item_count
  attr_accessor :customer_gender
  attr_accessor :hidden_tax_amount
  attr_accessor :base_hidden_tax_amount
  attr_accessor :shipping_hidden_tax_amount
  attr_accessor :base_shipping_hidden_tax_amount
  attr_accessor :hidden_tax_invoiced
  attr_accessor :base_hidden_tax_invoiced
  attr_accessor :hidden_tax_refunded
  attr_accessor :base_hidden_tax_refunded
  attr_accessor :shipping_incl_tax
  attr_accessor :base_shipping_incl_tax
  attr_accessor :base_customer_balance_amount
  attr_accessor :customer_balance_amount
  attr_accessor :base_customer_balance_invoiced
  attr_accessor :customer_balance_invoiced
  attr_accessor :base_customer_balance_refunded
  attr_accessor :customer_balance_refunded
  attr_accessor :base_customer_balance_total_refunded
  attr_accessor :customer_balance_total_refunded
  attr_accessor :gift_cards
  attr_accessor :base_gift_cards_amount
  attr_accessor :gift_cards_amount
  attr_accessor :base_gift_cards_invoiced
  attr_accessor :gift_cards_invoiced
  attr_accessor :base_gift_cards_refunded
  attr_accessor :gift_cards_refunded
  attr_accessor :reward_points_balance
  attr_accessor :base_reward_currency_amount
  attr_accessor :reward_currency_amount
  attr_accessor :base_reward_currency_amount_invoiced
  attr_accessor :reward_currency_amount_invoiced
  attr_accessor :base_reward_currency_amount_refunded
  attr_accessor :reward_currency_amount_refunded
  attr_accessor :reward_points_balance_refunded
  attr_accessor :reward_points_balance_to_refund
  attr_accessor :reward_salesrule_points
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :telephone
  attr_accessor :postcode

  def initialize(increment_id = nil, store_id = nil, created_at = nil, updated_at = nil, customer_id = nil, tax_amount = nil, shipping_amount = nil, discount_amount = nil, subtotal = nil, grand_total = nil, total_paid = nil, total_refunded = nil, total_qty_ordered = nil, total_canceled = nil, total_invoiced = nil, total_online_refunded = nil, total_offline_refunded = nil, base_tax_amount = nil, base_shipping_amount = nil, base_discount_amount = nil, base_subtotal = nil, base_grand_total = nil, base_total_paid = nil, base_total_refunded = nil, base_total_qty_ordered = nil, base_total_canceled = nil, base_total_invoiced = nil, base_total_online_refunded = nil, base_total_offline_refunded = nil, billing_address_id = nil, billing_firstname = nil, billing_lastname = nil, shipping_address_id = nil, shipping_firstname = nil, shipping_lastname = nil, billing_name = nil, shipping_name = nil, store_to_base_rate = nil, store_to_order_rate = nil, base_to_global_rate = nil, base_to_order_rate = nil, weight = nil, store_name = nil, remote_ip = nil, status = nil, state = nil, applied_rule_ids = nil, global_currency_code = nil, base_currency_code = nil, store_currency_code = nil, order_currency_code = nil, shipping_method = nil, shipping_description = nil, customer_email = nil, customer_firstname = nil, customer_lastname = nil, quote_id = nil, is_virtual = nil, customer_group_id = nil, customer_note_notify = nil, customer_is_guest = nil, email_sent = nil, order_id = nil, gift_message_id = nil, coupon_code = nil, protect_code = nil, base_discount_canceled = nil, base_discount_invoiced = nil, base_discount_refunded = nil, base_shipping_canceled = nil, base_shipping_invoiced = nil, base_shipping_refunded = nil, base_shipping_tax_amount = nil, base_shipping_tax_refunded = nil, base_subtotal_canceled = nil, base_subtotal_invoiced = nil, base_subtotal_refunded = nil, base_tax_canceled = nil, base_tax_invoiced = nil, base_tax_refunded = nil, base_total_invoiced_cost = nil, discount_canceled = nil, discount_invoiced = nil, discount_refunded = nil, shipping_canceled = nil, shipping_invoiced = nil, shipping_refunded = nil, shipping_tax_amount = nil, shipping_tax_refunded = nil, subtotal_canceled = nil, subtotal_invoiced = nil, subtotal_refunded = nil, tax_canceled = nil, tax_invoiced = nil, tax_refunded = nil, can_ship_partially = nil, can_ship_partially_item = nil, edit_increment = nil, forced_do_shipment_with_invoice = nil, payment_authorization_expiration = nil, paypal_ipn_customer_notified = nil, quote_address_id = nil, adjustment_negative = nil, adjustment_positive = nil, base_adjustment_negative = nil, base_adjustment_positive = nil, base_shipping_discount_amount = nil, base_subtotal_incl_tax = nil, base_total_due = nil, payment_authorization_amount = nil, shipping_discount_amount = nil, subtotal_incl_tax = nil, total_due = nil, customer_dob = nil, customer_middlename = nil, customer_prefix = nil, customer_suffix = nil, customer_taxvat = nil, discount_description = nil, ext_customer_id = nil, ext_order_id = nil, hold_before_state = nil, hold_before_status = nil, original_increment_id = nil, relation_child_id = nil, relation_child_real_id = nil, relation_parent_id = nil, relation_parent_real_id = nil, x_forwarded_for = nil, customer_note = nil, total_item_count = nil, customer_gender = nil, hidden_tax_amount = nil, base_hidden_tax_amount = nil, shipping_hidden_tax_amount = nil, base_shipping_hidden_tax_amount = nil, hidden_tax_invoiced = nil, base_hidden_tax_invoiced = nil, hidden_tax_refunded = nil, base_hidden_tax_refunded = nil, shipping_incl_tax = nil, base_shipping_incl_tax = nil, base_customer_balance_amount = nil, customer_balance_amount = nil, base_customer_balance_invoiced = nil, customer_balance_invoiced = nil, base_customer_balance_refunded = nil, customer_balance_refunded = nil, base_customer_balance_total_refunded = nil, customer_balance_total_refunded = nil, gift_cards = nil, base_gift_cards_amount = nil, gift_cards_amount = nil, base_gift_cards_invoiced = nil, gift_cards_invoiced = nil, base_gift_cards_refunded = nil, gift_cards_refunded = nil, reward_points_balance = nil, base_reward_currency_amount = nil, reward_currency_amount = nil, base_reward_currency_amount_invoiced = nil, reward_currency_amount_invoiced = nil, base_reward_currency_amount_refunded = nil, reward_currency_amount_refunded = nil, reward_points_balance_refunded = nil, reward_points_balance_to_refund = nil, reward_salesrule_points = nil, firstname = nil, lastname = nil, telephone = nil, postcode = nil)
    @increment_id = increment_id
    @store_id = store_id
    @created_at = created_at
    @updated_at = updated_at
    @customer_id = customer_id
    @tax_amount = tax_amount
    @shipping_amount = shipping_amount
    @discount_amount = discount_amount
    @subtotal = subtotal
    @grand_total = grand_total
    @total_paid = total_paid
    @total_refunded = total_refunded
    @total_qty_ordered = total_qty_ordered
    @total_canceled = total_canceled
    @total_invoiced = total_invoiced
    @total_online_refunded = total_online_refunded
    @total_offline_refunded = total_offline_refunded
    @base_tax_amount = base_tax_amount
    @base_shipping_amount = base_shipping_amount
    @base_discount_amount = base_discount_amount
    @base_subtotal = base_subtotal
    @base_grand_total = base_grand_total
    @base_total_paid = base_total_paid
    @base_total_refunded = base_total_refunded
    @base_total_qty_ordered = base_total_qty_ordered
    @base_total_canceled = base_total_canceled
    @base_total_invoiced = base_total_invoiced
    @base_total_online_refunded = base_total_online_refunded
    @base_total_offline_refunded = base_total_offline_refunded
    @billing_address_id = billing_address_id
    @billing_firstname = billing_firstname
    @billing_lastname = billing_lastname
    @shipping_address_id = shipping_address_id
    @shipping_firstname = shipping_firstname
    @shipping_lastname = shipping_lastname
    @billing_name = billing_name
    @shipping_name = shipping_name
    @store_to_base_rate = store_to_base_rate
    @store_to_order_rate = store_to_order_rate
    @base_to_global_rate = base_to_global_rate
    @base_to_order_rate = base_to_order_rate
    @weight = weight
    @store_name = store_name
    @remote_ip = remote_ip
    @status = status
    @state = state
    @applied_rule_ids = applied_rule_ids
    @global_currency_code = global_currency_code
    @base_currency_code = base_currency_code
    @store_currency_code = store_currency_code
    @order_currency_code = order_currency_code
    @shipping_method = shipping_method
    @shipping_description = shipping_description
    @customer_email = customer_email
    @customer_firstname = customer_firstname
    @customer_lastname = customer_lastname
    @quote_id = quote_id
    @is_virtual = is_virtual
    @customer_group_id = customer_group_id
    @customer_note_notify = customer_note_notify
    @customer_is_guest = customer_is_guest
    @email_sent = email_sent
    @order_id = order_id
    @gift_message_id = gift_message_id
    @coupon_code = coupon_code
    @protect_code = protect_code
    @base_discount_canceled = base_discount_canceled
    @base_discount_invoiced = base_discount_invoiced
    @base_discount_refunded = base_discount_refunded
    @base_shipping_canceled = base_shipping_canceled
    @base_shipping_invoiced = base_shipping_invoiced
    @base_shipping_refunded = base_shipping_refunded
    @base_shipping_tax_amount = base_shipping_tax_amount
    @base_shipping_tax_refunded = base_shipping_tax_refunded
    @base_subtotal_canceled = base_subtotal_canceled
    @base_subtotal_invoiced = base_subtotal_invoiced
    @base_subtotal_refunded = base_subtotal_refunded
    @base_tax_canceled = base_tax_canceled
    @base_tax_invoiced = base_tax_invoiced
    @base_tax_refunded = base_tax_refunded
    @base_total_invoiced_cost = base_total_invoiced_cost
    @discount_canceled = discount_canceled
    @discount_invoiced = discount_invoiced
    @discount_refunded = discount_refunded
    @shipping_canceled = shipping_canceled
    @shipping_invoiced = shipping_invoiced
    @shipping_refunded = shipping_refunded
    @shipping_tax_amount = shipping_tax_amount
    @shipping_tax_refunded = shipping_tax_refunded
    @subtotal_canceled = subtotal_canceled
    @subtotal_invoiced = subtotal_invoiced
    @subtotal_refunded = subtotal_refunded
    @tax_canceled = tax_canceled
    @tax_invoiced = tax_invoiced
    @tax_refunded = tax_refunded
    @can_ship_partially = can_ship_partially
    @can_ship_partially_item = can_ship_partially_item
    @edit_increment = edit_increment
    @forced_do_shipment_with_invoice = forced_do_shipment_with_invoice
    @payment_authorization_expiration = payment_authorization_expiration
    @paypal_ipn_customer_notified = paypal_ipn_customer_notified
    @quote_address_id = quote_address_id
    @adjustment_negative = adjustment_negative
    @adjustment_positive = adjustment_positive
    @base_adjustment_negative = base_adjustment_negative
    @base_adjustment_positive = base_adjustment_positive
    @base_shipping_discount_amount = base_shipping_discount_amount
    @base_subtotal_incl_tax = base_subtotal_incl_tax
    @base_total_due = base_total_due
    @payment_authorization_amount = payment_authorization_amount
    @shipping_discount_amount = shipping_discount_amount
    @subtotal_incl_tax = subtotal_incl_tax
    @total_due = total_due
    @customer_dob = customer_dob
    @customer_middlename = customer_middlename
    @customer_prefix = customer_prefix
    @customer_suffix = customer_suffix
    @customer_taxvat = customer_taxvat
    @discount_description = discount_description
    @ext_customer_id = ext_customer_id
    @ext_order_id = ext_order_id
    @hold_before_state = hold_before_state
    @hold_before_status = hold_before_status
    @original_increment_id = original_increment_id
    @relation_child_id = relation_child_id
    @relation_child_real_id = relation_child_real_id
    @relation_parent_id = relation_parent_id
    @relation_parent_real_id = relation_parent_real_id
    @x_forwarded_for = x_forwarded_for
    @customer_note = customer_note
    @total_item_count = total_item_count
    @customer_gender = customer_gender
    @hidden_tax_amount = hidden_tax_amount
    @base_hidden_tax_amount = base_hidden_tax_amount
    @shipping_hidden_tax_amount = shipping_hidden_tax_amount
    @base_shipping_hidden_tax_amount = base_shipping_hidden_tax_amount
    @hidden_tax_invoiced = hidden_tax_invoiced
    @base_hidden_tax_invoiced = base_hidden_tax_invoiced
    @hidden_tax_refunded = hidden_tax_refunded
    @base_hidden_tax_refunded = base_hidden_tax_refunded
    @shipping_incl_tax = shipping_incl_tax
    @base_shipping_incl_tax = base_shipping_incl_tax
    @base_customer_balance_amount = base_customer_balance_amount
    @customer_balance_amount = customer_balance_amount
    @base_customer_balance_invoiced = base_customer_balance_invoiced
    @customer_balance_invoiced = customer_balance_invoiced
    @base_customer_balance_refunded = base_customer_balance_refunded
    @customer_balance_refunded = customer_balance_refunded
    @base_customer_balance_total_refunded = base_customer_balance_total_refunded
    @customer_balance_total_refunded = customer_balance_total_refunded
    @gift_cards = gift_cards
    @base_gift_cards_amount = base_gift_cards_amount
    @gift_cards_amount = gift_cards_amount
    @base_gift_cards_invoiced = base_gift_cards_invoiced
    @gift_cards_invoiced = gift_cards_invoiced
    @base_gift_cards_refunded = base_gift_cards_refunded
    @gift_cards_refunded = gift_cards_refunded
    @reward_points_balance = reward_points_balance
    @base_reward_currency_amount = base_reward_currency_amount
    @reward_currency_amount = reward_currency_amount
    @base_reward_currency_amount_invoiced = base_reward_currency_amount_invoiced
    @reward_currency_amount_invoiced = reward_currency_amount_invoiced
    @base_reward_currency_amount_refunded = base_reward_currency_amount_refunded
    @reward_currency_amount_refunded = reward_currency_amount_refunded
    @reward_points_balance_refunded = reward_points_balance_refunded
    @reward_points_balance_to_refund = reward_points_balance_to_refund
    @reward_salesrule_points = reward_salesrule_points
    @firstname = firstname
    @lastname = lastname
    @telephone = telephone
    @postcode = postcode
  end
end

# {urn:Magento}salesOrderListEntityArray
class SalesOrderListEntityArray < ::Array
end

# {urn:Magento}salesOrderAddressEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   address_type - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   company - SOAP::SOAPString
#   street - SOAP::SOAPString
#   city - SOAP::SOAPString
#   region - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   country_id - SOAP::SOAPString
#   telephone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   region_id - SOAP::SOAPString
#   address_id - SOAP::SOAPString
class SalesOrderAddressEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :address_type
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :company
  attr_accessor :street
  attr_accessor :city
  attr_accessor :region
  attr_accessor :postcode
  attr_accessor :country_id
  attr_accessor :telephone
  attr_accessor :fax
  attr_accessor :region_id
  attr_accessor :address_id

  def initialize(increment_id = nil, parent_id = nil, created_at = nil, updated_at = nil, is_active = nil, address_type = nil, firstname = nil, lastname = nil, company = nil, street = nil, city = nil, region = nil, postcode = nil, country_id = nil, telephone = nil, fax = nil, region_id = nil, address_id = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @address_type = address_type
    @firstname = firstname
    @lastname = lastname
    @company = company
    @street = street
    @city = city
    @region = region
    @postcode = postcode
    @country_id = country_id
    @telephone = telephone
    @fax = fax
    @region_id = region_id
    @address_id = address_id
  end
end

# {urn:Magento}salesOrderItemEntity
#   item_id - SOAP::SOAPString
#   order_id - SOAP::SOAPString
#   quote_item_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   product_id - SOAP::SOAPString
#   product_type - SOAP::SOAPString
#   product_options - SOAP::SOAPString
#   weight - SOAP::SOAPString
#   is_virtual - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   name - SOAP::SOAPString
#   applied_rule_ids - SOAP::SOAPString
#   free_shipping - SOAP::SOAPString
#   is_qty_decimal - SOAP::SOAPString
#   no_discount - SOAP::SOAPString
#   qty_canceled - SOAP::SOAPString
#   qty_invoiced - SOAP::SOAPString
#   qty_ordered - SOAP::SOAPString
#   qty_refunded - SOAP::SOAPString
#   qty_shipped - SOAP::SOAPString
#   cost - SOAP::SOAPString
#   price - SOAP::SOAPString
#   base_price - SOAP::SOAPString
#   original_price - SOAP::SOAPString
#   base_original_price - SOAP::SOAPString
#   tax_percent - SOAP::SOAPString
#   tax_amount - SOAP::SOAPString
#   base_tax_amount - SOAP::SOAPString
#   tax_invoiced - SOAP::SOAPString
#   base_tax_invoiced - SOAP::SOAPString
#   discount_percent - SOAP::SOAPString
#   discount_amount - SOAP::SOAPString
#   base_discount_amount - SOAP::SOAPString
#   discount_invoiced - SOAP::SOAPString
#   base_discount_invoiced - SOAP::SOAPString
#   amount_refunded - SOAP::SOAPString
#   base_amount_refunded - SOAP::SOAPString
#   row_total - SOAP::SOAPString
#   base_row_total - SOAP::SOAPString
#   row_invoiced - SOAP::SOAPString
#   base_row_invoiced - SOAP::SOAPString
#   row_weight - SOAP::SOAPString
#   gift_message_id - SOAP::SOAPString
#   gift_message - SOAP::SOAPString
#   gift_message_available - SOAP::SOAPString
#   base_tax_before_discount - SOAP::SOAPString
#   tax_before_discount - SOAP::SOAPString
#   weee_tax_applied - SOAP::SOAPString
#   weee_tax_applied_amount - SOAP::SOAPString
#   weee_tax_applied_row_amount - SOAP::SOAPString
#   base_weee_tax_applied_amount - SOAP::SOAPString
#   base_weee_tax_applied_row_amount - SOAP::SOAPString
#   weee_tax_disposition - SOAP::SOAPString
#   weee_tax_row_disposition - SOAP::SOAPString
#   base_weee_tax_disposition - SOAP::SOAPString
#   base_weee_tax_row_disposition - SOAP::SOAPString
class SalesOrderItemEntity
  attr_accessor :item_id
  attr_accessor :order_id
  attr_accessor :quote_item_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :product_id
  attr_accessor :product_type
  attr_accessor :product_options
  attr_accessor :weight
  attr_accessor :is_virtual
  attr_accessor :sku
  attr_accessor :name
  attr_accessor :applied_rule_ids
  attr_accessor :free_shipping
  attr_accessor :is_qty_decimal
  attr_accessor :no_discount
  attr_accessor :qty_canceled
  attr_accessor :qty_invoiced
  attr_accessor :qty_ordered
  attr_accessor :qty_refunded
  attr_accessor :qty_shipped
  attr_accessor :cost
  attr_accessor :price
  attr_accessor :base_price
  attr_accessor :original_price
  attr_accessor :base_original_price
  attr_accessor :tax_percent
  attr_accessor :tax_amount
  attr_accessor :base_tax_amount
  attr_accessor :tax_invoiced
  attr_accessor :base_tax_invoiced
  attr_accessor :discount_percent
  attr_accessor :discount_amount
  attr_accessor :base_discount_amount
  attr_accessor :discount_invoiced
  attr_accessor :base_discount_invoiced
  attr_accessor :amount_refunded
  attr_accessor :base_amount_refunded
  attr_accessor :row_total
  attr_accessor :base_row_total
  attr_accessor :row_invoiced
  attr_accessor :base_row_invoiced
  attr_accessor :row_weight
  attr_accessor :gift_message_id
  attr_accessor :gift_message
  attr_accessor :gift_message_available
  attr_accessor :base_tax_before_discount
  attr_accessor :tax_before_discount
  attr_accessor :weee_tax_applied
  attr_accessor :weee_tax_applied_amount
  attr_accessor :weee_tax_applied_row_amount
  attr_accessor :base_weee_tax_applied_amount
  attr_accessor :base_weee_tax_applied_row_amount
  attr_accessor :weee_tax_disposition
  attr_accessor :weee_tax_row_disposition
  attr_accessor :base_weee_tax_disposition
  attr_accessor :base_weee_tax_row_disposition

  def initialize(item_id = nil, order_id = nil, quote_item_id = nil, created_at = nil, updated_at = nil, product_id = nil, product_type = nil, product_options = nil, weight = nil, is_virtual = nil, sku = nil, name = nil, applied_rule_ids = nil, free_shipping = nil, is_qty_decimal = nil, no_discount = nil, qty_canceled = nil, qty_invoiced = nil, qty_ordered = nil, qty_refunded = nil, qty_shipped = nil, cost = nil, price = nil, base_price = nil, original_price = nil, base_original_price = nil, tax_percent = nil, tax_amount = nil, base_tax_amount = nil, tax_invoiced = nil, base_tax_invoiced = nil, discount_percent = nil, discount_amount = nil, base_discount_amount = nil, discount_invoiced = nil, base_discount_invoiced = nil, amount_refunded = nil, base_amount_refunded = nil, row_total = nil, base_row_total = nil, row_invoiced = nil, base_row_invoiced = nil, row_weight = nil, gift_message_id = nil, gift_message = nil, gift_message_available = nil, base_tax_before_discount = nil, tax_before_discount = nil, weee_tax_applied = nil, weee_tax_applied_amount = nil, weee_tax_applied_row_amount = nil, base_weee_tax_applied_amount = nil, base_weee_tax_applied_row_amount = nil, weee_tax_disposition = nil, weee_tax_row_disposition = nil, base_weee_tax_disposition = nil, base_weee_tax_row_disposition = nil)
    @item_id = item_id
    @order_id = order_id
    @quote_item_id = quote_item_id
    @created_at = created_at
    @updated_at = updated_at
    @product_id = product_id
    @product_type = product_type
    @product_options = product_options
    @weight = weight
    @is_virtual = is_virtual
    @sku = sku
    @name = name
    @applied_rule_ids = applied_rule_ids
    @free_shipping = free_shipping
    @is_qty_decimal = is_qty_decimal
    @no_discount = no_discount
    @qty_canceled = qty_canceled
    @qty_invoiced = qty_invoiced
    @qty_ordered = qty_ordered
    @qty_refunded = qty_refunded
    @qty_shipped = qty_shipped
    @cost = cost
    @price = price
    @base_price = base_price
    @original_price = original_price
    @base_original_price = base_original_price
    @tax_percent = tax_percent
    @tax_amount = tax_amount
    @base_tax_amount = base_tax_amount
    @tax_invoiced = tax_invoiced
    @base_tax_invoiced = base_tax_invoiced
    @discount_percent = discount_percent
    @discount_amount = discount_amount
    @base_discount_amount = base_discount_amount
    @discount_invoiced = discount_invoiced
    @base_discount_invoiced = base_discount_invoiced
    @amount_refunded = amount_refunded
    @base_amount_refunded = base_amount_refunded
    @row_total = row_total
    @base_row_total = base_row_total
    @row_invoiced = row_invoiced
    @base_row_invoiced = base_row_invoiced
    @row_weight = row_weight
    @gift_message_id = gift_message_id
    @gift_message = gift_message
    @gift_message_available = gift_message_available
    @base_tax_before_discount = base_tax_before_discount
    @tax_before_discount = tax_before_discount
    @weee_tax_applied = weee_tax_applied
    @weee_tax_applied_amount = weee_tax_applied_amount
    @weee_tax_applied_row_amount = weee_tax_applied_row_amount
    @base_weee_tax_applied_amount = base_weee_tax_applied_amount
    @base_weee_tax_applied_row_amount = base_weee_tax_applied_row_amount
    @weee_tax_disposition = weee_tax_disposition
    @weee_tax_row_disposition = weee_tax_row_disposition
    @base_weee_tax_disposition = base_weee_tax_disposition
    @base_weee_tax_row_disposition = base_weee_tax_row_disposition
  end
end

# {urn:Magento}salesOrderItemEntityArray
class SalesOrderItemEntityArray < ::Array
end

# {urn:Magento}orderItemIdQty
#   order_item_id - SOAP::SOAPInt
#   qty - SOAP::SOAPDouble
class OrderItemIdQty
  attr_accessor :order_item_id
  attr_accessor :qty

  def initialize(order_item_id = nil, qty = nil)
    @order_item_id = order_item_id
    @qty = qty
  end
end

# {urn:Magento}orderItemIdQtyArray
class OrderItemIdQtyArray < ::Array
end

# {urn:Magento}salesOrderPaymentEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   amount_ordered - SOAP::SOAPString
#   shipping_amount - SOAP::SOAPString
#   base_amount_ordered - SOAP::SOAPString
#   base_shipping_amount - SOAP::SOAPString
#   method - SOAP::SOAPString
#   po_number - SOAP::SOAPString
#   cc_type - SOAP::SOAPString
#   cc_number_enc - SOAP::SOAPString
#   cc_last4 - SOAP::SOAPString
#   cc_owner - SOAP::SOAPString
#   cc_exp_month - SOAP::SOAPString
#   cc_exp_year - SOAP::SOAPString
#   cc_ss_start_month - SOAP::SOAPString
#   cc_ss_start_year - SOAP::SOAPString
#   payment_id - SOAP::SOAPString
class SalesOrderPaymentEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :amount_ordered
  attr_accessor :shipping_amount
  attr_accessor :base_amount_ordered
  attr_accessor :base_shipping_amount
  attr_accessor :method
  attr_accessor :po_number
  attr_accessor :cc_type
  attr_accessor :cc_number_enc
  attr_accessor :cc_last4
  attr_accessor :cc_owner
  attr_accessor :cc_exp_month
  attr_accessor :cc_exp_year
  attr_accessor :cc_ss_start_month
  attr_accessor :cc_ss_start_year
  attr_accessor :payment_id

  def initialize(increment_id = nil, parent_id = nil, created_at = nil, updated_at = nil, is_active = nil, amount_ordered = nil, shipping_amount = nil, base_amount_ordered = nil, base_shipping_amount = nil, method = nil, po_number = nil, cc_type = nil, cc_number_enc = nil, cc_last4 = nil, cc_owner = nil, cc_exp_month = nil, cc_exp_year = nil, cc_ss_start_month = nil, cc_ss_start_year = nil, payment_id = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @amount_ordered = amount_ordered
    @shipping_amount = shipping_amount
    @base_amount_ordered = base_amount_ordered
    @base_shipping_amount = base_shipping_amount
    @method = method
    @po_number = po_number
    @cc_type = cc_type
    @cc_number_enc = cc_number_enc
    @cc_last4 = cc_last4
    @cc_owner = cc_owner
    @cc_exp_month = cc_exp_month
    @cc_exp_year = cc_exp_year
    @cc_ss_start_month = cc_ss_start_month
    @cc_ss_start_year = cc_ss_start_year
    @payment_id = payment_id
  end
end

# {urn:Magento}salesOrderStatusHistoryEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   is_customer_notified - SOAP::SOAPString
#   status - SOAP::SOAPString
#   comment - SOAP::SOAPString
class SalesOrderStatusHistoryEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :is_customer_notified
  attr_accessor :status
  attr_accessor :comment

  def initialize(increment_id = nil, parent_id = nil, created_at = nil, updated_at = nil, is_active = nil, is_customer_notified = nil, status = nil, comment = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @is_customer_notified = is_customer_notified
    @status = status
    @comment = comment
  end
end

# {urn:Magento}salesOrderStatusHistoryEntityArray
class SalesOrderStatusHistoryEntityArray < ::Array
end

# {urn:Magento}salesOrderShipmentEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   shipping_address_id - SOAP::SOAPString
#   shipping_firstname - SOAP::SOAPString
#   shipping_lastname - SOAP::SOAPString
#   order_id - SOAP::SOAPString
#   order_increment_id - SOAP::SOAPString
#   order_created_at - SOAP::SOAPString
#   total_qty - SOAP::SOAPString
#   shipment_id - SOAP::SOAPString
#   items - SalesOrderShipmentItemEntityArray
#   tracks - SalesOrderShipmentTrackEntityArray
#   comments - SalesOrderShipmentCommentEntityArray
class SalesOrderShipmentEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :store_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :shipping_address_id
  attr_accessor :shipping_firstname
  attr_accessor :shipping_lastname
  attr_accessor :order_id
  attr_accessor :order_increment_id
  attr_accessor :order_created_at
  attr_accessor :total_qty
  attr_accessor :shipment_id
  attr_accessor :items
  attr_accessor :tracks
  attr_accessor :comments

  def initialize(increment_id = nil, parent_id = nil, store_id = nil, created_at = nil, updated_at = nil, is_active = nil, shipping_address_id = nil, shipping_firstname = nil, shipping_lastname = nil, order_id = nil, order_increment_id = nil, order_created_at = nil, total_qty = nil, shipment_id = nil, items = nil, tracks = nil, comments = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @store_id = store_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @shipping_address_id = shipping_address_id
    @shipping_firstname = shipping_firstname
    @shipping_lastname = shipping_lastname
    @order_id = order_id
    @order_increment_id = order_increment_id
    @order_created_at = order_created_at
    @total_qty = total_qty
    @shipment_id = shipment_id
    @items = items
    @tracks = tracks
    @comments = comments
  end
end

# {urn:Magento}salesOrderShipmentEntityArray
class SalesOrderShipmentEntityArray < ::Array
end

# {urn:Magento}salesOrderShipmentCommentEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   is_customer_notified - SOAP::SOAPString
#   comment_id - SOAP::SOAPString
class SalesOrderShipmentCommentEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :comment
  attr_accessor :is_customer_notified
  attr_accessor :comment_id

  def initialize(increment_id = nil, parent_id = nil, created_at = nil, updated_at = nil, is_active = nil, comment = nil, is_customer_notified = nil, comment_id = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @comment = comment
    @is_customer_notified = is_customer_notified
    @comment_id = comment_id
  end
end

# {urn:Magento}salesOrderShipmentCommentEntityArray
class SalesOrderShipmentCommentEntityArray < ::Array
end

# {urn:Magento}salesOrderShipmentTrackEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   carrier_code - SOAP::SOAPString
#   title - SOAP::SOAPString
#   number - SOAP::SOAPString
#   order_id - SOAP::SOAPString
#   track_id - SOAP::SOAPString
class SalesOrderShipmentTrackEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :carrier_code
  attr_accessor :title
  attr_accessor :number
  attr_accessor :order_id
  attr_accessor :track_id

  def initialize(increment_id = nil, parent_id = nil, created_at = nil, updated_at = nil, is_active = nil, carrier_code = nil, title = nil, number = nil, order_id = nil, track_id = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @carrier_code = carrier_code
    @title = title
    @number = number
    @order_id = order_id
    @track_id = track_id
  end
end

# {urn:Magento}salesOrderShipmentTrackEntityArray
class SalesOrderShipmentTrackEntityArray < ::Array
end

# {urn:Magento}salesOrderShipmentItemEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   name - SOAP::SOAPString
#   order_item_id - SOAP::SOAPString
#   product_id - SOAP::SOAPString
#   weight - SOAP::SOAPString
#   price - SOAP::SOAPString
#   qty - SOAP::SOAPString
#   item_id - SOAP::SOAPString
class SalesOrderShipmentItemEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :sku
  attr_accessor :name
  attr_accessor :order_item_id
  attr_accessor :product_id
  attr_accessor :weight
  attr_accessor :price
  attr_accessor :qty
  attr_accessor :item_id

  def initialize(increment_id = nil, parent_id = nil, created_at = nil, updated_at = nil, is_active = nil, sku = nil, name = nil, order_item_id = nil, product_id = nil, weight = nil, price = nil, qty = nil, item_id = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @sku = sku
    @name = name
    @order_item_id = order_item_id
    @product_id = product_id
    @weight = weight
    @price = price
    @qty = qty
    @item_id = item_id
  end
end

# {urn:Magento}salesOrderShipmentItemEntityArray
class SalesOrderShipmentItemEntityArray < ::Array
end

# {urn:Magento}salesOrderInvoiceEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   global_currency_code - SOAP::SOAPString
#   base_currency_code - SOAP::SOAPString
#   store_currency_code - SOAP::SOAPString
#   order_currency_code - SOAP::SOAPString
#   store_to_base_rate - SOAP::SOAPString
#   store_to_order_rate - SOAP::SOAPString
#   base_to_global_rate - SOAP::SOAPString
#   base_to_order_rate - SOAP::SOAPString
#   subtotal - SOAP::SOAPString
#   base_subtotal - SOAP::SOAPString
#   base_grand_total - SOAP::SOAPString
#   discount_amount - SOAP::SOAPString
#   base_discount_amount - SOAP::SOAPString
#   shipping_amount - SOAP::SOAPString
#   base_shipping_amount - SOAP::SOAPString
#   tax_amount - SOAP::SOAPString
#   base_tax_amount - SOAP::SOAPString
#   billing_address_id - SOAP::SOAPString
#   billing_firstname - SOAP::SOAPString
#   billing_lastname - SOAP::SOAPString
#   order_id - SOAP::SOAPString
#   order_increment_id - SOAP::SOAPString
#   order_created_at - SOAP::SOAPString
#   state - SOAP::SOAPString
#   grand_total - SOAP::SOAPString
#   invoice_id - SOAP::SOAPString
#   items - SalesOrderInvoiceItemEntityArray
#   comments - SalesOrderInvoiceCommentEntityArray
class SalesOrderInvoiceEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :store_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :global_currency_code
  attr_accessor :base_currency_code
  attr_accessor :store_currency_code
  attr_accessor :order_currency_code
  attr_accessor :store_to_base_rate
  attr_accessor :store_to_order_rate
  attr_accessor :base_to_global_rate
  attr_accessor :base_to_order_rate
  attr_accessor :subtotal
  attr_accessor :base_subtotal
  attr_accessor :base_grand_total
  attr_accessor :discount_amount
  attr_accessor :base_discount_amount
  attr_accessor :shipping_amount
  attr_accessor :base_shipping_amount
  attr_accessor :tax_amount
  attr_accessor :base_tax_amount
  attr_accessor :billing_address_id
  attr_accessor :billing_firstname
  attr_accessor :billing_lastname
  attr_accessor :order_id
  attr_accessor :order_increment_id
  attr_accessor :order_created_at
  attr_accessor :state
  attr_accessor :grand_total
  attr_accessor :invoice_id
  attr_accessor :items
  attr_accessor :comments

  def initialize(increment_id = nil, parent_id = nil, store_id = nil, created_at = nil, updated_at = nil, is_active = nil, global_currency_code = nil, base_currency_code = nil, store_currency_code = nil, order_currency_code = nil, store_to_base_rate = nil, store_to_order_rate = nil, base_to_global_rate = nil, base_to_order_rate = nil, subtotal = nil, base_subtotal = nil, base_grand_total = nil, discount_amount = nil, base_discount_amount = nil, shipping_amount = nil, base_shipping_amount = nil, tax_amount = nil, base_tax_amount = nil, billing_address_id = nil, billing_firstname = nil, billing_lastname = nil, order_id = nil, order_increment_id = nil, order_created_at = nil, state = nil, grand_total = nil, invoice_id = nil, items = nil, comments = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @store_id = store_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @global_currency_code = global_currency_code
    @base_currency_code = base_currency_code
    @store_currency_code = store_currency_code
    @order_currency_code = order_currency_code
    @store_to_base_rate = store_to_base_rate
    @store_to_order_rate = store_to_order_rate
    @base_to_global_rate = base_to_global_rate
    @base_to_order_rate = base_to_order_rate
    @subtotal = subtotal
    @base_subtotal = base_subtotal
    @base_grand_total = base_grand_total
    @discount_amount = discount_amount
    @base_discount_amount = base_discount_amount
    @shipping_amount = shipping_amount
    @base_shipping_amount = base_shipping_amount
    @tax_amount = tax_amount
    @base_tax_amount = base_tax_amount
    @billing_address_id = billing_address_id
    @billing_firstname = billing_firstname
    @billing_lastname = billing_lastname
    @order_id = order_id
    @order_increment_id = order_increment_id
    @order_created_at = order_created_at
    @state = state
    @grand_total = grand_total
    @invoice_id = invoice_id
    @items = items
    @comments = comments
  end
end

# {urn:Magento}salesOrderInvoiceEntityArray
class SalesOrderInvoiceEntityArray < ::Array
end

# {urn:Magento}salesOrderInvoiceItemEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   weee_tax_applied - SOAP::SOAPString
#   qty - SOAP::SOAPString
#   cost - SOAP::SOAPString
#   price - SOAP::SOAPString
#   tax_amount - SOAP::SOAPString
#   row_total - SOAP::SOAPString
#   base_price - SOAP::SOAPString
#   base_tax_amount - SOAP::SOAPString
#   base_row_total - SOAP::SOAPString
#   base_weee_tax_applied_amount - SOAP::SOAPString
#   base_weee_tax_applied_row_amount - SOAP::SOAPString
#   weee_tax_applied_amount - SOAP::SOAPString
#   weee_tax_applied_row_amount - SOAP::SOAPString
#   weee_tax_disposition - SOAP::SOAPString
#   weee_tax_row_disposition - SOAP::SOAPString
#   base_weee_tax_disposition - SOAP::SOAPString
#   base_weee_tax_row_disposition - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   name - SOAP::SOAPString
#   order_item_id - SOAP::SOAPString
#   product_id - SOAP::SOAPString
#   item_id - SOAP::SOAPString
class SalesOrderInvoiceItemEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :weee_tax_applied
  attr_accessor :qty
  attr_accessor :cost
  attr_accessor :price
  attr_accessor :tax_amount
  attr_accessor :row_total
  attr_accessor :base_price
  attr_accessor :base_tax_amount
  attr_accessor :base_row_total
  attr_accessor :base_weee_tax_applied_amount
  attr_accessor :base_weee_tax_applied_row_amount
  attr_accessor :weee_tax_applied_amount
  attr_accessor :weee_tax_applied_row_amount
  attr_accessor :weee_tax_disposition
  attr_accessor :weee_tax_row_disposition
  attr_accessor :base_weee_tax_disposition
  attr_accessor :base_weee_tax_row_disposition
  attr_accessor :sku
  attr_accessor :name
  attr_accessor :order_item_id
  attr_accessor :product_id
  attr_accessor :item_id

  def initialize(increment_id = nil, parent_id = nil, created_at = nil, updated_at = nil, is_active = nil, weee_tax_applied = nil, qty = nil, cost = nil, price = nil, tax_amount = nil, row_total = nil, base_price = nil, base_tax_amount = nil, base_row_total = nil, base_weee_tax_applied_amount = nil, base_weee_tax_applied_row_amount = nil, weee_tax_applied_amount = nil, weee_tax_applied_row_amount = nil, weee_tax_disposition = nil, weee_tax_row_disposition = nil, base_weee_tax_disposition = nil, base_weee_tax_row_disposition = nil, sku = nil, name = nil, order_item_id = nil, product_id = nil, item_id = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @weee_tax_applied = weee_tax_applied
    @qty = qty
    @cost = cost
    @price = price
    @tax_amount = tax_amount
    @row_total = row_total
    @base_price = base_price
    @base_tax_amount = base_tax_amount
    @base_row_total = base_row_total
    @base_weee_tax_applied_amount = base_weee_tax_applied_amount
    @base_weee_tax_applied_row_amount = base_weee_tax_applied_row_amount
    @weee_tax_applied_amount = weee_tax_applied_amount
    @weee_tax_applied_row_amount = weee_tax_applied_row_amount
    @weee_tax_disposition = weee_tax_disposition
    @weee_tax_row_disposition = weee_tax_row_disposition
    @base_weee_tax_disposition = base_weee_tax_disposition
    @base_weee_tax_row_disposition = base_weee_tax_row_disposition
    @sku = sku
    @name = name
    @order_item_id = order_item_id
    @product_id = product_id
    @item_id = item_id
  end
end

# {urn:Magento}salesOrderInvoiceItemEntityArray
class SalesOrderInvoiceItemEntityArray < ::Array
end

# {urn:Magento}salesOrderInvoiceCommentEntity
#   increment_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   is_active - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   is_customer_notified - SOAP::SOAPString
#   comment_id - SOAP::SOAPString
class SalesOrderInvoiceCommentEntity
  attr_accessor :increment_id
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :is_active
  attr_accessor :comment
  attr_accessor :is_customer_notified
  attr_accessor :comment_id

  def initialize(increment_id = nil, parent_id = nil, created_at = nil, updated_at = nil, is_active = nil, comment = nil, is_customer_notified = nil, comment_id = nil)
    @increment_id = increment_id
    @parent_id = parent_id
    @created_at = created_at
    @updated_at = updated_at
    @is_active = is_active
    @comment = comment
    @is_customer_notified = is_customer_notified
    @comment_id = comment_id
  end
end

# {urn:Magento}salesOrderInvoiceCommentEntityArray
class SalesOrderInvoiceCommentEntityArray < ::Array
end

# {urn:Magento}salesOrderCreditmemoEntity
#   updated_at - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   increment_id - SOAP::SOAPString
#   transaction_id - SOAP::SOAPString
#   global_currency_code - SOAP::SOAPString
#   base_currency_code - SOAP::SOAPString
#   order_currency_code - SOAP::SOAPString
#   store_currency_code - SOAP::SOAPString
#   cybersource_token - SOAP::SOAPString
#   invoice_id - SOAP::SOAPString
#   billing_address_id - SOAP::SOAPString
#   shipping_address_id - SOAP::SOAPString
#   state - SOAP::SOAPString
#   creditmemo_status - SOAP::SOAPString
#   email_sent - SOAP::SOAPString
#   order_id - SOAP::SOAPString
#   tax_amount - SOAP::SOAPString
#   shipping_tax_amount - SOAP::SOAPString
#   base_tax_amount - SOAP::SOAPString
#   base_adjustment_positive - SOAP::SOAPString
#   base_grand_total - SOAP::SOAPString
#   adjustment - SOAP::SOAPString
#   subtotal - SOAP::SOAPString
#   discount_amount - SOAP::SOAPString
#   base_subtotal - SOAP::SOAPString
#   base_adjustment - SOAP::SOAPString
#   base_to_global_rate - SOAP::SOAPString
#   store_to_base_rate - SOAP::SOAPString
#   base_shipping_amount - SOAP::SOAPString
#   adjustment_negative - SOAP::SOAPString
#   subtotal_incl_tax - SOAP::SOAPString
#   shipping_amount - SOAP::SOAPString
#   base_subtotal_incl_tax - SOAP::SOAPString
#   base_adjustment_negative - SOAP::SOAPString
#   grand_total - SOAP::SOAPString
#   base_discount_amount - SOAP::SOAPString
#   base_to_order_rate - SOAP::SOAPString
#   store_to_order_rate - SOAP::SOAPString
#   base_shipping_tax_amount - SOAP::SOAPString
#   adjustment_positive - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   hidden_tax_amount - SOAP::SOAPString
#   base_hidden_tax_amount - SOAP::SOAPString
#   shipping_hidden_tax_amount - SOAP::SOAPString
#   base_shipping_hidden_tax_amnt - SOAP::SOAPString
#   shipping_incl_tax - SOAP::SOAPString
#   base_shipping_incl_tax - SOAP::SOAPString
#   base_customer_balance_amount - SOAP::SOAPString
#   customer_balance_amount - SOAP::SOAPString
#   bs_customer_bal_total_refunded - SOAP::SOAPString
#   customer_bal_total_refunded - SOAP::SOAPString
#   base_gift_cards_amount - SOAP::SOAPString
#   gift_cards_amount - SOAP::SOAPString
#   gw_base_price - SOAP::SOAPString
#   gw_price - SOAP::SOAPString
#   gw_items_base_price - SOAP::SOAPString
#   gw_items_price - SOAP::SOAPString
#   gw_card_base_price - SOAP::SOAPString
#   gw_card_price - SOAP::SOAPString
#   gw_base_tax_amount - SOAP::SOAPString
#   gw_tax_amount - SOAP::SOAPString
#   gw_items_base_tax_amount - SOAP::SOAPString
#   gw_items_tax_amount - SOAP::SOAPString
#   gw_card_base_tax_amount - SOAP::SOAPString
#   gw_card_tax_amount - SOAP::SOAPString
#   base_reward_currency_amount - SOAP::SOAPString
#   reward_currency_amount - SOAP::SOAPString
#   reward_points_balance - SOAP::SOAPString
#   reward_points_balance_refund - SOAP::SOAPString
#   creditmemo_id - SOAP::SOAPString
#   items - SalesOrderCreditmemoItemEntityArray
#   comments - SalesOrderCreditmemoCommentEntityArray
class SalesOrderCreditmemoEntity
  attr_accessor :updated_at
  attr_accessor :created_at
  attr_accessor :increment_id
  attr_accessor :transaction_id
  attr_accessor :global_currency_code
  attr_accessor :base_currency_code
  attr_accessor :order_currency_code
  attr_accessor :store_currency_code
  attr_accessor :cybersource_token
  attr_accessor :invoice_id
  attr_accessor :billing_address_id
  attr_accessor :shipping_address_id
  attr_accessor :state
  attr_accessor :creditmemo_status
  attr_accessor :email_sent
  attr_accessor :order_id
  attr_accessor :tax_amount
  attr_accessor :shipping_tax_amount
  attr_accessor :base_tax_amount
  attr_accessor :base_adjustment_positive
  attr_accessor :base_grand_total
  attr_accessor :adjustment
  attr_accessor :subtotal
  attr_accessor :discount_amount
  attr_accessor :base_subtotal
  attr_accessor :base_adjustment
  attr_accessor :base_to_global_rate
  attr_accessor :store_to_base_rate
  attr_accessor :base_shipping_amount
  attr_accessor :adjustment_negative
  attr_accessor :subtotal_incl_tax
  attr_accessor :shipping_amount
  attr_accessor :base_subtotal_incl_tax
  attr_accessor :base_adjustment_negative
  attr_accessor :grand_total
  attr_accessor :base_discount_amount
  attr_accessor :base_to_order_rate
  attr_accessor :store_to_order_rate
  attr_accessor :base_shipping_tax_amount
  attr_accessor :adjustment_positive
  attr_accessor :store_id
  attr_accessor :hidden_tax_amount
  attr_accessor :base_hidden_tax_amount
  attr_accessor :shipping_hidden_tax_amount
  attr_accessor :base_shipping_hidden_tax_amnt
  attr_accessor :shipping_incl_tax
  attr_accessor :base_shipping_incl_tax
  attr_accessor :base_customer_balance_amount
  attr_accessor :customer_balance_amount
  attr_accessor :bs_customer_bal_total_refunded
  attr_accessor :customer_bal_total_refunded
  attr_accessor :base_gift_cards_amount
  attr_accessor :gift_cards_amount
  attr_accessor :gw_base_price
  attr_accessor :gw_price
  attr_accessor :gw_items_base_price
  attr_accessor :gw_items_price
  attr_accessor :gw_card_base_price
  attr_accessor :gw_card_price
  attr_accessor :gw_base_tax_amount
  attr_accessor :gw_tax_amount
  attr_accessor :gw_items_base_tax_amount
  attr_accessor :gw_items_tax_amount
  attr_accessor :gw_card_base_tax_amount
  attr_accessor :gw_card_tax_amount
  attr_accessor :base_reward_currency_amount
  attr_accessor :reward_currency_amount
  attr_accessor :reward_points_balance
  attr_accessor :reward_points_balance_refund
  attr_accessor :creditmemo_id
  attr_accessor :items
  attr_accessor :comments

  def initialize(updated_at = nil, created_at = nil, increment_id = nil, transaction_id = nil, global_currency_code = nil, base_currency_code = nil, order_currency_code = nil, store_currency_code = nil, cybersource_token = nil, invoice_id = nil, billing_address_id = nil, shipping_address_id = nil, state = nil, creditmemo_status = nil, email_sent = nil, order_id = nil, tax_amount = nil, shipping_tax_amount = nil, base_tax_amount = nil, base_adjustment_positive = nil, base_grand_total = nil, adjustment = nil, subtotal = nil, discount_amount = nil, base_subtotal = nil, base_adjustment = nil, base_to_global_rate = nil, store_to_base_rate = nil, base_shipping_amount = nil, adjustment_negative = nil, subtotal_incl_tax = nil, shipping_amount = nil, base_subtotal_incl_tax = nil, base_adjustment_negative = nil, grand_total = nil, base_discount_amount = nil, base_to_order_rate = nil, store_to_order_rate = nil, base_shipping_tax_amount = nil, adjustment_positive = nil, store_id = nil, hidden_tax_amount = nil, base_hidden_tax_amount = nil, shipping_hidden_tax_amount = nil, base_shipping_hidden_tax_amnt = nil, shipping_incl_tax = nil, base_shipping_incl_tax = nil, base_customer_balance_amount = nil, customer_balance_amount = nil, bs_customer_bal_total_refunded = nil, customer_bal_total_refunded = nil, base_gift_cards_amount = nil, gift_cards_amount = nil, gw_base_price = nil, gw_price = nil, gw_items_base_price = nil, gw_items_price = nil, gw_card_base_price = nil, gw_card_price = nil, gw_base_tax_amount = nil, gw_tax_amount = nil, gw_items_base_tax_amount = nil, gw_items_tax_amount = nil, gw_card_base_tax_amount = nil, gw_card_tax_amount = nil, base_reward_currency_amount = nil, reward_currency_amount = nil, reward_points_balance = nil, reward_points_balance_refund = nil, creditmemo_id = nil, items = nil, comments = nil)
    @updated_at = updated_at
    @created_at = created_at
    @increment_id = increment_id
    @transaction_id = transaction_id
    @global_currency_code = global_currency_code
    @base_currency_code = base_currency_code
    @order_currency_code = order_currency_code
    @store_currency_code = store_currency_code
    @cybersource_token = cybersource_token
    @invoice_id = invoice_id
    @billing_address_id = billing_address_id
    @shipping_address_id = shipping_address_id
    @state = state
    @creditmemo_status = creditmemo_status
    @email_sent = email_sent
    @order_id = order_id
    @tax_amount = tax_amount
    @shipping_tax_amount = shipping_tax_amount
    @base_tax_amount = base_tax_amount
    @base_adjustment_positive = base_adjustment_positive
    @base_grand_total = base_grand_total
    @adjustment = adjustment
    @subtotal = subtotal
    @discount_amount = discount_amount
    @base_subtotal = base_subtotal
    @base_adjustment = base_adjustment
    @base_to_global_rate = base_to_global_rate
    @store_to_base_rate = store_to_base_rate
    @base_shipping_amount = base_shipping_amount
    @adjustment_negative = adjustment_negative
    @subtotal_incl_tax = subtotal_incl_tax
    @shipping_amount = shipping_amount
    @base_subtotal_incl_tax = base_subtotal_incl_tax
    @base_adjustment_negative = base_adjustment_negative
    @grand_total = grand_total
    @base_discount_amount = base_discount_amount
    @base_to_order_rate = base_to_order_rate
    @store_to_order_rate = store_to_order_rate
    @base_shipping_tax_amount = base_shipping_tax_amount
    @adjustment_positive = adjustment_positive
    @store_id = store_id
    @hidden_tax_amount = hidden_tax_amount
    @base_hidden_tax_amount = base_hidden_tax_amount
    @shipping_hidden_tax_amount = shipping_hidden_tax_amount
    @base_shipping_hidden_tax_amnt = base_shipping_hidden_tax_amnt
    @shipping_incl_tax = shipping_incl_tax
    @base_shipping_incl_tax = base_shipping_incl_tax
    @base_customer_balance_amount = base_customer_balance_amount
    @customer_balance_amount = customer_balance_amount
    @bs_customer_bal_total_refunded = bs_customer_bal_total_refunded
    @customer_bal_total_refunded = customer_bal_total_refunded
    @base_gift_cards_amount = base_gift_cards_amount
    @gift_cards_amount = gift_cards_amount
    @gw_base_price = gw_base_price
    @gw_price = gw_price
    @gw_items_base_price = gw_items_base_price
    @gw_items_price = gw_items_price
    @gw_card_base_price = gw_card_base_price
    @gw_card_price = gw_card_price
    @gw_base_tax_amount = gw_base_tax_amount
    @gw_tax_amount = gw_tax_amount
    @gw_items_base_tax_amount = gw_items_base_tax_amount
    @gw_items_tax_amount = gw_items_tax_amount
    @gw_card_base_tax_amount = gw_card_base_tax_amount
    @gw_card_tax_amount = gw_card_tax_amount
    @base_reward_currency_amount = base_reward_currency_amount
    @reward_currency_amount = reward_currency_amount
    @reward_points_balance = reward_points_balance
    @reward_points_balance_refund = reward_points_balance_refund
    @creditmemo_id = creditmemo_id
    @items = items
    @comments = comments
  end
end

# {urn:Magento}salesOrderCreditmemoEntityArray
class SalesOrderCreditmemoEntityArray < ::Array
end

# {urn:Magento}salesOrderCreditmemoItemEntity
#   item_id - SOAP::SOAPString
#   parent_id - SOAP::SOAPString
#   weee_tax_applied_row_amount - SOAP::SOAPString
#   base_price - SOAP::SOAPString
#   base_weee_tax_row_disposition - SOAP::SOAPString
#   tax_amount - SOAP::SOAPString
#   base_weee_tax_applied_amount - SOAP::SOAPString
#   weee_tax_row_disposition - SOAP::SOAPString
#   base_row_total - SOAP::SOAPString
#   discount_amount - SOAP::SOAPString
#   row_total - SOAP::SOAPString
#   weee_tax_applied_amount - SOAP::SOAPString
#   base_discount_amount - SOAP::SOAPString
#   base_weee_tax_disposition - SOAP::SOAPString
#   price_incl_tax - SOAP::SOAPString
#   base_tax_amount - SOAP::SOAPString
#   weee_tax_disposition - SOAP::SOAPString
#   base_price_incl_tax - SOAP::SOAPString
#   qty - SOAP::SOAPString
#   base_cost - SOAP::SOAPString
#   base_weee_tax_applied_row_amount - SOAP::SOAPString
#   price - SOAP::SOAPString
#   base_row_total_incl_tax - SOAP::SOAPString
#   row_total_incl_tax - SOAP::SOAPString
#   product_id - SOAP::SOAPString
#   order_item_id - SOAP::SOAPString
#   additional_data - SOAP::SOAPString
#   description - SOAP::SOAPString
#   weee_tax_applied - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   name - SOAP::SOAPString
#   hidden_tax_amount - SOAP::SOAPString
#   base_hidden_tax_amount - SOAP::SOAPString
class SalesOrderCreditmemoItemEntity
  attr_accessor :item_id
  attr_accessor :parent_id
  attr_accessor :weee_tax_applied_row_amount
  attr_accessor :base_price
  attr_accessor :base_weee_tax_row_disposition
  attr_accessor :tax_amount
  attr_accessor :base_weee_tax_applied_amount
  attr_accessor :weee_tax_row_disposition
  attr_accessor :base_row_total
  attr_accessor :discount_amount
  attr_accessor :row_total
  attr_accessor :weee_tax_applied_amount
  attr_accessor :base_discount_amount
  attr_accessor :base_weee_tax_disposition
  attr_accessor :price_incl_tax
  attr_accessor :base_tax_amount
  attr_accessor :weee_tax_disposition
  attr_accessor :base_price_incl_tax
  attr_accessor :qty
  attr_accessor :base_cost
  attr_accessor :base_weee_tax_applied_row_amount
  attr_accessor :price
  attr_accessor :base_row_total_incl_tax
  attr_accessor :row_total_incl_tax
  attr_accessor :product_id
  attr_accessor :order_item_id
  attr_accessor :additional_data
  attr_accessor :description
  attr_accessor :weee_tax_applied
  attr_accessor :sku
  attr_accessor :name
  attr_accessor :hidden_tax_amount
  attr_accessor :base_hidden_tax_amount

  def initialize(item_id = nil, parent_id = nil, weee_tax_applied_row_amount = nil, base_price = nil, base_weee_tax_row_disposition = nil, tax_amount = nil, base_weee_tax_applied_amount = nil, weee_tax_row_disposition = nil, base_row_total = nil, discount_amount = nil, row_total = nil, weee_tax_applied_amount = nil, base_discount_amount = nil, base_weee_tax_disposition = nil, price_incl_tax = nil, base_tax_amount = nil, weee_tax_disposition = nil, base_price_incl_tax = nil, qty = nil, base_cost = nil, base_weee_tax_applied_row_amount = nil, price = nil, base_row_total_incl_tax = nil, row_total_incl_tax = nil, product_id = nil, order_item_id = nil, additional_data = nil, description = nil, weee_tax_applied = nil, sku = nil, name = nil, hidden_tax_amount = nil, base_hidden_tax_amount = nil)
    @item_id = item_id
    @parent_id = parent_id
    @weee_tax_applied_row_amount = weee_tax_applied_row_amount
    @base_price = base_price
    @base_weee_tax_row_disposition = base_weee_tax_row_disposition
    @tax_amount = tax_amount
    @base_weee_tax_applied_amount = base_weee_tax_applied_amount
    @weee_tax_row_disposition = weee_tax_row_disposition
    @base_row_total = base_row_total
    @discount_amount = discount_amount
    @row_total = row_total
    @weee_tax_applied_amount = weee_tax_applied_amount
    @base_discount_amount = base_discount_amount
    @base_weee_tax_disposition = base_weee_tax_disposition
    @price_incl_tax = price_incl_tax
    @base_tax_amount = base_tax_amount
    @weee_tax_disposition = weee_tax_disposition
    @base_price_incl_tax = base_price_incl_tax
    @qty = qty
    @base_cost = base_cost
    @base_weee_tax_applied_row_amount = base_weee_tax_applied_row_amount
    @price = price
    @base_row_total_incl_tax = base_row_total_incl_tax
    @row_total_incl_tax = row_total_incl_tax
    @product_id = product_id
    @order_item_id = order_item_id
    @additional_data = additional_data
    @description = description
    @weee_tax_applied = weee_tax_applied
    @sku = sku
    @name = name
    @hidden_tax_amount = hidden_tax_amount
    @base_hidden_tax_amount = base_hidden_tax_amount
  end
end

# {urn:Magento}salesOrderCreditmemoItemEntityArray
class SalesOrderCreditmemoItemEntityArray < ::Array
end

# {urn:Magento}salesOrderCreditmemoCommentEntity
#   parent_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   is_customer_notified - SOAP::SOAPString
#   comment_id - SOAP::SOAPString
#   is_visible_on_front - SOAP::SOAPString
class SalesOrderCreditmemoCommentEntity
  attr_accessor :parent_id
  attr_accessor :created_at
  attr_accessor :comment
  attr_accessor :is_customer_notified
  attr_accessor :comment_id
  attr_accessor :is_visible_on_front

  def initialize(parent_id = nil, created_at = nil, comment = nil, is_customer_notified = nil, comment_id = nil, is_visible_on_front = nil)
    @parent_id = parent_id
    @created_at = created_at
    @comment = comment
    @is_customer_notified = is_customer_notified
    @comment_id = comment_id
    @is_visible_on_front = is_visible_on_front
  end
end

# {urn:Magento}salesOrderCreditmemoCommentEntityArray
class SalesOrderCreditmemoCommentEntityArray < ::Array
end

# {urn:Magento}salesOrderCreditmemoData
#   qtys - OrderItemIdQtyArray
#   shipping_amount - SOAP::SOAPDouble
#   adjustment_positive - SOAP::SOAPDouble
#   adjustment_negative - SOAP::SOAPDouble
class SalesOrderCreditmemoData
  attr_accessor :qtys
  attr_accessor :shipping_amount
  attr_accessor :adjustment_positive
  attr_accessor :adjustment_negative

  def initialize(qtys = nil, shipping_amount = nil, adjustment_positive = nil, adjustment_negative = nil)
    @qtys = qtys
    @shipping_amount = shipping_amount
    @adjustment_positive = adjustment_positive
    @adjustment_negative = adjustment_negative
  end
end

# {urn:Magento}catalogInventoryStockItemEntity
#   product_id - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   qty - SOAP::SOAPString
#   is_in_stock - SOAP::SOAPString
class CatalogInventoryStockItemEntity
  attr_accessor :product_id
  attr_accessor :sku
  attr_accessor :qty
  attr_accessor :is_in_stock

  def initialize(product_id = nil, sku = nil, qty = nil, is_in_stock = nil)
    @product_id = product_id
    @sku = sku
    @qty = qty
    @is_in_stock = is_in_stock
  end
end

# {urn:Magento}catalogInventoryStockItemEntityArray
class CatalogInventoryStockItemEntityArray < ::Array
end

# {urn:Magento}catalogInventoryStockItemUpdateEntity
#   qty - SOAP::SOAPString
#   is_in_stock - SOAP::SOAPInt
#   manage_stock - SOAP::SOAPInt
#   use_config_manage_stock - SOAP::SOAPInt
#   min_qty - SOAP::SOAPInt
#   use_config_min_qty - SOAP::SOAPInt
#   min_sale_qty - SOAP::SOAPInt
#   use_config_min_sale_qty - SOAP::SOAPInt
#   max_sale_qty - SOAP::SOAPInt
#   use_config_max_sale_qty - SOAP::SOAPInt
#   is_qty_decimal - SOAP::SOAPInt
#   backorders - SOAP::SOAPInt
#   use_config_backorders - SOAP::SOAPInt
#   notify_stock_qty - SOAP::SOAPInt
#   use_config_notify_stock_qty - SOAP::SOAPInt
class CatalogInventoryStockItemUpdateEntity
  attr_accessor :qty
  attr_accessor :is_in_stock
  attr_accessor :manage_stock
  attr_accessor :use_config_manage_stock
  attr_accessor :min_qty
  attr_accessor :use_config_min_qty
  attr_accessor :min_sale_qty
  attr_accessor :use_config_min_sale_qty
  attr_accessor :max_sale_qty
  attr_accessor :use_config_max_sale_qty
  attr_accessor :is_qty_decimal
  attr_accessor :backorders
  attr_accessor :use_config_backorders
  attr_accessor :notify_stock_qty
  attr_accessor :use_config_notify_stock_qty

  def initialize(qty = nil, is_in_stock = nil, manage_stock = nil, use_config_manage_stock = nil, min_qty = nil, use_config_min_qty = nil, min_sale_qty = nil, use_config_min_sale_qty = nil, max_sale_qty = nil, use_config_max_sale_qty = nil, is_qty_decimal = nil, backorders = nil, use_config_backorders = nil, notify_stock_qty = nil, use_config_notify_stock_qty = nil)
    @qty = qty
    @is_in_stock = is_in_stock
    @manage_stock = manage_stock
    @use_config_manage_stock = use_config_manage_stock
    @min_qty = min_qty
    @use_config_min_qty = use_config_min_qty
    @min_sale_qty = min_sale_qty
    @use_config_min_sale_qty = use_config_min_sale_qty
    @max_sale_qty = max_sale_qty
    @use_config_max_sale_qty = use_config_max_sale_qty
    @is_qty_decimal = is_qty_decimal
    @backorders = backorders
    @use_config_backorders = use_config_backorders
    @notify_stock_qty = notify_stock_qty
    @use_config_notify_stock_qty = use_config_notify_stock_qty
  end
end

# {urn:Magento}shoppingCartAddressEntity
#   address_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   customer_id - SOAP::SOAPString
#   save_in_address_book - SOAP::SOAPInt
#   customer_address_id - SOAP::SOAPString
#   address_type - SOAP::SOAPString
#   email - SOAP::SOAPString
#   prefix - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   middlename - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   suffix - SOAP::SOAPString
#   company - SOAP::SOAPString
#   street - SOAP::SOAPString
#   city - SOAP::SOAPString
#   region - SOAP::SOAPString
#   region_id - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   country_id - SOAP::SOAPString
#   telephone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   same_as_billing - SOAP::SOAPInt
#   free_shipping - SOAP::SOAPInt
#   shipping_method - SOAP::SOAPString
#   shipping_description - SOAP::SOAPString
#   weight - SOAP::SOAPDouble
class ShoppingCartAddressEntity
  attr_accessor :address_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :customer_id
  attr_accessor :save_in_address_book
  attr_accessor :customer_address_id
  attr_accessor :address_type
  attr_accessor :email
  attr_accessor :prefix
  attr_accessor :firstname
  attr_accessor :middlename
  attr_accessor :lastname
  attr_accessor :suffix
  attr_accessor :company
  attr_accessor :street
  attr_accessor :city
  attr_accessor :region
  attr_accessor :region_id
  attr_accessor :postcode
  attr_accessor :country_id
  attr_accessor :telephone
  attr_accessor :fax
  attr_accessor :same_as_billing
  attr_accessor :free_shipping
  attr_accessor :shipping_method
  attr_accessor :shipping_description
  attr_accessor :weight

  def initialize(address_id = nil, created_at = nil, updated_at = nil, customer_id = nil, save_in_address_book = nil, customer_address_id = nil, address_type = nil, email = nil, prefix = nil, firstname = nil, middlename = nil, lastname = nil, suffix = nil, company = nil, street = nil, city = nil, region = nil, region_id = nil, postcode = nil, country_id = nil, telephone = nil, fax = nil, same_as_billing = nil, free_shipping = nil, shipping_method = nil, shipping_description = nil, weight = nil)
    @address_id = address_id
    @created_at = created_at
    @updated_at = updated_at
    @customer_id = customer_id
    @save_in_address_book = save_in_address_book
    @customer_address_id = customer_address_id
    @address_type = address_type
    @email = email
    @prefix = prefix
    @firstname = firstname
    @middlename = middlename
    @lastname = lastname
    @suffix = suffix
    @company = company
    @street = street
    @city = city
    @region = region
    @region_id = region_id
    @postcode = postcode
    @country_id = country_id
    @telephone = telephone
    @fax = fax
    @same_as_billing = same_as_billing
    @free_shipping = free_shipping
    @shipping_method = shipping_method
    @shipping_description = shipping_description
    @weight = weight
  end
end

# {urn:Magento}shoppingCartItemEntity
#   item_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   product_id - SOAP::SOAPString
#   store_id - SOAP::SOAPString
#   parent_item_id - SOAP::SOAPString
#   is_virtual - SOAP::SOAPInt
#   sku - SOAP::SOAPString
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   applied_rule_ids - SOAP::SOAPString
#   additional_data - SOAP::SOAPString
#   free_shipping - SOAP::SOAPString
#   is_qty_decimal - SOAP::SOAPString
#   no_discount - SOAP::SOAPString
#   weight - SOAP::SOAPDouble
#   qty - SOAP::SOAPDouble
#   price - SOAP::SOAPDouble
#   base_price - SOAP::SOAPDouble
#   custom_price - SOAP::SOAPDouble
#   discount_percent - SOAP::SOAPDouble
#   discount_amount - SOAP::SOAPDouble
#   base_discount_amount - SOAP::SOAPDouble
#   tax_percent - SOAP::SOAPDouble
#   tax_amount - SOAP::SOAPDouble
#   base_tax_amount - SOAP::SOAPDouble
#   row_total - SOAP::SOAPDouble
#   base_row_total - SOAP::SOAPDouble
#   row_total_with_discount - SOAP::SOAPDouble
#   row_weight - SOAP::SOAPDouble
#   product_type - SOAP::SOAPString
#   base_tax_before_discount - SOAP::SOAPDouble
#   tax_before_discount - SOAP::SOAPDouble
#   original_custom_price - SOAP::SOAPDouble
#   base_cost - SOAP::SOAPDouble
#   price_incl_tax - SOAP::SOAPDouble
#   base_price_incl_tax - SOAP::SOAPDouble
#   row_total_incl_tax - SOAP::SOAPDouble
#   base_row_total_incl_tax - SOAP::SOAPDouble
#   gift_message_id - SOAP::SOAPString
#   gift_message - SOAP::SOAPString
#   gift_message_available - SOAP::SOAPString
#   weee_tax_applied - SOAP::SOAPDouble
#   weee_tax_applied_amount - SOAP::SOAPDouble
#   weee_tax_applied_row_amount - SOAP::SOAPDouble
#   base_weee_tax_applied_amount - SOAP::SOAPDouble
#   base_weee_tax_applied_row_amount - SOAP::SOAPDouble
#   weee_tax_disposition - SOAP::SOAPDouble
#   weee_tax_row_disposition - SOAP::SOAPDouble
#   base_weee_tax_disposition - SOAP::SOAPDouble
#   base_weee_tax_row_disposition - SOAP::SOAPDouble
#   tax_class_id - SOAP::SOAPString
class ShoppingCartItemEntity
  attr_accessor :item_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :product_id
  attr_accessor :store_id
  attr_accessor :parent_item_id
  attr_accessor :is_virtual
  attr_accessor :sku
  attr_accessor :name
  attr_accessor :description
  attr_accessor :applied_rule_ids
  attr_accessor :additional_data
  attr_accessor :free_shipping
  attr_accessor :is_qty_decimal
  attr_accessor :no_discount
  attr_accessor :weight
  attr_accessor :qty
  attr_accessor :price
  attr_accessor :base_price
  attr_accessor :custom_price
  attr_accessor :discount_percent
  attr_accessor :discount_amount
  attr_accessor :base_discount_amount
  attr_accessor :tax_percent
  attr_accessor :tax_amount
  attr_accessor :base_tax_amount
  attr_accessor :row_total
  attr_accessor :base_row_total
  attr_accessor :row_total_with_discount
  attr_accessor :row_weight
  attr_accessor :product_type
  attr_accessor :base_tax_before_discount
  attr_accessor :tax_before_discount
  attr_accessor :original_custom_price
  attr_accessor :base_cost
  attr_accessor :price_incl_tax
  attr_accessor :base_price_incl_tax
  attr_accessor :row_total_incl_tax
  attr_accessor :base_row_total_incl_tax
  attr_accessor :gift_message_id
  attr_accessor :gift_message
  attr_accessor :gift_message_available
  attr_accessor :weee_tax_applied
  attr_accessor :weee_tax_applied_amount
  attr_accessor :weee_tax_applied_row_amount
  attr_accessor :base_weee_tax_applied_amount
  attr_accessor :base_weee_tax_applied_row_amount
  attr_accessor :weee_tax_disposition
  attr_accessor :weee_tax_row_disposition
  attr_accessor :base_weee_tax_disposition
  attr_accessor :base_weee_tax_row_disposition
  attr_accessor :tax_class_id

  def initialize(item_id = nil, created_at = nil, updated_at = nil, product_id = nil, store_id = nil, parent_item_id = nil, is_virtual = nil, sku = nil, name = nil, description = nil, applied_rule_ids = nil, additional_data = nil, free_shipping = nil, is_qty_decimal = nil, no_discount = nil, weight = nil, qty = nil, price = nil, base_price = nil, custom_price = nil, discount_percent = nil, discount_amount = nil, base_discount_amount = nil, tax_percent = nil, tax_amount = nil, base_tax_amount = nil, row_total = nil, base_row_total = nil, row_total_with_discount = nil, row_weight = nil, product_type = nil, base_tax_before_discount = nil, tax_before_discount = nil, original_custom_price = nil, base_cost = nil, price_incl_tax = nil, base_price_incl_tax = nil, row_total_incl_tax = nil, base_row_total_incl_tax = nil, gift_message_id = nil, gift_message = nil, gift_message_available = nil, weee_tax_applied = nil, weee_tax_applied_amount = nil, weee_tax_applied_row_amount = nil, base_weee_tax_applied_amount = nil, base_weee_tax_applied_row_amount = nil, weee_tax_disposition = nil, weee_tax_row_disposition = nil, base_weee_tax_disposition = nil, base_weee_tax_row_disposition = nil, tax_class_id = nil)
    @item_id = item_id
    @created_at = created_at
    @updated_at = updated_at
    @product_id = product_id
    @store_id = store_id
    @parent_item_id = parent_item_id
    @is_virtual = is_virtual
    @sku = sku
    @name = name
    @description = description
    @applied_rule_ids = applied_rule_ids
    @additional_data = additional_data
    @free_shipping = free_shipping
    @is_qty_decimal = is_qty_decimal
    @no_discount = no_discount
    @weight = weight
    @qty = qty
    @price = price
    @base_price = base_price
    @custom_price = custom_price
    @discount_percent = discount_percent
    @discount_amount = discount_amount
    @base_discount_amount = base_discount_amount
    @tax_percent = tax_percent
    @tax_amount = tax_amount
    @base_tax_amount = base_tax_amount
    @row_total = row_total
    @base_row_total = base_row_total
    @row_total_with_discount = row_total_with_discount
    @row_weight = row_weight
    @product_type = product_type
    @base_tax_before_discount = base_tax_before_discount
    @tax_before_discount = tax_before_discount
    @original_custom_price = original_custom_price
    @base_cost = base_cost
    @price_incl_tax = price_incl_tax
    @base_price_incl_tax = base_price_incl_tax
    @row_total_incl_tax = row_total_incl_tax
    @base_row_total_incl_tax = base_row_total_incl_tax
    @gift_message_id = gift_message_id
    @gift_message = gift_message
    @gift_message_available = gift_message_available
    @weee_tax_applied = weee_tax_applied
    @weee_tax_applied_amount = weee_tax_applied_amount
    @weee_tax_applied_row_amount = weee_tax_applied_row_amount
    @base_weee_tax_applied_amount = base_weee_tax_applied_amount
    @base_weee_tax_applied_row_amount = base_weee_tax_applied_row_amount
    @weee_tax_disposition = weee_tax_disposition
    @weee_tax_row_disposition = weee_tax_row_disposition
    @base_weee_tax_disposition = base_weee_tax_disposition
    @base_weee_tax_row_disposition = base_weee_tax_row_disposition
    @tax_class_id = tax_class_id
  end
end

# {urn:Magento}shoppingCartItemEntityArray
class ShoppingCartItemEntityArray < ::Array
end

# {urn:Magento}shoppingCartPaymentEntity
#   payment_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   method - SOAP::SOAPString
#   cc_type - SOAP::SOAPString
#   cc_number_enc - SOAP::SOAPString
#   cc_last4 - SOAP::SOAPString
#   cc_cid_enc - SOAP::SOAPString
#   cc_owner - SOAP::SOAPString
#   cc_exp_month - SOAP::SOAPString
#   cc_exp_year - SOAP::SOAPString
#   cc_ss_owner - SOAP::SOAPString
#   cc_ss_start_month - SOAP::SOAPString
#   cc_ss_start_year - SOAP::SOAPString
#   cc_ss_issue - SOAP::SOAPString
#   po_number - SOAP::SOAPString
#   additional_data - SOAP::SOAPString
#   additional_information - SOAP::SOAPString
class ShoppingCartPaymentEntity
  attr_accessor :payment_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :method
  attr_accessor :cc_type
  attr_accessor :cc_number_enc
  attr_accessor :cc_last4
  attr_accessor :cc_cid_enc
  attr_accessor :cc_owner
  attr_accessor :cc_exp_month
  attr_accessor :cc_exp_year
  attr_accessor :cc_ss_owner
  attr_accessor :cc_ss_start_month
  attr_accessor :cc_ss_start_year
  attr_accessor :cc_ss_issue
  attr_accessor :po_number
  attr_accessor :additional_data
  attr_accessor :additional_information

  def initialize(payment_id = nil, created_at = nil, updated_at = nil, method = nil, cc_type = nil, cc_number_enc = nil, cc_last4 = nil, cc_cid_enc = nil, cc_owner = nil, cc_exp_month = nil, cc_exp_year = nil, cc_ss_owner = nil, cc_ss_start_month = nil, cc_ss_start_year = nil, cc_ss_issue = nil, po_number = nil, additional_data = nil, additional_information = nil)
    @payment_id = payment_id
    @created_at = created_at
    @updated_at = updated_at
    @method = method
    @cc_type = cc_type
    @cc_number_enc = cc_number_enc
    @cc_last4 = cc_last4
    @cc_cid_enc = cc_cid_enc
    @cc_owner = cc_owner
    @cc_exp_month = cc_exp_month
    @cc_exp_year = cc_exp_year
    @cc_ss_owner = cc_ss_owner
    @cc_ss_start_month = cc_ss_start_month
    @cc_ss_start_year = cc_ss_start_year
    @cc_ss_issue = cc_ss_issue
    @po_number = po_number
    @additional_data = additional_data
    @additional_information = additional_information
  end
end

# {urn:Magento}shoppingCartInfoEntity
#   store_id - SOAP::SOAPString
#   created_at - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   converted_at - SOAP::SOAPString
#   quote_id - SOAP::SOAPInt
#   is_active - SOAP::SOAPInt
#   is_virtual - SOAP::SOAPInt
#   is_multi_shipping - SOAP::SOAPInt
#   items_count - SOAP::SOAPDouble
#   items_qty - SOAP::SOAPDouble
#   orig_order_id - SOAP::SOAPString
#   store_to_base_rate - SOAP::SOAPString
#   store_to_quote_rate - SOAP::SOAPString
#   base_currency_code - SOAP::SOAPString
#   store_currency_code - SOAP::SOAPString
#   quote_currency_code - SOAP::SOAPString
#   grand_total - SOAP::SOAPString
#   base_grand_total - SOAP::SOAPString
#   checkout_method - SOAP::SOAPString
#   customer_id - SOAP::SOAPString
#   customer_tax_class_id - SOAP::SOAPString
#   customer_group_id - SOAP::SOAPInt
#   customer_email - SOAP::SOAPString
#   customer_prefix - SOAP::SOAPString
#   customer_firstname - SOAP::SOAPString
#   customer_middlename - SOAP::SOAPString
#   customer_lastname - SOAP::SOAPString
#   customer_suffix - SOAP::SOAPString
#   customer_note - SOAP::SOAPString
#   customer_note_notify - SOAP::SOAPString
#   customer_is_guest - SOAP::SOAPString
#   applied_rule_ids - SOAP::SOAPString
#   reserved_order_id - SOAP::SOAPString
#   password_hash - SOAP::SOAPString
#   coupon_code - SOAP::SOAPString
#   global_currency_code - SOAP::SOAPString
#   base_to_global_rate - SOAP::SOAPDouble
#   base_to_quote_rate - SOAP::SOAPDouble
#   customer_taxvat - SOAP::SOAPString
#   customer_gender - SOAP::SOAPString
#   subtotal - SOAP::SOAPDouble
#   base_subtotal - SOAP::SOAPDouble
#   subtotal_with_discount - SOAP::SOAPDouble
#   base_subtotal_with_discount - SOAP::SOAPDouble
#   ext_shipping_info - SOAP::SOAPString
#   gift_message_id - SOAP::SOAPString
#   gift_message - SOAP::SOAPString
#   customer_balance_amount_used - SOAP::SOAPDouble
#   base_customer_balance_amount_used - SOAP::SOAPDouble
#   use_customer_balance - SOAP::SOAPString
#   gift_cards_amount - SOAP::SOAPString
#   base_gift_cards_amount - SOAP::SOAPString
#   gift_cards_amount_used - SOAP::SOAPString
#   use_reward_points - SOAP::SOAPString
#   reward_points_balance - SOAP::SOAPString
#   base_reward_currency_amount - SOAP::SOAPString
#   reward_currency_amount - SOAP::SOAPString
#   shipping_address - ShoppingCartAddressEntity
#   billing_address - ShoppingCartAddressEntity
#   items - ShoppingCartItemEntityArray
#   payment - ShoppingCartPaymentEntity
class ShoppingCartInfoEntity
  attr_accessor :store_id
  attr_accessor :created_at
  attr_accessor :updated_at
  attr_accessor :converted_at
  attr_accessor :quote_id
  attr_accessor :is_active
  attr_accessor :is_virtual
  attr_accessor :is_multi_shipping
  attr_accessor :items_count
  attr_accessor :items_qty
  attr_accessor :orig_order_id
  attr_accessor :store_to_base_rate
  attr_accessor :store_to_quote_rate
  attr_accessor :base_currency_code
  attr_accessor :store_currency_code
  attr_accessor :quote_currency_code
  attr_accessor :grand_total
  attr_accessor :base_grand_total
  attr_accessor :checkout_method
  attr_accessor :customer_id
  attr_accessor :customer_tax_class_id
  attr_accessor :customer_group_id
  attr_accessor :customer_email
  attr_accessor :customer_prefix
  attr_accessor :customer_firstname
  attr_accessor :customer_middlename
  attr_accessor :customer_lastname
  attr_accessor :customer_suffix
  attr_accessor :customer_note
  attr_accessor :customer_note_notify
  attr_accessor :customer_is_guest
  attr_accessor :applied_rule_ids
  attr_accessor :reserved_order_id
  attr_accessor :password_hash
  attr_accessor :coupon_code
  attr_accessor :global_currency_code
  attr_accessor :base_to_global_rate
  attr_accessor :base_to_quote_rate
  attr_accessor :customer_taxvat
  attr_accessor :customer_gender
  attr_accessor :subtotal
  attr_accessor :base_subtotal
  attr_accessor :subtotal_with_discount
  attr_accessor :base_subtotal_with_discount
  attr_accessor :ext_shipping_info
  attr_accessor :gift_message_id
  attr_accessor :gift_message
  attr_accessor :customer_balance_amount_used
  attr_accessor :base_customer_balance_amount_used
  attr_accessor :use_customer_balance
  attr_accessor :gift_cards_amount
  attr_accessor :base_gift_cards_amount
  attr_accessor :gift_cards_amount_used
  attr_accessor :use_reward_points
  attr_accessor :reward_points_balance
  attr_accessor :base_reward_currency_amount
  attr_accessor :reward_currency_amount
  attr_accessor :shipping_address
  attr_accessor :billing_address
  attr_accessor :items
  attr_accessor :payment

  def initialize(store_id = nil, created_at = nil, updated_at = nil, converted_at = nil, quote_id = nil, is_active = nil, is_virtual = nil, is_multi_shipping = nil, items_count = nil, items_qty = nil, orig_order_id = nil, store_to_base_rate = nil, store_to_quote_rate = nil, base_currency_code = nil, store_currency_code = nil, quote_currency_code = nil, grand_total = nil, base_grand_total = nil, checkout_method = nil, customer_id = nil, customer_tax_class_id = nil, customer_group_id = nil, customer_email = nil, customer_prefix = nil, customer_firstname = nil, customer_middlename = nil, customer_lastname = nil, customer_suffix = nil, customer_note = nil, customer_note_notify = nil, customer_is_guest = nil, applied_rule_ids = nil, reserved_order_id = nil, password_hash = nil, coupon_code = nil, global_currency_code = nil, base_to_global_rate = nil, base_to_quote_rate = nil, customer_taxvat = nil, customer_gender = nil, subtotal = nil, base_subtotal = nil, subtotal_with_discount = nil, base_subtotal_with_discount = nil, ext_shipping_info = nil, gift_message_id = nil, gift_message = nil, customer_balance_amount_used = nil, base_customer_balance_amount_used = nil, use_customer_balance = nil, gift_cards_amount = nil, base_gift_cards_amount = nil, gift_cards_amount_used = nil, use_reward_points = nil, reward_points_balance = nil, base_reward_currency_amount = nil, reward_currency_amount = nil, shipping_address = nil, billing_address = nil, items = nil, payment = nil)
    @store_id = store_id
    @created_at = created_at
    @updated_at = updated_at
    @converted_at = converted_at
    @quote_id = quote_id
    @is_active = is_active
    @is_virtual = is_virtual
    @is_multi_shipping = is_multi_shipping
    @items_count = items_count
    @items_qty = items_qty
    @orig_order_id = orig_order_id
    @store_to_base_rate = store_to_base_rate
    @store_to_quote_rate = store_to_quote_rate
    @base_currency_code = base_currency_code
    @store_currency_code = store_currency_code
    @quote_currency_code = quote_currency_code
    @grand_total = grand_total
    @base_grand_total = base_grand_total
    @checkout_method = checkout_method
    @customer_id = customer_id
    @customer_tax_class_id = customer_tax_class_id
    @customer_group_id = customer_group_id
    @customer_email = customer_email
    @customer_prefix = customer_prefix
    @customer_firstname = customer_firstname
    @customer_middlename = customer_middlename
    @customer_lastname = customer_lastname
    @customer_suffix = customer_suffix
    @customer_note = customer_note
    @customer_note_notify = customer_note_notify
    @customer_is_guest = customer_is_guest
    @applied_rule_ids = applied_rule_ids
    @reserved_order_id = reserved_order_id
    @password_hash = password_hash
    @coupon_code = coupon_code
    @global_currency_code = global_currency_code
    @base_to_global_rate = base_to_global_rate
    @base_to_quote_rate = base_to_quote_rate
    @customer_taxvat = customer_taxvat
    @customer_gender = customer_gender
    @subtotal = subtotal
    @base_subtotal = base_subtotal
    @subtotal_with_discount = subtotal_with_discount
    @base_subtotal_with_discount = base_subtotal_with_discount
    @ext_shipping_info = ext_shipping_info
    @gift_message_id = gift_message_id
    @gift_message = gift_message
    @customer_balance_amount_used = customer_balance_amount_used
    @base_customer_balance_amount_used = base_customer_balance_amount_used
    @use_customer_balance = use_customer_balance
    @gift_cards_amount = gift_cards_amount
    @base_gift_cards_amount = base_gift_cards_amount
    @gift_cards_amount_used = gift_cards_amount_used
    @use_reward_points = use_reward_points
    @reward_points_balance = reward_points_balance
    @base_reward_currency_amount = base_reward_currency_amount
    @reward_currency_amount = reward_currency_amount
    @shipping_address = shipping_address
    @billing_address = billing_address
    @items = items
    @payment = payment
  end
end

# {urn:Magento}shoppingCartTotalsEntity
#   title - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
class ShoppingCartTotalsEntity
  attr_accessor :title
  attr_accessor :amount

  def initialize(title = nil, amount = nil)
    @title = title
    @amount = amount
  end
end

# {urn:Magento}shoppingCartTotalsEntityArray
class ShoppingCartTotalsEntityArray < ::Array
end

# {urn:Magento}shoppingCartLicenseEntity
#   agreement_id - SOAP::SOAPString
#   name - SOAP::SOAPString
#   content - SOAP::SOAPString
#   is_active - SOAP::SOAPInt
#   is_html - SOAP::SOAPInt
class ShoppingCartLicenseEntity
  attr_accessor :agreement_id
  attr_accessor :name
  attr_accessor :content
  attr_accessor :is_active
  attr_accessor :is_html

  def initialize(agreement_id = nil, name = nil, content = nil, is_active = nil, is_html = nil)
    @agreement_id = agreement_id
    @name = name
    @content = content
    @is_active = is_active
    @is_html = is_html
  end
end

# {urn:Magento}shoppingCartLicenseEntityArray
class ShoppingCartLicenseEntityArray < ::Array
end

# {urn:Magento}shoppingCartProductEntity
#   product_id - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   qty - SOAP::SOAPDouble
#   options - AssociativeArray
#   bundle_option - AssociativeArray
#   bundle_option_qty - AssociativeArray
#   links - ArrayOfString
class ShoppingCartProductEntity
  attr_accessor :product_id
  attr_accessor :sku
  attr_accessor :qty
  attr_accessor :options
  attr_accessor :bundle_option
  attr_accessor :bundle_option_qty
  attr_accessor :links

  def initialize(product_id = nil, sku = nil, qty = nil, options = nil, bundle_option = nil, bundle_option_qty = nil, links = nil)
    @product_id = product_id
    @sku = sku
    @qty = qty
    @options = options
    @bundle_option = bundle_option
    @bundle_option_qty = bundle_option_qty
    @links = links
  end
end

# {urn:Magento}shoppingCartProductEntityArray
class ShoppingCartProductEntityArray < ::Array
end

# {urn:Magento}shoppingCartProductResponseEntityArray
class ShoppingCartProductResponseEntityArray < ::Array
end

# {urn:Magento}shoppingCartCustomerEntity
#   mode - SOAP::SOAPString
#   customer_id - SOAP::SOAPInt
#   email - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   password - SOAP::SOAPString
#   confirmation - SOAP::SOAPString
#   website_id - SOAP::SOAPInt
#   store_id - SOAP::SOAPInt
#   group_id - SOAP::SOAPInt
class ShoppingCartCustomerEntity
  attr_accessor :mode
  attr_accessor :customer_id
  attr_accessor :email
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :password
  attr_accessor :confirmation
  attr_accessor :website_id
  attr_accessor :store_id
  attr_accessor :group_id

  def initialize(mode = nil, customer_id = nil, email = nil, firstname = nil, lastname = nil, password = nil, confirmation = nil, website_id = nil, store_id = nil, group_id = nil)
    @mode = mode
    @customer_id = customer_id
    @email = email
    @firstname = firstname
    @lastname = lastname
    @password = password
    @confirmation = confirmation
    @website_id = website_id
    @store_id = store_id
    @group_id = group_id
  end
end

# {urn:Magento}shoppingCartCustomerAddressEntity
#   mode - SOAP::SOAPString
#   address_id - SOAP::SOAPString
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   company - SOAP::SOAPString
#   street - SOAP::SOAPString
#   city - SOAP::SOAPString
#   region - SOAP::SOAPString
#   region_id - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   country_id - SOAP::SOAPString
#   telephone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   is_default_billing - SOAP::SOAPInt
#   is_default_shipping - SOAP::SOAPInt
class ShoppingCartCustomerAddressEntity
  attr_accessor :mode
  attr_accessor :address_id
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :company
  attr_accessor :street
  attr_accessor :city
  attr_accessor :region
  attr_accessor :region_id
  attr_accessor :postcode
  attr_accessor :country_id
  attr_accessor :telephone
  attr_accessor :fax
  attr_accessor :is_default_billing
  attr_accessor :is_default_shipping

  def initialize(mode = nil, address_id = nil, firstname = nil, lastname = nil, company = nil, street = nil, city = nil, region = nil, region_id = nil, postcode = nil, country_id = nil, telephone = nil, fax = nil, is_default_billing = nil, is_default_shipping = nil)
    @mode = mode
    @address_id = address_id
    @firstname = firstname
    @lastname = lastname
    @company = company
    @street = street
    @city = city
    @region = region
    @region_id = region_id
    @postcode = postcode
    @country_id = country_id
    @telephone = telephone
    @fax = fax
    @is_default_billing = is_default_billing
    @is_default_shipping = is_default_shipping
  end
end

# {urn:Magento}shoppingCartCustomerAddressEntityArray
class ShoppingCartCustomerAddressEntityArray < ::Array
end

# {urn:Magento}shoppingCartShippingMethodEntity
#   code - SOAP::SOAPString
#   carrier - SOAP::SOAPString
#   carrier_title - SOAP::SOAPString
#   method - SOAP::SOAPString
#   method_title - SOAP::SOAPString
#   method_description - SOAP::SOAPString
#   price - SOAP::SOAPDouble
class ShoppingCartShippingMethodEntity
  attr_accessor :code
  attr_accessor :carrier
  attr_accessor :carrier_title
  attr_accessor :method
  attr_accessor :method_title
  attr_accessor :method_description
  attr_accessor :price

  def initialize(code = nil, carrier = nil, carrier_title = nil, method = nil, method_title = nil, method_description = nil, price = nil)
    @code = code
    @carrier = carrier
    @carrier_title = carrier_title
    @method = method
    @method_title = method_title
    @method_description = method_description
    @price = price
  end
end

# {urn:Magento}shoppingCartShippingMethodEntityArray
class ShoppingCartShippingMethodEntityArray < ::Array
end

# {urn:Magento}shoppingCartPaymentMethodEntity
#   po_number - SOAP::SOAPString
#   method - SOAP::SOAPString
#   cc_cid - SOAP::SOAPString
#   cc_owner - SOAP::SOAPString
#   cc_number - SOAP::SOAPString
#   cc_type - SOAP::SOAPString
#   cc_exp_year - SOAP::SOAPString
#   cc_exp_month - SOAP::SOAPString
class ShoppingCartPaymentMethodEntity
  attr_accessor :po_number
  attr_accessor :method
  attr_accessor :cc_cid
  attr_accessor :cc_owner
  attr_accessor :cc_number
  attr_accessor :cc_type
  attr_accessor :cc_exp_year
  attr_accessor :cc_exp_month

  def initialize(po_number = nil, method = nil, cc_cid = nil, cc_owner = nil, cc_number = nil, cc_type = nil, cc_exp_year = nil, cc_exp_month = nil)
    @po_number = po_number
    @method = method
    @cc_cid = cc_cid
    @cc_owner = cc_owner
    @cc_number = cc_number
    @cc_type = cc_type
    @cc_exp_year = cc_exp_year
    @cc_exp_month = cc_exp_month
  end
end

# {urn:Magento}shoppingCartPaymentMethodResponseEntityArray
#   code - SOAP::SOAPString
#   title - SOAP::SOAPString
#   cc_types - AssociativeArray
class ShoppingCartPaymentMethodResponseEntityArray
  attr_accessor :code
  attr_accessor :title
  attr_accessor :cc_types

  def initialize(code = nil, title = nil, cc_types = nil)
    @code = code
    @title = title
    @cc_types = cc_types
  end
end

# {urn:Magento}catalogProductTagListEntity
#   tag_id - SOAP::SOAPString
#   name - SOAP::SOAPString
class CatalogProductTagListEntity
  attr_accessor :tag_id
  attr_accessor :name

  def initialize(tag_id = nil, name = nil)
    @tag_id = tag_id
    @name = name
  end
end

# {urn:Magento}catalogProductTagListEntityArray
class CatalogProductTagListEntityArray < ::Array
end

# {urn:Magento}catalogProductTagAddEntity
#   tag - SOAP::SOAPString
#   product_id - SOAP::SOAPString
#   customer_id - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductTagAddEntity
  attr_accessor :tag
  attr_accessor :product_id
  attr_accessor :customer_id
  attr_accessor :store

  def initialize(tag = nil, product_id = nil, customer_id = nil, store = nil)
    @tag = tag
    @product_id = product_id
    @customer_id = customer_id
    @store = store
  end
end

# {urn:Magento}catalogProductTagUpdateEntity
#   name - SOAP::SOAPString
#   status - SOAP::SOAPString
#   base_popularity - SOAP::SOAPString
class CatalogProductTagUpdateEntity
  attr_accessor :name
  attr_accessor :status
  attr_accessor :base_popularity

  def initialize(name = nil, status = nil, base_popularity = nil)
    @name = name
    @status = status
    @base_popularity = base_popularity
  end
end

# {urn:Magento}catalogProductTagInfoEntity
#   name - SOAP::SOAPString
#   status - SOAP::SOAPString
#   base_popularity - SOAP::SOAPString
#   products - AssociativeArray
class CatalogProductTagInfoEntity
  attr_accessor :name
  attr_accessor :status
  attr_accessor :base_popularity
  attr_accessor :products

  def initialize(name = nil, status = nil, base_popularity = nil, products = nil)
    @name = name
    @status = status
    @base_popularity = base_popularity
    @products = products
  end
end

# {urn:Magento}giftMessageEntity
#   from - SOAP::SOAPString
#   to - SOAP::SOAPString
#   message - SOAP::SOAPString
class GiftMessageEntity
  attr_accessor :from
  attr_accessor :to
  attr_accessor :message

  def initialize(from = nil, to = nil, message = nil)
    @from = from
    @to = to
    @message = message
  end
end

# {urn:Magento}giftMessageResponse
#   entityId - SOAP::SOAPString
#   result - SOAP::SOAPBoolean
#   error - SOAP::SOAPString
class GiftMessageResponse
  attr_accessor :entityId
  attr_accessor :result
  attr_accessor :error

  def initialize(entityId = nil, result = nil, error = nil)
    @entityId = entityId
    @result = result
    @error = error
  end
end

# {urn:Magento}giftMessageResponseArray
class GiftMessageResponseArray < ::Array
end

# {urn:Magento}giftMessageAssociativeProductsEntity
#   product - ShoppingCartProductEntity
#   message - GiftMessageEntity
class GiftMessageAssociativeProductsEntity
  attr_accessor :product
  attr_accessor :message

  def initialize(product = nil, message = nil)
    @product = product
    @message = message
  end
end

# {urn:Magento}giftMessageAssociativeProductsEntityArray
class GiftMessageAssociativeProductsEntityArray < ::Array
end

# {urn:Magento}catalogProductDownloadableLinkFileEntity
#   name - SOAP::SOAPString
#   base64_content - SOAP::SOAPString
class CatalogProductDownloadableLinkFileEntity
  attr_accessor :name
  attr_accessor :base64_content

  def initialize(name = nil, base64_content = nil)
    @name = name
    @base64_content = base64_content
  end
end

# {urn:Magento}catalogProductDownloadableLinkAddSampleEntity
#   type - SOAP::SOAPString
#   file - CatalogProductDownloadableLinkFileEntity
#   url - SOAP::SOAPString
class CatalogProductDownloadableLinkAddSampleEntity
  attr_accessor :type
  attr_accessor :file
  attr_accessor :url

  def initialize(type = nil, file = nil, url = nil)
    @type = type
    @file = file
    @url = url
  end
end

# {urn:Magento}catalogProductDownloadableLinkAddEntity
#   title - SOAP::SOAPString
#   price - SOAP::SOAPString
#   is_unlimited - SOAP::SOAPInt
#   number_of_downloads - SOAP::SOAPInt
#   is_shareable - SOAP::SOAPInt
#   sample - CatalogProductDownloadableLinkAddSampleEntity
#   type - SOAP::SOAPString
#   file - CatalogProductDownloadableLinkFileEntity
#   link_url - SOAP::SOAPString
#   sample_url - SOAP::SOAPString
#   sort_order - SOAP::SOAPInt
class CatalogProductDownloadableLinkAddEntity
  attr_accessor :title
  attr_accessor :price
  attr_accessor :is_unlimited
  attr_accessor :number_of_downloads
  attr_accessor :is_shareable
  attr_accessor :sample
  attr_accessor :type
  attr_accessor :file
  attr_accessor :link_url
  attr_accessor :sample_url
  attr_accessor :sort_order

  def initialize(title = nil, price = nil, is_unlimited = nil, number_of_downloads = nil, is_shareable = nil, sample = nil, type = nil, file = nil, link_url = nil, sample_url = nil, sort_order = nil)
    @title = title
    @price = price
    @is_unlimited = is_unlimited
    @number_of_downloads = number_of_downloads
    @is_shareable = is_shareable
    @sample = sample
    @type = type
    @file = file
    @link_url = link_url
    @sample_url = sample_url
    @sort_order = sort_order
  end
end

# {urn:Magento}catalogProductDownloadableLinkFileInfoEntity
#   file - SOAP::SOAPString
#   name - SOAP::SOAPString
#   size - SOAP::SOAPInt
#   status - SOAP::SOAPString
class CatalogProductDownloadableLinkFileInfoEntity
  attr_accessor :file
  attr_accessor :name
  attr_accessor :size
  attr_accessor :status

  def initialize(file = nil, name = nil, size = nil, status = nil)
    @file = file
    @name = name
    @size = size
    @status = status
  end
end

# {urn:Magento}catalogProductDownloadableLinkFileInfoEntityArray
class CatalogProductDownloadableLinkFileInfoEntityArray < ::Array
end

# {urn:Magento}catalogProductDownloadableLinkEntity
#   link_id - SOAP::SOAPString
#   title - SOAP::SOAPString
#   price - SOAP::SOAPString
#   number_of_downloads - SOAP::SOAPInt
#   is_unlimited - SOAP::SOAPInt
#   is_shareable - SOAP::SOAPInt
#   link_url - SOAP::SOAPString
#   link_type - SOAP::SOAPString
#   sample_file - SOAP::SOAPString
#   sample_url - SOAP::SOAPString
#   sample_type - SOAP::SOAPString
#   sort_order - SOAP::SOAPInt
#   file_save - CatalogProductDownloadableLinkFileInfoEntityArray
#   sample_file_save - CatalogProductDownloadableLinkFileInfoEntityArray
class CatalogProductDownloadableLinkEntity
  attr_accessor :link_id
  attr_accessor :title
  attr_accessor :price
  attr_accessor :number_of_downloads
  attr_accessor :is_unlimited
  attr_accessor :is_shareable
  attr_accessor :link_url
  attr_accessor :link_type
  attr_accessor :sample_file
  attr_accessor :sample_url
  attr_accessor :sample_type
  attr_accessor :sort_order
  attr_accessor :file_save
  attr_accessor :sample_file_save

  def initialize(link_id = nil, title = nil, price = nil, number_of_downloads = nil, is_unlimited = nil, is_shareable = nil, link_url = nil, link_type = nil, sample_file = nil, sample_url = nil, sample_type = nil, sort_order = nil, file_save = nil, sample_file_save = nil)
    @link_id = link_id
    @title = title
    @price = price
    @number_of_downloads = number_of_downloads
    @is_unlimited = is_unlimited
    @is_shareable = is_shareable
    @link_url = link_url
    @link_type = link_type
    @sample_file = sample_file
    @sample_url = sample_url
    @sample_type = sample_type
    @sort_order = sort_order
    @file_save = file_save
    @sample_file_save = sample_file_save
  end
end

# {urn:Magento}catalogProductDownloadableLinkEntityArray
class CatalogProductDownloadableLinkEntityArray < ::Array
end

# {urn:Magento}catalogProductDownloadableLinkSampleEntity
#   sample_id - SOAP::SOAPString
#   product_id - SOAP::SOAPString
#   sample_file - SOAP::SOAPString
#   sample_url - SOAP::SOAPString
#   sample_type - SOAP::SOAPString
#   sort_order - SOAP::SOAPString
#   default_title - SOAP::SOAPString
#   store_title - SOAP::SOAPString
#   title - SOAP::SOAPString
class CatalogProductDownloadableLinkSampleEntity
  attr_accessor :sample_id
  attr_accessor :product_id
  attr_accessor :sample_file
  attr_accessor :sample_url
  attr_accessor :sample_type
  attr_accessor :sort_order
  attr_accessor :default_title
  attr_accessor :store_title
  attr_accessor :title

  def initialize(sample_id = nil, product_id = nil, sample_file = nil, sample_url = nil, sample_type = nil, sort_order = nil, default_title = nil, store_title = nil, title = nil)
    @sample_id = sample_id
    @product_id = product_id
    @sample_file = sample_file
    @sample_url = sample_url
    @sample_type = sample_type
    @sort_order = sort_order
    @default_title = default_title
    @store_title = store_title
    @title = title
  end
end

# {urn:Magento}catalogProductDownloadableLinkSampleEntityArray
class CatalogProductDownloadableLinkSampleEntityArray < ::Array
end

# {urn:Magento}catalogProductDownloadableLinkListEntity
#   links - CatalogProductDownloadableLinkEntityArray
#   samples - CatalogProductDownloadableLinkSampleEntityArray
class CatalogProductDownloadableLinkListEntity
  attr_accessor :links
  attr_accessor :samples

  def initialize(links = nil, samples = nil)
    @links = links
    @samples = samples
  end
end

# {urn:Magento}enterpriseCustomerbalanceHistoryItemEntity
#   history_id - SOAP::SOAPString
#   balance_id - SOAP::SOAPString
#   updated_at - SOAP::SOAPString
#   action - SOAP::SOAPString
#   balance_amount - SOAP::SOAPString
#   balance_delta - SOAP::SOAPString
#   additional_info - SOAP::SOAPString
#   is_customer_notified - SOAP::SOAPString
#   customer_id - SOAP::SOAPString
#   website_id - SOAP::SOAPString
#   base_currency_code - SOAP::SOAPString
class EnterpriseCustomerbalanceHistoryItemEntity
  attr_accessor :history_id
  attr_accessor :balance_id
  attr_accessor :updated_at
  attr_accessor :action
  attr_accessor :balance_amount
  attr_accessor :balance_delta
  attr_accessor :additional_info
  attr_accessor :is_customer_notified
  attr_accessor :customer_id
  attr_accessor :website_id
  attr_accessor :base_currency_code

  def initialize(history_id = nil, balance_id = nil, updated_at = nil, action = nil, balance_amount = nil, balance_delta = nil, additional_info = nil, is_customer_notified = nil, customer_id = nil, website_id = nil, base_currency_code = nil)
    @history_id = history_id
    @balance_id = balance_id
    @updated_at = updated_at
    @action = action
    @balance_amount = balance_amount
    @balance_delta = balance_delta
    @additional_info = additional_info
    @is_customer_notified = is_customer_notified
    @customer_id = customer_id
    @website_id = website_id
    @base_currency_code = base_currency_code
  end
end

# {urn:Magento}enterpriseCustomerbalanceHistoryItemEntityArray
class EnterpriseCustomerbalanceHistoryItemEntityArray < ::Array
end

# {urn:Magento}giftcardAccountCreateGiftcardAccountData
#   status - SOAP::SOAPString
#   date_expires - SOAP::SOAPString
#   website_id - SOAP::SOAPString
#   balance - SOAP::SOAPString
#   state - SOAP::SOAPString
#   is_redeemable - SOAP::SOAPString
class GiftcardAccountCreateGiftcardAccountData
  attr_accessor :status
  attr_accessor :date_expires
  attr_accessor :website_id
  attr_accessor :balance
  attr_accessor :state
  attr_accessor :is_redeemable

  def initialize(status = nil, date_expires = nil, website_id = nil, balance = nil, state = nil, is_redeemable = nil)
    @status = status
    @date_expires = date_expires
    @website_id = website_id
    @balance = balance
    @state = state
    @is_redeemable = is_redeemable
  end
end

# {urn:Magento}giftcardAccountCreateNotificationData
#   recipient_name - SOAP::SOAPString
#   recipient_email - SOAP::SOAPString
#   recipient_store - SOAP::SOAPString
class GiftcardAccountCreateNotificationData
  attr_accessor :recipient_name
  attr_accessor :recipient_email
  attr_accessor :recipient_store

  def initialize(recipient_name = nil, recipient_email = nil, recipient_store = nil)
    @recipient_name = recipient_name
    @recipient_email = recipient_email
    @recipient_store = recipient_store
  end
end

# {urn:Magento}giftcardAccountEntity
#   giftcard_id - SOAP::SOAPInt
#   code - SOAP::SOAPString
#   store_id - SOAP::SOAPInt
#   date_created - SOAP::SOAPString
#   expire_date - SOAP::SOAPString
#   is_active - SOAP::SOAPInt
#   is_redeemable - SOAP::SOAPInt
#   status - SOAP::SOAPString
#   balance - SOAP::SOAPDouble
#   history - GiftcardAccountEntityHistoryArray
class GiftcardAccountEntity
  attr_accessor :giftcard_id
  attr_accessor :code
  attr_accessor :store_id
  attr_accessor :date_created
  attr_accessor :expire_date
  attr_accessor :is_active
  attr_accessor :is_redeemable
  attr_accessor :status
  attr_accessor :balance
  attr_accessor :history

  def initialize(giftcard_id = nil, code = nil, store_id = nil, date_created = nil, expire_date = nil, is_active = nil, is_redeemable = nil, status = nil, balance = nil, history = nil)
    @giftcard_id = giftcard_id
    @code = code
    @store_id = store_id
    @date_created = date_created
    @expire_date = expire_date
    @is_active = is_active
    @is_redeemable = is_redeemable
    @status = status
    @balance = balance
    @history = history
  end
end

# {urn:Magento}giftcardAccountEntityArray
class GiftcardAccountEntityArray < ::Array
end

# {urn:Magento}giftcardAccountEntityHistory
#   record_id - SOAP::SOAPInt
#   date - SOAP::SOAPString
#   action - SOAP::SOAPString
#   balance_delta - SOAP::SOAPDouble
#   balance - SOAP::SOAPDouble
#   info - SOAP::SOAPString
class GiftcardAccountEntityHistory
  attr_accessor :record_id
  attr_accessor :date
  attr_accessor :action
  attr_accessor :balance_delta
  attr_accessor :balance
  attr_accessor :info

  def initialize(record_id = nil, date = nil, action = nil, balance_delta = nil, balance = nil, info = nil)
    @record_id = record_id
    @date = date
    @action = action
    @balance_delta = balance_delta
    @balance = balance
    @info = info
  end
end

# {urn:Magento}giftcardAccountEntityHistoryArray
class GiftcardAccountEntityHistoryArray < ::Array
end

# {urn:Magento}giftcardAccountEntityToUpdate
#   is_active - SOAP::SOAPBoolean
#   is_redeemable - SOAP::SOAPBoolean
#   store_id - SOAP::SOAPInt
#   balance - SOAP::SOAPDouble
#   date_expires - SOAP::SOAPString
class GiftcardAccountEntityToUpdate
  attr_accessor :is_active
  attr_accessor :is_redeemable
  attr_accessor :store_id
  attr_accessor :balance
  attr_accessor :date_expires

  def initialize(is_active = nil, is_redeemable = nil, store_id = nil, balance = nil, date_expires = nil)
    @is_active = is_active
    @is_redeemable = is_redeemable
    @store_id = store_id
    @balance = balance
    @date_expires = date_expires
  end
end

# {urn:Magento}giftcardCustomerEntity
#   balance - SOAP::SOAPDouble
#   expire_date - SOAP::SOAPString
class GiftcardCustomerEntity
  attr_accessor :balance
  attr_accessor :expire_date

  def initialize(balance = nil, expire_date = nil)
    @balance = balance
    @expire_date = expire_date
  end
end

# {urn:Magento}enterpriseGiftcardaccountListEntity
#   giftcardaccount_id - SOAP::SOAPString
#   code - SOAP::SOAPString
#   used_amount - SOAP::SOAPString
#   base_amount - SOAP::SOAPString
class EnterpriseGiftcardaccountListEntity
  attr_accessor :giftcardaccount_id
  attr_accessor :code
  attr_accessor :used_amount
  attr_accessor :base_amount

  def initialize(giftcardaccount_id = nil, code = nil, used_amount = nil, base_amount = nil)
    @giftcardaccount_id = giftcardaccount_id
    @code = code
    @used_amount = used_amount
    @base_amount = base_amount
  end
end

# {urn:Magento}enterpriseGiftcardaccountListEntityArray
class EnterpriseGiftcardaccountListEntityArray < ::Array
end

# {urn:Magento}callParam
#   sessionId - SOAP::SOAPString
#   apiPath - SOAP::SOAPString
#   args - (any)
class CallParam
  attr_accessor :sessionId
  attr_accessor :apiPath
  attr_accessor :args

  def initialize(sessionId = nil, apiPath = nil, args = nil)
    @sessionId = sessionId
    @apiPath = apiPath
    @args = args
  end
end

# {urn:Magento}callResponseParam
#   result - (any)
class CallResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}multiCallParam
#   sessionId - SOAP::SOAPString
#   calls - (any)
#   options - (any)
class MultiCallParam
  attr_accessor :sessionId
  attr_accessor :calls
  attr_accessor :options

  def initialize(sessionId = nil, calls = nil, options = nil)
    @sessionId = sessionId
    @calls = calls
    @options = options
  end
end

# {urn:Magento}multiCallResponseParam
#   result - (any)
class MultiCallResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}endSessionParam
#   sessionId - SOAP::SOAPString
class EndSessionParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}endSessionResponseParam
#   result - SOAP::SOAPBoolean
class EndSessionResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}loginParam
#   username - SOAP::SOAPString
#   apiKey - SOAP::SOAPString
class LoginParam
  attr_accessor :username
  attr_accessor :apiKey

  def initialize(username = nil, apiKey = nil)
    @username = username
    @apiKey = apiKey
  end
end

# {urn:Magento}loginResponseParam
#   result - SOAP::SOAPString
class LoginResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}resourcesRequestParam
#   sessionId - SOAP::SOAPString
class ResourcesRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}resourcesResponseParam
#   result - ArrayOfApis
class ResourcesResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}globalFaultsParam
#   sessionId - SOAP::SOAPString
class GlobalFaultsParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}globalFaultsResponseParam
#   result - ArrayOfExistsFaltures
class GlobalFaultsResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}resourceFaultsParam
#   sessionId - SOAP::SOAPString
#   resourceName - SOAP::SOAPString
class ResourceFaultsParam
  attr_accessor :sessionId
  attr_accessor :resourceName

  def initialize(sessionId = nil, resourceName = nil)
    @sessionId = sessionId
    @resourceName = resourceName
  end
end

# {urn:Magento}resourceFaultsResponseParam
#   result - ArrayOfExistsFaltures
class ResourceFaultsResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}startSessionResponseParam
#   result - SOAP::SOAPString
class StartSessionResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}storeListRequestParam
#   sessionId - SOAP::SOAPString
class StoreListRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}storeListResponseParam
#   result - StoreEntityArray
class StoreListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}storeInfoRequestParam
#   sessionId - SOAP::SOAPString
#   storeId - SOAP::SOAPString
class StoreInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :storeId

  def initialize(sessionId = nil, storeId = nil)
    @sessionId = sessionId
    @storeId = storeId
  end
end

# {urn:Magento}storeInfoResponseParam
#   result - StoreEntity
class StoreInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}magentoInfoRequestParam
#   sessionId - SOAP::SOAPString
class MagentoInfoRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}magentoInfoResponseParam
#   result - MagentoInfoEntity
class MagentoInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}directoryCountryListRequestParam
#   sessionId - SOAP::SOAPString
class DirectoryCountryListRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}directoryCountryListResponseParam
#   result - DirectoryCountryEntityArray
class DirectoryCountryListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}directoryRegionListRequestParam
#   sessionId - SOAP::SOAPString
#   country - SOAP::SOAPString
class DirectoryRegionListRequestParam
  attr_accessor :sessionId
  attr_accessor :country

  def initialize(sessionId = nil, country = nil)
    @sessionId = sessionId
    @country = country
  end
end

# {urn:Magento}directoryRegionListResponseParam
#   result - DirectoryRegionEntityArray
class DirectoryRegionListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerCustomerListRequestParam
#   sessionId - SOAP::SOAPString
#   filters - Filters
class CustomerCustomerListRequestParam
  attr_accessor :sessionId
  attr_accessor :filters

  def initialize(sessionId = nil, filters = nil)
    @sessionId = sessionId
    @filters = filters
  end
end

# {urn:Magento}customerCustomerListResponseParam
#   result - CustomerCustomerEntityArray
class CustomerCustomerListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerCustomerCreateRequestParam
#   sessionId - SOAP::SOAPString
#   customerData - CustomerCustomerEntityToCreate
class CustomerCustomerCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :customerData

  def initialize(sessionId = nil, customerData = nil)
    @sessionId = sessionId
    @customerData = customerData
  end
end

# {urn:Magento}customerCustomerCreateResponseParam
#   result - SOAP::SOAPInt
class CustomerCustomerCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerCustomerInfoRequestParam
#   sessionId - SOAP::SOAPString
#   customerId - SOAP::SOAPInt
#   attributes - ArrayOfString
class CustomerCustomerInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :customerId
  attr_accessor :attributes

  def initialize(sessionId = nil, customerId = nil, attributes = nil)
    @sessionId = sessionId
    @customerId = customerId
    @attributes = attributes
  end
end

# {urn:Magento}customerCustomerInfoResponseParam
#   result - CustomerCustomerEntity
class CustomerCustomerInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerCustomerUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   customerId - SOAP::SOAPInt
#   customerData - CustomerCustomerEntityToCreate
class CustomerCustomerUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :customerId
  attr_accessor :customerData

  def initialize(sessionId = nil, customerId = nil, customerData = nil)
    @sessionId = sessionId
    @customerId = customerId
    @customerData = customerData
  end
end

# {urn:Magento}customerCustomerUpdateResponseParam
#   result - SOAP::SOAPBoolean
class CustomerCustomerUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerCustomerDeleteRequestParam
#   sessionId - SOAP::SOAPString
#   customerId - SOAP::SOAPInt
class CustomerCustomerDeleteRequestParam
  attr_accessor :sessionId
  attr_accessor :customerId

  def initialize(sessionId = nil, customerId = nil)
    @sessionId = sessionId
    @customerId = customerId
  end
end

# {urn:Magento}customerCustomerDeleteResponseParam
#   result - SOAP::SOAPBoolean
class CustomerCustomerDeleteResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerGroupListRequestParam
#   sessionId - SOAP::SOAPString
class CustomerGroupListRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}customerGroupListResponseParam
#   result - CustomerGroupEntityArray
class CustomerGroupListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerAddressListRequestParam
#   sessionId - SOAP::SOAPString
#   customerId - SOAP::SOAPInt
class CustomerAddressListRequestParam
  attr_accessor :sessionId
  attr_accessor :customerId

  def initialize(sessionId = nil, customerId = nil)
    @sessionId = sessionId
    @customerId = customerId
  end
end

# {urn:Magento}customerAddressListResponseParam
#   result - CustomerAddressEntityArray
class CustomerAddressListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerAddressCreateRequestParam
#   sessionId - SOAP::SOAPString
#   customerId - SOAP::SOAPInt
#   addressData - CustomerAddressEntityCreate
class CustomerAddressCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :customerId
  attr_accessor :addressData

  def initialize(sessionId = nil, customerId = nil, addressData = nil)
    @sessionId = sessionId
    @customerId = customerId
    @addressData = addressData
  end
end

# {urn:Magento}customerAddressCreateResponseParam
#   result - SOAP::SOAPInt
class CustomerAddressCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerAddressInfoRequestParam
#   sessionId - SOAP::SOAPString
#   addressId - SOAP::SOAPInt
class CustomerAddressInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :addressId

  def initialize(sessionId = nil, addressId = nil)
    @sessionId = sessionId
    @addressId = addressId
  end
end

# {urn:Magento}customerAddressInfoResponseParam
#   result - CustomerAddressEntityItem
class CustomerAddressInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerAddressUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   addressId - SOAP::SOAPInt
#   addressData - CustomerAddressEntityCreate
class CustomerAddressUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :addressId
  attr_accessor :addressData

  def initialize(sessionId = nil, addressId = nil, addressData = nil)
    @sessionId = sessionId
    @addressId = addressId
    @addressData = addressData
  end
end

# {urn:Magento}customerAddressUpdateResponseParam
#   result - SOAP::SOAPBoolean
class CustomerAddressUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}customerAddressDeleteRequestParam
#   sessionId - SOAP::SOAPString
#   addressId - SOAP::SOAPInt
class CustomerAddressDeleteRequestParam
  attr_accessor :sessionId
  attr_accessor :addressId

  def initialize(sessionId = nil, addressId = nil)
    @sessionId = sessionId
    @addressId = addressId
  end
end

# {urn:Magento}customerAddressDeleteResponseParam
#   result - SOAP::SOAPBoolean
class CustomerAddressDeleteResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCurrentStoreRequestParam
#   sessionId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductCurrentStoreRequestParam
  attr_accessor :sessionId
  attr_accessor :store

  def initialize(sessionId = nil, store = nil)
    @sessionId = sessionId
    @store = store
  end
end

# {urn:Magento}catalogProductCurrentStoreResponseParam
#   result - SOAP::SOAPInt
class CatalogProductCurrentStoreResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductListRequestParam
#   sessionId - SOAP::SOAPString
#   filters - Filters
#   store - SOAP::SOAPString
class CatalogProductListRequestParam
  attr_accessor :sessionId
  attr_accessor :filters
  attr_accessor :store

  def initialize(sessionId = nil, filters = nil, store = nil)
    @sessionId = sessionId
    @filters = filters
    @store = store
  end
end

# {urn:Magento}catalogProductListResponseParam
#   result - CatalogProductEntityArray
class CatalogProductListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductInfoRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   store - SOAP::SOAPString
#   attributes - CatalogProductRequestAttributes
#   identifierType - SOAP::SOAPString
class CatalogProductInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :store
  attr_accessor :attributes
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, store = nil, attributes = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @store = store
    @attributes = attributes
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductInfoResponseParam
#   result - CatalogProductReturnEntity
class CatalogProductInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCreateRequestParam
#   sessionId - SOAP::SOAPString
#   type - SOAP::SOAPString
#   set - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   productData - CatalogProductCreateEntity
#   store - SOAP::SOAPString
class CatalogProductCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :type
  attr_accessor :set
  attr_accessor :sku
  attr_accessor :productData
  attr_accessor :store

  def initialize(sessionId = nil, type = nil, set = nil, sku = nil, productData = nil, store = nil)
    @sessionId = sessionId
    @type = type
    @set = set
    @sku = sku
    @productData = productData
    @store = store
  end
end

# {urn:Magento}catalogProductCreateResponseParam
#   result - SOAP::SOAPInt
class CatalogProductCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   productData - CatalogProductCreateEntity
#   store - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :productData
  attr_accessor :store
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, productData = nil, store = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @productData = productData
    @store = store
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductUpdateResponseParam
#   result - SOAP::SOAPBoolean
class CatalogProductUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductSetSpecialPriceRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   specialPrice - SOAP::SOAPString
#   fromDate - SOAP::SOAPString
#   toDate - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductSetSpecialPriceRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :specialPrice
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :store

  def initialize(sessionId = nil, productId = nil, specialPrice = nil, fromDate = nil, toDate = nil, store = nil)
    @sessionId = sessionId
    @productId = productId
    @specialPrice = specialPrice
    @fromDate = fromDate
    @toDate = toDate
    @store = store
  end
end

# {urn:Magento}catalogProductSetSpecialPriceResponseParam
#   result - SOAP::SOAPInt
class CatalogProductSetSpecialPriceResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductGetSpecialPriceRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductGetSpecialPriceRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :store

  def initialize(sessionId = nil, productId = nil, store = nil)
    @sessionId = sessionId
    @productId = productId
    @store = store
  end
end

# {urn:Magento}catalogProductGetSpecialPriceResponseParam
#   result - CatalogProductReturnEntity
class CatalogProductGetSpecialPriceResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductDeleteRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductDeleteRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductDeleteResponseParam
#   result - SOAP::SOAPInt
class CatalogProductDeleteResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeCurrentStoreRequestParam
#   sessionId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductAttributeCurrentStoreRequestParam
  attr_accessor :sessionId
  attr_accessor :store

  def initialize(sessionId = nil, store = nil)
    @sessionId = sessionId
    @store = store
  end
end

# {urn:Magento}catalogProductAttributeCurrentStoreResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeCurrentStoreResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeListRequestParam
#   sessionId - SOAP::SOAPString
#   setId - SOAP::SOAPInt
class CatalogProductAttributeListRequestParam
  attr_accessor :sessionId
  attr_accessor :setId

  def initialize(sessionId = nil, setId = nil)
    @sessionId = sessionId
    @setId = setId
  end
end

# {urn:Magento}catalogProductAttributeListResponseParam
#   result - CatalogAttributeEntityArray
class CatalogProductAttributeListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeOptionsRequestParam
#   sessionId - SOAP::SOAPString
#   attributeId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class CatalogProductAttributeOptionsRequestParam
  attr_accessor :sessionId
  attr_accessor :attributeId
  attr_accessor :store

  def initialize(sessionId = nil, attributeId = nil, store = nil)
    @sessionId = sessionId
    @attributeId = attributeId
    @store = store
  end
end

# {urn:Magento}catalogProductAttributeOptionsResponseParam
#   result - CatalogAttributeOptionEntityArray
class CatalogProductAttributeOptionsResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionAddRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   data - CatalogProductCustomOptionToAdd
#   store - SOAP::SOAPString
class CatalogProductCustomOptionAddRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :data
  attr_accessor :store

  def initialize(sessionId = nil, productId = nil, data = nil, store = nil)
    @sessionId = sessionId
    @productId = productId
    @data = data
    @store = store
  end
end

# {urn:Magento}catalogProductCustomOptionAddResponseParam
#   result - SOAP::SOAPInt
class CatalogProductCustomOptionAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   optionId - SOAP::SOAPString
#   data - CatalogProductCustomOptionToUpdate
#   store - SOAP::SOAPString
class CatalogProductCustomOptionUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :optionId
  attr_accessor :data
  attr_accessor :store

  def initialize(sessionId = nil, optionId = nil, data = nil, store = nil)
    @sessionId = sessionId
    @optionId = optionId
    @data = data
    @store = store
  end
end

# {urn:Magento}catalogProductCustomOptionUpdateResponseParam
#   result - SOAP::SOAPInt
class CatalogProductCustomOptionUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionTypesRequestParam
#   sessionId - SOAP::SOAPString
class CatalogProductCustomOptionTypesRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}catalogProductCustomOptionTypesResponseParam
#   result - CatalogProductCustomOptionTypesArray
class CatalogProductCustomOptionTypesResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionListRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductCustomOptionListRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :store

  def initialize(sessionId = nil, productId = nil, store = nil)
    @sessionId = sessionId
    @productId = productId
    @store = store
  end
end

# {urn:Magento}catalogProductCustomOptionListResponseParam
#   result - CatalogProductCustomOptionListArray
class CatalogProductCustomOptionListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionInfoRequestParam
#   sessionId - SOAP::SOAPString
#   optionId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductCustomOptionInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :optionId
  attr_accessor :store

  def initialize(sessionId = nil, optionId = nil, store = nil)
    @sessionId = sessionId
    @optionId = optionId
    @store = store
  end
end

# {urn:Magento}catalogProductCustomOptionInfoResponseParam
#   result - CatalogProductCustomOptionInfoEntity
class CatalogProductCustomOptionInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   optionId - SOAP::SOAPString
class CatalogProductCustomOptionRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :optionId

  def initialize(sessionId = nil, optionId = nil)
    @sessionId = sessionId
    @optionId = optionId
  end
end

# {urn:Magento}catalogProductCustomOptionRemoveResponseParam
#   result - SOAP::SOAPInt
class CatalogProductCustomOptionRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionValueListRequestParam
#   sessionId - SOAP::SOAPString
#   optionId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductCustomOptionValueListRequestParam
  attr_accessor :sessionId
  attr_accessor :optionId
  attr_accessor :store

  def initialize(sessionId = nil, optionId = nil, store = nil)
    @sessionId = sessionId
    @optionId = optionId
    @store = store
  end
end

# {urn:Magento}catalogProductCustomOptionValueListResponseParam
#   result - CatalogProductCustomOptionValueListArray
class CatalogProductCustomOptionValueListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionValueInfoRequestParam
#   sessionId - SOAP::SOAPString
#   valueId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductCustomOptionValueInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :valueId
  attr_accessor :store

  def initialize(sessionId = nil, valueId = nil, store = nil)
    @sessionId = sessionId
    @valueId = valueId
    @store = store
  end
end

# {urn:Magento}catalogProductCustomOptionValueInfoResponseParam
#   result - CatalogProductCustomOptionValueInfoEntity
class CatalogProductCustomOptionValueInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionValueAddRequestParam
#   sessionId - SOAP::SOAPString
#   optionId - SOAP::SOAPString
#   data - CatalogProductCustomOptionValueAddArray
#   store - SOAP::SOAPString
class CatalogProductCustomOptionValueAddRequestParam
  attr_accessor :sessionId
  attr_accessor :optionId
  attr_accessor :data
  attr_accessor :store

  def initialize(sessionId = nil, optionId = nil, data = nil, store = nil)
    @sessionId = sessionId
    @optionId = optionId
    @data = data
    @store = store
  end
end

# {urn:Magento}catalogProductCustomOptionValueAddResponseParam
#   result - SOAP::SOAPInt
class CatalogProductCustomOptionValueAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionValueUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   valueId - SOAP::SOAPString
#   data - CatalogProductCustomOptionValueUpdateEntity
#   store - SOAP::SOAPString
class CatalogProductCustomOptionValueUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :valueId
  attr_accessor :data
  attr_accessor :store

  def initialize(sessionId = nil, valueId = nil, data = nil, store = nil)
    @sessionId = sessionId
    @valueId = valueId
    @data = data
    @store = store
  end
end

# {urn:Magento}catalogProductCustomOptionValueUpdateResponseParam
#   result - SOAP::SOAPInt
class CatalogProductCustomOptionValueUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductCustomOptionValueRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   valueId - SOAP::SOAPString
class CatalogProductCustomOptionValueRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :valueId

  def initialize(sessionId = nil, valueId = nil)
    @sessionId = sessionId
    @valueId = valueId
  end
end

# {urn:Magento}catalogProductCustomOptionValueRemoveResponseParam
#   result - SOAP::SOAPInt
class CatalogProductCustomOptionValueRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeSetCreateRequestParam
#   sessionId - SOAP::SOAPString
#   attributeSetName - SOAP::SOAPString
#   skeletonSetId - SOAP::SOAPString
class CatalogProductAttributeSetCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :attributeSetName
  attr_accessor :skeletonSetId

  def initialize(sessionId = nil, attributeSetName = nil, skeletonSetId = nil)
    @sessionId = sessionId
    @attributeSetName = attributeSetName
    @skeletonSetId = skeletonSetId
  end
end

# {urn:Magento}catalogProductAttributeSetCreateResponseParam
#   result - SOAP::SOAPString
class CatalogProductAttributeSetCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeSetRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   attributeSetId - SOAP::SOAPString
#   forceProductsRemove - SOAP::SOAPString
class CatalogProductAttributeSetRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :attributeSetId
  attr_accessor :forceProductsRemove

  def initialize(sessionId = nil, attributeSetId = nil, forceProductsRemove = nil)
    @sessionId = sessionId
    @attributeSetId = attributeSetId
    @forceProductsRemove = forceProductsRemove
  end
end

# {urn:Magento}catalogProductAttributeSetRemoveResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeSetRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeSetListRequestParam
#   sessionId - SOAP::SOAPString
class CatalogProductAttributeSetListRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}catalogProductAttributeSetListResponseParam
#   result - CatalogProductAttributeSetEntityArray
class CatalogProductAttributeSetListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeSetAttributeAddRequestParam
#   sessionId - SOAP::SOAPString
#   attributeId - SOAP::SOAPString
#   attributeSetId - SOAP::SOAPString
#   attributeGroupId - SOAP::SOAPString
#   sortOrder - SOAP::SOAPString
class CatalogProductAttributeSetAttributeAddRequestParam
  attr_accessor :sessionId
  attr_accessor :attributeId
  attr_accessor :attributeSetId
  attr_accessor :attributeGroupId
  attr_accessor :sortOrder

  def initialize(sessionId = nil, attributeId = nil, attributeSetId = nil, attributeGroupId = nil, sortOrder = nil)
    @sessionId = sessionId
    @attributeId = attributeId
    @attributeSetId = attributeSetId
    @attributeGroupId = attributeGroupId
    @sortOrder = sortOrder
  end
end

# {urn:Magento}catalogProductAttributeSetAttributeAddResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeSetAttributeAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeSetAttributeRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   attributeId - SOAP::SOAPString
#   attributeSetId - SOAP::SOAPString
class CatalogProductAttributeSetAttributeRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :attributeId
  attr_accessor :attributeSetId

  def initialize(sessionId = nil, attributeId = nil, attributeSetId = nil)
    @sessionId = sessionId
    @attributeId = attributeId
    @attributeSetId = attributeSetId
  end
end

# {urn:Magento}catalogProductAttributeSetAttributeRemoveResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeSetAttributeRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeSetGroupAddRequestParam
#   sessionId - SOAP::SOAPString
#   attributeSetId - SOAP::SOAPString
#   groupName - SOAP::SOAPString
class CatalogProductAttributeSetGroupAddRequestParam
  attr_accessor :sessionId
  attr_accessor :attributeSetId
  attr_accessor :groupName

  def initialize(sessionId = nil, attributeSetId = nil, groupName = nil)
    @sessionId = sessionId
    @attributeSetId = attributeSetId
    @groupName = groupName
  end
end

# {urn:Magento}catalogProductAttributeSetGroupAddResponseParam
#   result - SOAP::SOAPString
class CatalogProductAttributeSetGroupAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeSetGroupRenameRequestParam
#   sessionId - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   groupName - SOAP::SOAPString
class CatalogProductAttributeSetGroupRenameRequestParam
  attr_accessor :sessionId
  attr_accessor :groupId
  attr_accessor :groupName

  def initialize(sessionId = nil, groupId = nil, groupName = nil)
    @sessionId = sessionId
    @groupId = groupId
    @groupName = groupName
  end
end

# {urn:Magento}catalogProductAttributeSetGroupRenameResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeSetGroupRenameResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeSetGroupRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   attributeGroupId - SOAP::SOAPString
class CatalogProductAttributeSetGroupRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :attributeGroupId

  def initialize(sessionId = nil, attributeGroupId = nil)
    @sessionId = sessionId
    @attributeGroupId = attributeGroupId
  end
end

# {urn:Magento}catalogProductAttributeSetGroupRemoveResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeSetGroupRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductTypeListRequestParam
#   sessionId - SOAP::SOAPString
class CatalogProductTypeListRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}catalogProductTypeListResponseParam
#   result - CatalogProductTypeEntityArray
class CatalogProductTypeListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeTierPriceInfoRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductAttributeTierPriceInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductAttributeTierPriceInfoResponseParam
#   result - CatalogProductTierPriceEntityArray
class CatalogProductAttributeTierPriceInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeTierPriceUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   tierPrices - CatalogProductTierPriceEntityArray
#   identifierType - SOAP::SOAPString
class CatalogProductAttributeTierPriceUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :tierPrices
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, tierPrices = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @tierPrices = tierPrices
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductAttributeTierPriceUpdateResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeTierPriceUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeMediaCurrentStoreRequestParam
#   sessionId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductAttributeMediaCurrentStoreRequestParam
  attr_accessor :sessionId
  attr_accessor :store

  def initialize(sessionId = nil, store = nil)
    @sessionId = sessionId
    @store = store
  end
end

# {urn:Magento}catalogProductAttributeMediaCurrentStoreResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeMediaCurrentStoreResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeMediaListRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   store - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductAttributeMediaListRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :store
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, store = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @store = store
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductAttributeMediaListResponseParam
#   result - CatalogProductImageEntityArray
class CatalogProductAttributeMediaListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeMediaInfoRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   file - SOAP::SOAPString
#   store - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductAttributeMediaInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :file
  attr_accessor :store
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, file = nil, store = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @file = file
    @store = store
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductAttributeMediaInfoResponseParam
#   result - CatalogProductImageEntity
class CatalogProductAttributeMediaInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeMediaTypesRequestParam
#   sessionId - SOAP::SOAPString
#   setId - SOAP::SOAPString
class CatalogProductAttributeMediaTypesRequestParam
  attr_accessor :sessionId
  attr_accessor :setId

  def initialize(sessionId = nil, setId = nil)
    @sessionId = sessionId
    @setId = setId
  end
end

# {urn:Magento}catalogProductAttributeMediaTypesResponseParam
#   result - CatalogProductAttributeMediaTypeEntityArray
class CatalogProductAttributeMediaTypesResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeMediaCreateRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   data - CatalogProductAttributeMediaCreateEntity
#   store - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductAttributeMediaCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :data
  attr_accessor :store
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, data = nil, store = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @data = data
    @store = store
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductAttributeMediaCreateResponseParam
#   result - SOAP::SOAPString
class CatalogProductAttributeMediaCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeMediaUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   file - SOAP::SOAPString
#   data - CatalogProductAttributeMediaCreateEntity
#   store - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductAttributeMediaUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :file
  attr_accessor :data
  attr_accessor :store
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, file = nil, data = nil, store = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @file = file
    @data = data
    @store = store
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductAttributeMediaUpdateResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeMediaUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeMediaRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   file - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductAttributeMediaRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :file
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, file = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @file = file
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductAttributeMediaRemoveResponseParam
#   result - SOAP::SOAPInt
class CatalogProductAttributeMediaRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductLinkListRequestParam
#   sessionId - SOAP::SOAPString
#   type - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductLinkListRequestParam
  attr_accessor :sessionId
  attr_accessor :type
  attr_accessor :productId
  attr_accessor :identifierType

  def initialize(sessionId = nil, type = nil, productId = nil, identifierType = nil)
    @sessionId = sessionId
    @type = type
    @productId = productId
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductLinkListResponseParam
#   result - CatalogProductLinkEntityArray
class CatalogProductLinkListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductLinkAssignRequestParam
#   sessionId - SOAP::SOAPString
#   type - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   linkedProductId - SOAP::SOAPString
#   data - CatalogProductLinkEntity
#   identifierType - SOAP::SOAPString
class CatalogProductLinkAssignRequestParam
  attr_accessor :sessionId
  attr_accessor :type
  attr_accessor :productId
  attr_accessor :linkedProductId
  attr_accessor :data
  attr_accessor :identifierType

  def initialize(sessionId = nil, type = nil, productId = nil, linkedProductId = nil, data = nil, identifierType = nil)
    @sessionId = sessionId
    @type = type
    @productId = productId
    @linkedProductId = linkedProductId
    @data = data
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductLinkAssignResponseParam
#   result - SOAP::SOAPString
class CatalogProductLinkAssignResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductLinkUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   type - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   linkedProductId - SOAP::SOAPString
#   data - CatalogProductLinkEntity
#   identifierType - SOAP::SOAPString
class CatalogProductLinkUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :type
  attr_accessor :productId
  attr_accessor :linkedProductId
  attr_accessor :data
  attr_accessor :identifierType

  def initialize(sessionId = nil, type = nil, productId = nil, linkedProductId = nil, data = nil, identifierType = nil)
    @sessionId = sessionId
    @type = type
    @productId = productId
    @linkedProductId = linkedProductId
    @data = data
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductLinkUpdateResponseParam
#   result - SOAP::SOAPString
class CatalogProductLinkUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductLinkRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   type - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   linkedProductId - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductLinkRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :type
  attr_accessor :productId
  attr_accessor :linkedProductId
  attr_accessor :identifierType

  def initialize(sessionId = nil, type = nil, productId = nil, linkedProductId = nil, identifierType = nil)
    @sessionId = sessionId
    @type = type
    @productId = productId
    @linkedProductId = linkedProductId
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductLinkRemoveResponseParam
#   result - SOAP::SOAPString
class CatalogProductLinkRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductLinkTypesRequestParam
#   sessionId - SOAP::SOAPString
class CatalogProductLinkTypesRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}catalogProductLinkTypesResponseParam
#   result - ArrayOfString
class CatalogProductLinkTypesResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductLinkAttributesRequestParam
#   sessionId - SOAP::SOAPString
#   type - SOAP::SOAPString
class CatalogProductLinkAttributesRequestParam
  attr_accessor :sessionId
  attr_accessor :type

  def initialize(sessionId = nil, type = nil)
    @sessionId = sessionId
    @type = type
  end
end

# {urn:Magento}catalogProductLinkAttributesResponseParam
#   result - CatalogProductLinkAttributeEntityArray
class CatalogProductLinkAttributesResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryCurrentStoreRequestParam
#   sessionId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogCategoryCurrentStoreRequestParam
  attr_accessor :sessionId
  attr_accessor :store

  def initialize(sessionId = nil, store = nil)
    @sessionId = sessionId
    @store = store
  end
end

# {urn:Magento}catalogCategoryCurrentStoreResponseParam
#   result - SOAP::SOAPInt
class CatalogCategoryCurrentStoreResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryTreeRequestParam
#   sessionId - SOAP::SOAPString
#   parentId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogCategoryTreeRequestParam
  attr_accessor :sessionId
  attr_accessor :parentId
  attr_accessor :store

  def initialize(sessionId = nil, parentId = nil, store = nil)
    @sessionId = sessionId
    @parentId = parentId
    @store = store
  end
end

# {urn:Magento}catalogCategoryTreeResponseParam
#   result - CatalogCategoryTree
class CatalogCategoryTreeResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryLevelRequestParam
#   sessionId - SOAP::SOAPString
#   website - SOAP::SOAPString
#   store - SOAP::SOAPString
#   categoryId - SOAP::SOAPString
class CatalogCategoryLevelRequestParam
  attr_accessor :sessionId
  attr_accessor :website
  attr_accessor :store
  attr_accessor :categoryId

  def initialize(sessionId = nil, website = nil, store = nil, categoryId = nil)
    @sessionId = sessionId
    @website = website
    @store = store
    @categoryId = categoryId
  end
end

# {urn:Magento}catalogCategoryLevelResponseParam
#   result - ArrayOfCatalogCategoryEntitiesNoChildren
class CatalogCategoryLevelResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryInfoRequestParam
#   sessionId - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   store - SOAP::SOAPString
#   attributes - ArrayOfString
class CatalogCategoryInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :categoryId
  attr_accessor :store
  attr_accessor :attributes

  def initialize(sessionId = nil, categoryId = nil, store = nil, attributes = nil)
    @sessionId = sessionId
    @categoryId = categoryId
    @store = store
    @attributes = attributes
  end
end

# {urn:Magento}catalogCategoryInfoResponseParam
#   result - CatalogCategoryInfo
class CatalogCategoryInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryCreateRequestParam
#   sessionId - SOAP::SOAPString
#   parentId - SOAP::SOAPInt
#   categoryData - CatalogCategoryEntityCreate
#   store - SOAP::SOAPString
class CatalogCategoryCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :parentId
  attr_accessor :categoryData
  attr_accessor :store

  def initialize(sessionId = nil, parentId = nil, categoryData = nil, store = nil)
    @sessionId = sessionId
    @parentId = parentId
    @categoryData = categoryData
    @store = store
  end
end

# {urn:Magento}catalogCategoryCreateResponseParam
#   result - SOAP::SOAPInt
class CatalogCategoryCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   categoryData - CatalogCategoryEntityCreate
#   store - SOAP::SOAPString
class CatalogCategoryUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :categoryId
  attr_accessor :categoryData
  attr_accessor :store

  def initialize(sessionId = nil, categoryId = nil, categoryData = nil, store = nil)
    @sessionId = sessionId
    @categoryId = categoryId
    @categoryData = categoryData
    @store = store
  end
end

# {urn:Magento}catalogCategoryUpdateResponseParam
#   result - SOAP::SOAPBoolean
class CatalogCategoryUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryMoveRequestParam
#   sessionId - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   parentId - SOAP::SOAPInt
#   afterId - SOAP::SOAPString
class CatalogCategoryMoveRequestParam
  attr_accessor :sessionId
  attr_accessor :categoryId
  attr_accessor :parentId
  attr_accessor :afterId

  def initialize(sessionId = nil, categoryId = nil, parentId = nil, afterId = nil)
    @sessionId = sessionId
    @categoryId = categoryId
    @parentId = parentId
    @afterId = afterId
  end
end

# {urn:Magento}catalogCategoryMoveResponseParam
#   result - SOAP::SOAPBoolean
class CatalogCategoryMoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryDeleteRequestParam
#   sessionId - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
class CatalogCategoryDeleteRequestParam
  attr_accessor :sessionId
  attr_accessor :categoryId

  def initialize(sessionId = nil, categoryId = nil)
    @sessionId = sessionId
    @categoryId = categoryId
  end
end

# {urn:Magento}catalogCategoryDeleteResponseParam
#   result - SOAP::SOAPBoolean
class CatalogCategoryDeleteResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryAssignedProductsRequestParam
#   sessionId - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class CatalogCategoryAssignedProductsRequestParam
  attr_accessor :sessionId
  attr_accessor :categoryId
  attr_accessor :store

  def initialize(sessionId = nil, categoryId = nil, store = nil)
    @sessionId = sessionId
    @categoryId = categoryId
    @store = store
  end
end

# {urn:Magento}catalogCategoryAssignedProductsResponseParam
#   result - CatalogAssignedProductArray
class CatalogCategoryAssignedProductsResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryAssignProductRequestParam
#   sessionId - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   productId - SOAP::SOAPString
#   position - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogCategoryAssignProductRequestParam
  attr_accessor :sessionId
  attr_accessor :categoryId
  attr_accessor :productId
  attr_accessor :position
  attr_accessor :identifierType

  def initialize(sessionId = nil, categoryId = nil, productId = nil, position = nil, identifierType = nil)
    @sessionId = sessionId
    @categoryId = categoryId
    @productId = productId
    @position = position
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogCategoryAssignProductResponseParam
#   result - SOAP::SOAPBoolean
class CatalogCategoryAssignProductResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryUpdateProductRequestParam
#   sessionId - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   productId - SOAP::SOAPString
#   position - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogCategoryUpdateProductRequestParam
  attr_accessor :sessionId
  attr_accessor :categoryId
  attr_accessor :productId
  attr_accessor :position
  attr_accessor :identifierType

  def initialize(sessionId = nil, categoryId = nil, productId = nil, position = nil, identifierType = nil)
    @sessionId = sessionId
    @categoryId = categoryId
    @productId = productId
    @position = position
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogCategoryUpdateProductResponseParam
#   result - SOAP::SOAPBoolean
class CatalogCategoryUpdateProductResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryRemoveProductRequestParam
#   sessionId - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   productId - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogCategoryRemoveProductRequestParam
  attr_accessor :sessionId
  attr_accessor :categoryId
  attr_accessor :productId
  attr_accessor :identifierType

  def initialize(sessionId = nil, categoryId = nil, productId = nil, identifierType = nil)
    @sessionId = sessionId
    @categoryId = categoryId
    @productId = productId
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogCategoryRemoveProductResponseParam
#   result - SOAP::SOAPBoolean
class CatalogCategoryRemoveProductResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryAttributeListRequestParam
#   sessionId - SOAP::SOAPString
class CatalogCategoryAttributeListRequestParam
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:Magento}catalogCategoryAttributeListResponseParam
#   result - CatalogAttributeEntityArray
class CatalogCategoryAttributeListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryAttributeOptionsRequestParam
#   sessionId - SOAP::SOAPString
#   attributeId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogCategoryAttributeOptionsRequestParam
  attr_accessor :sessionId
  attr_accessor :attributeId
  attr_accessor :store

  def initialize(sessionId = nil, attributeId = nil, store = nil)
    @sessionId = sessionId
    @attributeId = attributeId
    @store = store
  end
end

# {urn:Magento}catalogCategoryAttributeOptionsResponseParam
#   result - CatalogAttributeOptionEntityArray
class CatalogCategoryAttributeOptionsResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogCategoryAttributeCurrentStoreRequestParam
#   sessionId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogCategoryAttributeCurrentStoreRequestParam
  attr_accessor :sessionId
  attr_accessor :store

  def initialize(sessionId = nil, store = nil)
    @sessionId = sessionId
    @store = store
  end
end

# {urn:Magento}catalogCategoryAttributeCurrentStoreResponseParam
#   result - SOAP::SOAPInt
class CatalogCategoryAttributeCurrentStoreResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductAttributeCreateRequestParam
#   sessionId - SOAP::SOAPString
#   data - CatalogProductAttributeEntityToCreate
class CatalogProductAttributeCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :data

  def initialize(sessionId = nil, data = nil)
    @sessionId = sessionId
    @data = data
  end
end

# {urn:Magento}catalogProductAttributeCreateResponseParam
#   result - SOAP::SOAPString
class CatalogProductAttributeCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderListRequestParam
#   sessionId - SOAP::SOAPString
#   filters - Filters
class SalesOrderListRequestParam
  attr_accessor :sessionId
  attr_accessor :filters

  def initialize(sessionId = nil, filters = nil)
    @sessionId = sessionId
    @filters = filters
  end
end

# {urn:Magento}salesOrderListResponseParam
#   result - SalesOrderListEntityArray
class SalesOrderListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderInfoRequestParam
#   sessionId - SOAP::SOAPString
#   orderIncrementId - SOAP::SOAPString
class SalesOrderInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :orderIncrementId

  def initialize(sessionId = nil, orderIncrementId = nil)
    @sessionId = sessionId
    @orderIncrementId = orderIncrementId
  end
end

# {urn:Magento}salesOrderInfoResponseParam
#   result - SalesOrderEntity
class SalesOrderInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderAddCommentRequestParam
#   sessionId - SOAP::SOAPString
#   orderIncrementId - SOAP::SOAPString
#   status - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   notify - SOAP::SOAPInt
class SalesOrderAddCommentRequestParam
  attr_accessor :sessionId
  attr_accessor :orderIncrementId
  attr_accessor :status
  attr_accessor :comment
  attr_accessor :notify

  def initialize(sessionId = nil, orderIncrementId = nil, status = nil, comment = nil, notify = nil)
    @sessionId = sessionId
    @orderIncrementId = orderIncrementId
    @status = status
    @comment = comment
    @notify = notify
  end
end

# {urn:Magento}salesOrderAddCommentResponseParam
#   result - SOAP::SOAPInt
class SalesOrderAddCommentResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderHoldRequestParam
#   sessionId - SOAP::SOAPString
#   orderIncrementId - SOAP::SOAPString
class SalesOrderHoldRequestParam
  attr_accessor :sessionId
  attr_accessor :orderIncrementId

  def initialize(sessionId = nil, orderIncrementId = nil)
    @sessionId = sessionId
    @orderIncrementId = orderIncrementId
  end
end

# {urn:Magento}salesOrderHoldResponseParam
#   result - SOAP::SOAPInt
class SalesOrderHoldResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderUnholdRequestParam
#   sessionId - SOAP::SOAPString
#   orderIncrementId - SOAP::SOAPString
class SalesOrderUnholdRequestParam
  attr_accessor :sessionId
  attr_accessor :orderIncrementId

  def initialize(sessionId = nil, orderIncrementId = nil)
    @sessionId = sessionId
    @orderIncrementId = orderIncrementId
  end
end

# {urn:Magento}salesOrderUnholdResponseParam
#   result - SOAP::SOAPInt
class SalesOrderUnholdResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderCancelRequestParam
#   sessionId - SOAP::SOAPString
#   orderIncrementId - SOAP::SOAPString
class SalesOrderCancelRequestParam
  attr_accessor :sessionId
  attr_accessor :orderIncrementId

  def initialize(sessionId = nil, orderIncrementId = nil)
    @sessionId = sessionId
    @orderIncrementId = orderIncrementId
  end
end

# {urn:Magento}salesOrderCancelResponseParam
#   result - SOAP::SOAPInt
class SalesOrderCancelResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderShipmentListRequestParam
#   sessionId - SOAP::SOAPString
#   filters - Filters
class SalesOrderShipmentListRequestParam
  attr_accessor :sessionId
  attr_accessor :filters

  def initialize(sessionId = nil, filters = nil)
    @sessionId = sessionId
    @filters = filters
  end
end

# {urn:Magento}salesOrderShipmentListResponseParam
#   result - SalesOrderShipmentEntityArray
class SalesOrderShipmentListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderShipmentInfoRequestParam
#   sessionId - SOAP::SOAPString
#   shipmentIncrementId - SOAP::SOAPString
class SalesOrderShipmentInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :shipmentIncrementId

  def initialize(sessionId = nil, shipmentIncrementId = nil)
    @sessionId = sessionId
    @shipmentIncrementId = shipmentIncrementId
  end
end

# {urn:Magento}salesOrderShipmentInfoResponseParam
#   result - SalesOrderShipmentEntity
class SalesOrderShipmentInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderShipmentCreateRequestParam
#   sessionId - SOAP::SOAPString
#   orderIncrementId - SOAP::SOAPString
#   itemsQty - OrderItemIdQtyArray
#   comment - SOAP::SOAPString
#   email - SOAP::SOAPInt
#   includeComment - SOAP::SOAPInt
class SalesOrderShipmentCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :orderIncrementId
  attr_accessor :itemsQty
  attr_accessor :comment
  attr_accessor :email
  attr_accessor :includeComment

  def initialize(sessionId = nil, orderIncrementId = nil, itemsQty = nil, comment = nil, email = nil, includeComment = nil)
    @sessionId = sessionId
    @orderIncrementId = orderIncrementId
    @itemsQty = itemsQty
    @comment = comment
    @email = email
    @includeComment = includeComment
  end
end

# {urn:Magento}salesOrderShipmentCreateResponseParam
#   result - SOAP::SOAPString
class SalesOrderShipmentCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderShipmentAddTrackRequestParam
#   sessionId - SOAP::SOAPString
#   shipmentIncrementId - SOAP::SOAPString
#   carrier - SOAP::SOAPString
#   title - SOAP::SOAPString
#   trackNumber - SOAP::SOAPString
class SalesOrderShipmentAddTrackRequestParam
  attr_accessor :sessionId
  attr_accessor :shipmentIncrementId
  attr_accessor :carrier
  attr_accessor :title
  attr_accessor :trackNumber

  def initialize(sessionId = nil, shipmentIncrementId = nil, carrier = nil, title = nil, trackNumber = nil)
    @sessionId = sessionId
    @shipmentIncrementId = shipmentIncrementId
    @carrier = carrier
    @title = title
    @trackNumber = trackNumber
  end
end

# {urn:Magento}salesOrderShipmentAddTrackResponseParam
#   result - SOAP::SOAPInt
class SalesOrderShipmentAddTrackResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderShipmentRemoveTrackRequestParam
#   sessionId - SOAP::SOAPString
#   shipmentIncrementId - SOAP::SOAPString
#   trackId - SOAP::SOAPString
class SalesOrderShipmentRemoveTrackRequestParam
  attr_accessor :sessionId
  attr_accessor :shipmentIncrementId
  attr_accessor :trackId

  def initialize(sessionId = nil, shipmentIncrementId = nil, trackId = nil)
    @sessionId = sessionId
    @shipmentIncrementId = shipmentIncrementId
    @trackId = trackId
  end
end

# {urn:Magento}salesOrderShipmentRemoveTrackResponseParam
#   result - SOAP::SOAPInt
class SalesOrderShipmentRemoveTrackResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderShipmentSendInfoRequestParam
#   sessionId - SOAP::SOAPString
#   shipmentIncrementId - SOAP::SOAPString
#   comment - SOAP::SOAPString
class SalesOrderShipmentSendInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :shipmentIncrementId
  attr_accessor :comment

  def initialize(sessionId = nil, shipmentIncrementId = nil, comment = nil)
    @sessionId = sessionId
    @shipmentIncrementId = shipmentIncrementId
    @comment = comment
  end
end

# {urn:Magento}salesOrderShipmentSendInfoResponseParam
#   result - SOAP::SOAPInt
class SalesOrderShipmentSendInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderShipmentAddCommentRequestParam
#   sessionId - SOAP::SOAPString
#   shipmentIncrementId - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   email - SOAP::SOAPString
#   includeInEmail - SOAP::SOAPString
class SalesOrderShipmentAddCommentRequestParam
  attr_accessor :sessionId
  attr_accessor :shipmentIncrementId
  attr_accessor :comment
  attr_accessor :email
  attr_accessor :includeInEmail

  def initialize(sessionId = nil, shipmentIncrementId = nil, comment = nil, email = nil, includeInEmail = nil)
    @sessionId = sessionId
    @shipmentIncrementId = shipmentIncrementId
    @comment = comment
    @email = email
    @includeInEmail = includeInEmail
  end
end

# {urn:Magento}salesOrderShipmentAddCommentResponseParam
#   result - SOAP::SOAPInt
class SalesOrderShipmentAddCommentResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderShipmentGetCarriersRequestParam
#   sessionId - SOAP::SOAPString
#   orderIncrementId - SOAP::SOAPString
class SalesOrderShipmentGetCarriersRequestParam
  attr_accessor :sessionId
  attr_accessor :orderIncrementId

  def initialize(sessionId = nil, orderIncrementId = nil)
    @sessionId = sessionId
    @orderIncrementId = orderIncrementId
  end
end

# {urn:Magento}salesOrderShipmentGetCarriersResponseParam
#   result - AssociativeArray
class SalesOrderShipmentGetCarriersResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderInvoiceListRequestParam
#   sessionId - SOAP::SOAPString
#   filters - Filters
class SalesOrderInvoiceListRequestParam
  attr_accessor :sessionId
  attr_accessor :filters

  def initialize(sessionId = nil, filters = nil)
    @sessionId = sessionId
    @filters = filters
  end
end

# {urn:Magento}salesOrderInvoiceListResponseParam
#   result - SalesOrderInvoiceEntityArray
class SalesOrderInvoiceListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderInvoiceInfoRequestParam
#   sessionId - SOAP::SOAPString
#   invoiceIncrementId - SOAP::SOAPString
class SalesOrderInvoiceInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :invoiceIncrementId

  def initialize(sessionId = nil, invoiceIncrementId = nil)
    @sessionId = sessionId
    @invoiceIncrementId = invoiceIncrementId
  end
end

# {urn:Magento}salesOrderInvoiceInfoResponseParam
#   result - SalesOrderInvoiceEntity
class SalesOrderInvoiceInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderInvoiceCreateRequestParam
#   sessionId - SOAP::SOAPString
#   invoiceIncrementId - SOAP::SOAPString
#   itemsQty - OrderItemIdQtyArray
#   comment - SOAP::SOAPString
#   email - SOAP::SOAPString
#   includeComment - SOAP::SOAPString
class SalesOrderInvoiceCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :invoiceIncrementId
  attr_accessor :itemsQty
  attr_accessor :comment
  attr_accessor :email
  attr_accessor :includeComment

  def initialize(sessionId = nil, invoiceIncrementId = nil, itemsQty = nil, comment = nil, email = nil, includeComment = nil)
    @sessionId = sessionId
    @invoiceIncrementId = invoiceIncrementId
    @itemsQty = itemsQty
    @comment = comment
    @email = email
    @includeComment = includeComment
  end
end

# {urn:Magento}salesOrderInvoiceCreateResponseParam
#   result - SOAP::SOAPString
class SalesOrderInvoiceCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderInvoiceAddCommentRequestParam
#   sessionId - SOAP::SOAPString
#   invoiceIncrementId - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   email - SOAP::SOAPString
#   includeComment - SOAP::SOAPString
class SalesOrderInvoiceAddCommentRequestParam
  attr_accessor :sessionId
  attr_accessor :invoiceIncrementId
  attr_accessor :comment
  attr_accessor :email
  attr_accessor :includeComment

  def initialize(sessionId = nil, invoiceIncrementId = nil, comment = nil, email = nil, includeComment = nil)
    @sessionId = sessionId
    @invoiceIncrementId = invoiceIncrementId
    @comment = comment
    @email = email
    @includeComment = includeComment
  end
end

# {urn:Magento}salesOrderInvoiceAddCommentResponseParam
#   result - SOAP::SOAPString
class SalesOrderInvoiceAddCommentResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderInvoiceCaptureRequestParam
#   sessionId - SOAP::SOAPString
#   invoiceIncrementId - SOAP::SOAPString
class SalesOrderInvoiceCaptureRequestParam
  attr_accessor :sessionId
  attr_accessor :invoiceIncrementId

  def initialize(sessionId = nil, invoiceIncrementId = nil)
    @sessionId = sessionId
    @invoiceIncrementId = invoiceIncrementId
  end
end

# {urn:Magento}salesOrderInvoiceCaptureResponseParam
#   result - SOAP::SOAPString
class SalesOrderInvoiceCaptureResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderInvoiceVoidRequestParam
#   sessionId - SOAP::SOAPString
#   invoiceIncrementId - SOAP::SOAPString
class SalesOrderInvoiceVoidRequestParam
  attr_accessor :sessionId
  attr_accessor :invoiceIncrementId

  def initialize(sessionId = nil, invoiceIncrementId = nil)
    @sessionId = sessionId
    @invoiceIncrementId = invoiceIncrementId
  end
end

# {urn:Magento}salesOrderInvoiceVoidResponseParam
#   result - SOAP::SOAPString
class SalesOrderInvoiceVoidResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderInvoiceCancelRequestParam
#   sessionId - SOAP::SOAPString
#   invoiceIncrementId - SOAP::SOAPString
class SalesOrderInvoiceCancelRequestParam
  attr_accessor :sessionId
  attr_accessor :invoiceIncrementId

  def initialize(sessionId = nil, invoiceIncrementId = nil)
    @sessionId = sessionId
    @invoiceIncrementId = invoiceIncrementId
  end
end

# {urn:Magento}salesOrderInvoiceCancelResponseParam
#   result - SOAP::SOAPString
class SalesOrderInvoiceCancelResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderCreditmemoListRequestParam
#   sessionId - SOAP::SOAPString
#   filters - Filters
class SalesOrderCreditmemoListRequestParam
  attr_accessor :sessionId
  attr_accessor :filters

  def initialize(sessionId = nil, filters = nil)
    @sessionId = sessionId
    @filters = filters
  end
end

# {urn:Magento}salesOrderCreditmemoListResponseParam
#   result - SalesOrderCreditmemoEntityArray
class SalesOrderCreditmemoListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderCreditmemoInfoRequestParam
#   sessionId - SOAP::SOAPString
#   creditmemoIncrementId - SOAP::SOAPString
class SalesOrderCreditmemoInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :creditmemoIncrementId

  def initialize(sessionId = nil, creditmemoIncrementId = nil)
    @sessionId = sessionId
    @creditmemoIncrementId = creditmemoIncrementId
  end
end

# {urn:Magento}salesOrderCreditmemoInfoResponseParam
#   result - SalesOrderCreditmemoEntity
class SalesOrderCreditmemoInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderCreditmemoCreateRequestParam
#   sessionId - SOAP::SOAPString
#   creditmemoIncrementId - SOAP::SOAPString
#   creditmemoData - SalesOrderCreditmemoData
#   comment - SOAP::SOAPString
#   notifyCustomer - SOAP::SOAPInt
#   includeComment - SOAP::SOAPInt
#   refundToStoreCreditAmount - SOAP::SOAPString
class SalesOrderCreditmemoCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :creditmemoIncrementId
  attr_accessor :creditmemoData
  attr_accessor :comment
  attr_accessor :notifyCustomer
  attr_accessor :includeComment
  attr_accessor :refundToStoreCreditAmount

  def initialize(sessionId = nil, creditmemoIncrementId = nil, creditmemoData = nil, comment = nil, notifyCustomer = nil, includeComment = nil, refundToStoreCreditAmount = nil)
    @sessionId = sessionId
    @creditmemoIncrementId = creditmemoIncrementId
    @creditmemoData = creditmemoData
    @comment = comment
    @notifyCustomer = notifyCustomer
    @includeComment = includeComment
    @refundToStoreCreditAmount = refundToStoreCreditAmount
  end
end

# {urn:Magento}salesOrderCreditmemoCreateResponseParam
#   result - SOAP::SOAPString
class SalesOrderCreditmemoCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderCreditmemoAddCommentRequestParam
#   sessionId - SOAP::SOAPString
#   creditmemoIncrementId - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   notifyCustomer - SOAP::SOAPInt
#   includeComment - SOAP::SOAPInt
class SalesOrderCreditmemoAddCommentRequestParam
  attr_accessor :sessionId
  attr_accessor :creditmemoIncrementId
  attr_accessor :comment
  attr_accessor :notifyCustomer
  attr_accessor :includeComment

  def initialize(sessionId = nil, creditmemoIncrementId = nil, comment = nil, notifyCustomer = nil, includeComment = nil)
    @sessionId = sessionId
    @creditmemoIncrementId = creditmemoIncrementId
    @comment = comment
    @notifyCustomer = notifyCustomer
    @includeComment = includeComment
  end
end

# {urn:Magento}salesOrderCreditmemoAddCommentResponseParam
#   result - SOAP::SOAPInt
class SalesOrderCreditmemoAddCommentResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}salesOrderCreditmemoCancelRequestParam
#   sessionId - SOAP::SOAPString
#   creditmemoIncrementId - SOAP::SOAPString
class SalesOrderCreditmemoCancelRequestParam
  attr_accessor :sessionId
  attr_accessor :creditmemoIncrementId

  def initialize(sessionId = nil, creditmemoIncrementId = nil)
    @sessionId = sessionId
    @creditmemoIncrementId = creditmemoIncrementId
  end
end

# {urn:Magento}salesOrderCreditmemoCancelResponseParam
#   result - SOAP::SOAPString
class SalesOrderCreditmemoCancelResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogInventoryStockItemListRequestParam
#   sessionId - SOAP::SOAPString
#   productIds - ArrayOfString
class CatalogInventoryStockItemListRequestParam
  attr_accessor :sessionId
  attr_accessor :productIds

  def initialize(sessionId = nil, productIds = nil)
    @sessionId = sessionId
    @productIds = productIds
  end
end

# {urn:Magento}catalogInventoryStockItemListResponseParam
#   result - CatalogInventoryStockItemEntityArray
class CatalogInventoryStockItemListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogInventoryStockItemUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   data - CatalogInventoryStockItemUpdateEntity
class CatalogInventoryStockItemUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :data

  def initialize(sessionId = nil, productId = nil, data = nil)
    @sessionId = sessionId
    @productId = productId
    @data = data
  end
end

# {urn:Magento}catalogInventoryStockItemUpdateResponseParam
#   result - SOAP::SOAPInt
class CatalogInventoryStockItemUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartCreateRequestParam
#   sessionId - SOAP::SOAPString
#   store - SOAP::SOAPString
class ShoppingCartCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :store

  def initialize(sessionId = nil, store = nil)
    @sessionId = sessionId
    @store = store
  end
end

# {urn:Magento}shoppingCartCreateResponseParam
#   result - SOAP::SOAPInt
class ShoppingCartCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartOrderRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   store - SOAP::SOAPString
#   agreements - ArrayOfString
class ShoppingCartOrderRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store
  attr_accessor :agreements

  def initialize(sessionId = nil, quoteId = nil, store = nil, agreements = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
    @agreements = agreements
  end
end

# {urn:Magento}shoppingCartOrderResponseParam
#   result - SOAP::SOAPString
class ShoppingCartOrderResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartInfoRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class ShoppingCartInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartInfoResponseParam
#   result - ShoppingCartInfoEntity
class ShoppingCartInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartTotalsRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class ShoppingCartTotalsRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartTotalsResponseParam
#   result - ShoppingCartTotalsEntityArray
class ShoppingCartTotalsResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartLicenseRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class ShoppingCartLicenseRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartLicenseResponseParam
#   result - ShoppingCartLicenseEntityArray
class ShoppingCartLicenseResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartProductAddRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   productsData - ShoppingCartProductEntityArray
#   store - SOAP::SOAPString
class ShoppingCartProductAddRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :productsData
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, productsData = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @productsData = productsData
    @store = store
  end
end

# {urn:Magento}shoppingCartProductAddResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartProductAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartProductUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   productsData - ShoppingCartProductEntityArray
#   store - SOAP::SOAPString
class ShoppingCartProductUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :productsData
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, productsData = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @productsData = productsData
    @store = store
  end
end

# {urn:Magento}shoppingCartProductUpdateResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartProductUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartProductRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   productsData - ShoppingCartProductEntityArray
#   store - SOAP::SOAPString
class ShoppingCartProductRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :productsData
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, productsData = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @productsData = productsData
    @store = store
  end
end

# {urn:Magento}shoppingCartProductRemoveResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartProductRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartProductListRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class ShoppingCartProductListRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartProductListResponseParam
#   result - ShoppingCartProductResponseEntityArray
class ShoppingCartProductListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartProductMoveToCustomerQuoteRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   productsData - ShoppingCartProductEntityArray
#   store - SOAP::SOAPString
class ShoppingCartProductMoveToCustomerQuoteRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :productsData
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, productsData = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @productsData = productsData
    @store = store
  end
end

# {urn:Magento}shoppingCartProductMoveToCustomerQuoteResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartProductMoveToCustomerQuoteResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartCustomerSetRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   customerData - ShoppingCartCustomerEntity
#   store - SOAP::SOAPString
class ShoppingCartCustomerSetRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :customerData
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, customerData = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @customerData = customerData
    @store = store
  end
end

# {urn:Magento}shoppingCartCustomerSetResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartCustomerSetResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartCustomerAddressesRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   customerAddressData - ShoppingCartCustomerAddressEntityArray
#   store - SOAP::SOAPString
class ShoppingCartCustomerAddressesRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :customerAddressData
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, customerAddressData = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @customerAddressData = customerAddressData
    @store = store
  end
end

# {urn:Magento}shoppingCartCustomerAddressesResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartCustomerAddressesResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartShippingMethodRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   shippingMethod - SOAP::SOAPString
#   store - SOAP::SOAPString
class ShoppingCartShippingMethodRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :shippingMethod
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, shippingMethod = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @shippingMethod = shippingMethod
    @store = store
  end
end

# {urn:Magento}shoppingCartShippingMethodResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartShippingMethodResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartShippingListRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class ShoppingCartShippingListRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartShippingListResponseParam
#   result - ShoppingCartShippingMethodEntityArray
class ShoppingCartShippingListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartPaymentMethodRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   paymentData - ShoppingCartPaymentMethodEntity
#   store - SOAP::SOAPString
class ShoppingCartPaymentMethodRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :paymentData
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, paymentData = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @paymentData = paymentData
    @store = store
  end
end

# {urn:Magento}shoppingCartPaymentMethodResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartPaymentMethodResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartPaymentListRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class ShoppingCartPaymentListRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartPaymentListResponseParam
#   result - ShoppingCartPaymentMethodResponseEntityArray
class ShoppingCartPaymentListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartCouponAddRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   couponCode - SOAP::SOAPString
#   store - SOAP::SOAPString
class ShoppingCartCouponAddRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :couponCode
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, couponCode = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @couponCode = couponCode
    @store = store
  end
end

# {urn:Magento}shoppingCartCouponAddResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartCouponAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartCouponRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPInt
#   store - SOAP::SOAPString
class ShoppingCartCouponRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartCouponRemoveResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartCouponRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductTagListRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductTagListRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :store

  def initialize(sessionId = nil, productId = nil, store = nil)
    @sessionId = sessionId
    @productId = productId
    @store = store
  end
end

# {urn:Magento}catalogProductTagListResponseParam
#   result - CatalogProductTagListEntityArray
class CatalogProductTagListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductTagInfoRequestParam
#   sessionId - SOAP::SOAPString
#   tagId - SOAP::SOAPString
#   store - SOAP::SOAPString
class CatalogProductTagInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :tagId
  attr_accessor :store

  def initialize(sessionId = nil, tagId = nil, store = nil)
    @sessionId = sessionId
    @tagId = tagId
    @store = store
  end
end

# {urn:Magento}catalogProductTagInfoResponseParam
#   result - CatalogProductTagInfoEntity
class CatalogProductTagInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductTagAddRequestParam
#   sessionId - SOAP::SOAPString
#   data - CatalogProductTagAddEntity
class CatalogProductTagAddRequestParam
  attr_accessor :sessionId
  attr_accessor :data

  def initialize(sessionId = nil, data = nil)
    @sessionId = sessionId
    @data = data
  end
end

# {urn:Magento}catalogProductTagAddResponseParam
#   result - AssociativeArray
class CatalogProductTagAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductTagUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   tagId - SOAP::SOAPString
#   data - CatalogProductTagUpdateEntity
#   store - SOAP::SOAPString
class CatalogProductTagUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :tagId
  attr_accessor :data
  attr_accessor :store

  def initialize(sessionId = nil, tagId = nil, data = nil, store = nil)
    @sessionId = sessionId
    @tagId = tagId
    @data = data
    @store = store
  end
end

# {urn:Magento}catalogProductTagUpdateResponseParam
#   result - SOAP::SOAPInt
class CatalogProductTagUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductTagRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   tagId - SOAP::SOAPString
class CatalogProductTagRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :tagId

  def initialize(sessionId = nil, tagId = nil)
    @sessionId = sessionId
    @tagId = tagId
  end
end

# {urn:Magento}catalogProductTagRemoveResponseParam
#   result - SOAP::SOAPInt
class CatalogProductTagRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftMessageForQuoteRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPString
#   giftMessage - GiftMessageEntity
#   store - SOAP::SOAPString
class GiftMessageForQuoteRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :giftMessage
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, giftMessage = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @giftMessage = giftMessage
    @store = store
  end
end

# {urn:Magento}giftMessageForQuoteResponseParam
#   result - GiftMessageResponse
class GiftMessageForQuoteResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftMessageForQuoteItemRequestParam
#   sessionId - SOAP::SOAPString
#   quoteItemId - SOAP::SOAPString
#   giftMessage - GiftMessageEntity
#   store - SOAP::SOAPString
class GiftMessageForQuoteItemRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteItemId
  attr_accessor :giftMessage
  attr_accessor :store

  def initialize(sessionId = nil, quoteItemId = nil, giftMessage = nil, store = nil)
    @sessionId = sessionId
    @quoteItemId = quoteItemId
    @giftMessage = giftMessage
    @store = store
  end
end

# {urn:Magento}giftMessageForQuoteItemResponseParam
#   result - GiftMessageResponse
class GiftMessageForQuoteItemResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftMessageForQuoteProductRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPString
#   productsAndMessages - GiftMessageAssociativeProductsEntityArray
#   store - SOAP::SOAPString
class GiftMessageForQuoteProductRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :productsAndMessages
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, productsAndMessages = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @productsAndMessages = productsAndMessages
    @store = store
  end
end

# {urn:Magento}giftMessageForQuoteProductResponseParam
#   result - GiftMessageResponseArray
class GiftMessageForQuoteProductResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductDownloadableLinkAddRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   resource - CatalogProductDownloadableLinkAddEntity
#   resourceType - SOAP::SOAPString
#   store - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductDownloadableLinkAddRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :resource
  attr_accessor :resourceType
  attr_accessor :store
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, resource = nil, resourceType = nil, store = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @resource = resource
    @resourceType = resourceType
    @store = store
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductDownloadableLinkAddResponseParam
#   result - SOAP::SOAPInt
class CatalogProductDownloadableLinkAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductDownloadableLinkListRequestParam
#   sessionId - SOAP::SOAPString
#   productId - SOAP::SOAPString
#   store - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
class CatalogProductDownloadableLinkListRequestParam
  attr_accessor :sessionId
  attr_accessor :productId
  attr_accessor :store
  attr_accessor :identifierType

  def initialize(sessionId = nil, productId = nil, store = nil, identifierType = nil)
    @sessionId = sessionId
    @productId = productId
    @store = store
    @identifierType = identifierType
  end
end

# {urn:Magento}catalogProductDownloadableLinkListResponseParam
#   result - CatalogProductDownloadableLinkListEntity
class CatalogProductDownloadableLinkListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}catalogProductDownloadableLinkRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   linkId - SOAP::SOAPString
#   resourceType - SOAP::SOAPString
class CatalogProductDownloadableLinkRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :linkId
  attr_accessor :resourceType

  def initialize(sessionId = nil, linkId = nil, resourceType = nil)
    @sessionId = sessionId
    @linkId = linkId
    @resourceType = resourceType
  end
end

# {urn:Magento}catalogProductDownloadableLinkRemoveResponseParam
#   result - SOAP::SOAPInt
class CatalogProductDownloadableLinkRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}enterpriseCustomerbalanceBalanceRequestParam
#   sessionId - SOAP::SOAPString
#   customerId - SOAP::SOAPString
#   websiteId - SOAP::SOAPString
class EnterpriseCustomerbalanceBalanceRequestParam
  attr_accessor :sessionId
  attr_accessor :customerId
  attr_accessor :websiteId

  def initialize(sessionId = nil, customerId = nil, websiteId = nil)
    @sessionId = sessionId
    @customerId = customerId
    @websiteId = websiteId
  end
end

# {urn:Magento}enterpriseCustomerbalanceBalanceResponseParam
#   result - SOAP::SOAPString
class EnterpriseCustomerbalanceBalanceResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}enterpriseCustomerbalanceHistoryRequestParam
#   sessionId - SOAP::SOAPString
#   customerId - SOAP::SOAPString
#   websiteId - SOAP::SOAPString
class EnterpriseCustomerbalanceHistoryRequestParam
  attr_accessor :sessionId
  attr_accessor :customerId
  attr_accessor :websiteId

  def initialize(sessionId = nil, customerId = nil, websiteId = nil)
    @sessionId = sessionId
    @customerId = customerId
    @websiteId = websiteId
  end
end

# {urn:Magento}enterpriseCustomerbalanceHistoryResponseParam
#   result - EnterpriseCustomerbalanceHistoryItemEntityArray
class EnterpriseCustomerbalanceHistoryResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartCustomerbalanceSetAmountRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPString
#   store - SOAP::SOAPString
class ShoppingCartCustomerbalanceSetAmountRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartCustomerbalanceSetAmountResponseParam
#   result - SOAP::SOAPFloat
class ShoppingCartCustomerbalanceSetAmountResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartCustomerbalanceRemoveAmountRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPString
#   store - SOAP::SOAPString
class ShoppingCartCustomerbalanceRemoveAmountRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :store

  def initialize(sessionId = nil, quoteId = nil, store = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @store = store
  end
end

# {urn:Magento}shoppingCartCustomerbalanceRemoveAmountResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartCustomerbalanceRemoveAmountResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftcardAccountCreateRequestParam
#   sessionId - SOAP::SOAPString
#   giftcardAccountData - GiftcardAccountCreateGiftcardAccountData
#   notificationData - GiftcardAccountCreateNotificationData
class GiftcardAccountCreateRequestParam
  attr_accessor :sessionId
  attr_accessor :giftcardAccountData
  attr_accessor :notificationData

  def initialize(sessionId = nil, giftcardAccountData = nil, notificationData = nil)
    @sessionId = sessionId
    @giftcardAccountData = giftcardAccountData
    @notificationData = notificationData
  end
end

# {urn:Magento}giftcardAccountCreateResponseParam
#   result - SOAP::SOAPString
class GiftcardAccountCreateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftcardAccountUpdateRequestParam
#   sessionId - SOAP::SOAPString
#   giftcardAccountId - SOAP::SOAPString
#   giftcardData - GiftcardAccountEntityToUpdate
class GiftcardAccountUpdateRequestParam
  attr_accessor :sessionId
  attr_accessor :giftcardAccountId
  attr_accessor :giftcardData

  def initialize(sessionId = nil, giftcardAccountId = nil, giftcardData = nil)
    @sessionId = sessionId
    @giftcardAccountId = giftcardAccountId
    @giftcardData = giftcardData
  end
end

# {urn:Magento}giftcardAccountUpdateResponseParam
#   result - SOAP::SOAPBoolean
class GiftcardAccountUpdateResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftcardAccountRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   giftcardAccountId - SOAP::SOAPString
class GiftcardAccountRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :giftcardAccountId

  def initialize(sessionId = nil, giftcardAccountId = nil)
    @sessionId = sessionId
    @giftcardAccountId = giftcardAccountId
  end
end

# {urn:Magento}giftcardAccountRemoveResponseParam
#   result - SOAP::SOAPBoolean
class GiftcardAccountRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftcardAccountListRequestParam
#   sessionId - SOAP::SOAPString
#   filters - Filters
class GiftcardAccountListRequestParam
  attr_accessor :sessionId
  attr_accessor :filters

  def initialize(sessionId = nil, filters = nil)
    @sessionId = sessionId
    @filters = filters
  end
end

# {urn:Magento}giftcardAccountListResponseParam
#   result - GiftcardAccountEntityArray
class GiftcardAccountListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftcardAccountInfoRequestParam
#   sessionId - SOAP::SOAPString
#   giftcardAccountId - SOAP::SOAPString
class GiftcardAccountInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :giftcardAccountId

  def initialize(sessionId = nil, giftcardAccountId = nil)
    @sessionId = sessionId
    @giftcardAccountId = giftcardAccountId
  end
end

# {urn:Magento}giftcardAccountInfoResponseParam
#   result - GiftcardAccountEntity
class GiftcardAccountInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftcardCustomerInfoRequestParam
#   sessionId - SOAP::SOAPString
#   code - SOAP::SOAPString
class GiftcardCustomerInfoRequestParam
  attr_accessor :sessionId
  attr_accessor :code

  def initialize(sessionId = nil, code = nil)
    @sessionId = sessionId
    @code = code
  end
end

# {urn:Magento}giftcardCustomerInfoResponseParam
#   result - GiftcardCustomerEntity
class GiftcardCustomerInfoResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}giftcardCustomerRedeemRequestParam
#   sessionId - SOAP::SOAPString
#   code - SOAP::SOAPString
#   customerId - SOAP::SOAPString
#   storeId - SOAP::SOAPString
class GiftcardCustomerRedeemRequestParam
  attr_accessor :sessionId
  attr_accessor :code
  attr_accessor :customerId
  attr_accessor :storeId

  def initialize(sessionId = nil, code = nil, customerId = nil, storeId = nil)
    @sessionId = sessionId
    @code = code
    @customerId = customerId
    @storeId = storeId
  end
end

# {urn:Magento}giftcardCustomerRedeemResponseParam
#   result - SOAP::SOAPBoolean
class GiftcardCustomerRedeemResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartGiftcardAddRequestParam
#   sessionId - SOAP::SOAPString
#   giftcardAccountCode - SOAP::SOAPString
#   quoteId - SOAP::SOAPString
#   storeId - SOAP::SOAPString
class ShoppingCartGiftcardAddRequestParam
  attr_accessor :sessionId
  attr_accessor :giftcardAccountCode
  attr_accessor :quoteId
  attr_accessor :storeId

  def initialize(sessionId = nil, giftcardAccountCode = nil, quoteId = nil, storeId = nil)
    @sessionId = sessionId
    @giftcardAccountCode = giftcardAccountCode
    @quoteId = quoteId
    @storeId = storeId
  end
end

# {urn:Magento}shoppingCartGiftcardAddResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartGiftcardAddResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartGiftcardRemoveRequestParam
#   sessionId - SOAP::SOAPString
#   giftcardAccountCode - SOAP::SOAPString
#   quoteId - SOAP::SOAPString
#   storeId - SOAP::SOAPString
class ShoppingCartGiftcardRemoveRequestParam
  attr_accessor :sessionId
  attr_accessor :giftcardAccountCode
  attr_accessor :quoteId
  attr_accessor :storeId

  def initialize(sessionId = nil, giftcardAccountCode = nil, quoteId = nil, storeId = nil)
    @sessionId = sessionId
    @giftcardAccountCode = giftcardAccountCode
    @quoteId = quoteId
    @storeId = storeId
  end
end

# {urn:Magento}shoppingCartGiftcardRemoveResponseParam
#   result - SOAP::SOAPBoolean
class ShoppingCartGiftcardRemoveResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:Magento}shoppingCartGiftcardListRequestParam
#   sessionId - SOAP::SOAPString
#   quoteId - SOAP::SOAPString
#   storeId - SOAP::SOAPString
class ShoppingCartGiftcardListRequestParam
  attr_accessor :sessionId
  attr_accessor :quoteId
  attr_accessor :storeId

  def initialize(sessionId = nil, quoteId = nil, storeId = nil)
    @sessionId = sessionId
    @quoteId = quoteId
    @storeId = storeId
  end
end

# {urn:Magento}shoppingCartGiftcardListResponseParam
#   result - EnterpriseGiftcardaccountListEntityArray
class ShoppingCartGiftcardListResponseParam
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end
