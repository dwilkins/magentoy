#!/usr/bin/env ruby
require 'MagentoDriver.rb'

endpoint_url = ARGV.shift
obj = Mage_Api_Model_Server_Wsi_HandlerPortType.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   call(parameters)
#
# ARGS
#   parameters      CallParam - {urn:Magento}callParam
#
# RETURNS
#   parameters      CallResponseParam - {urn:Magento}callResponseParam
#
parameters = nil
puts obj.call(parameters)

# SYNOPSIS
#   multiCall(parameters)
#
# ARGS
#   parameters      MultiCallParam - {urn:Magento}multiCallParam
#
# RETURNS
#   parameters      MultiCallResponseParam - {urn:Magento}multiCallResponseParam
#
parameters = nil
puts obj.multiCall(parameters)

# SYNOPSIS
#   endSession(parameters)
#
# ARGS
#   parameters      EndSessionParam - {urn:Magento}endSessionParam
#
# RETURNS
#   parameters      EndSessionResponseParam - {urn:Magento}endSessionResponseParam
#
parameters = nil
puts obj.endSession(parameters)

# SYNOPSIS
#   login(parameters)
#
# ARGS
#   parameters      LoginParam - {urn:Magento}loginParam
#
# RETURNS
#   parameters      LoginResponseParam - {urn:Magento}loginResponseParam
#
parameters = nil
puts obj.login(parameters)

# SYNOPSIS
#   startSession
#
# ARGS
#   N/A
#
# RETURNS
#   parameters      StartSessionResponseParam - {urn:Magento}startSessionResponseParam
#

puts obj.startSession

# SYNOPSIS
#   resources(parameters)
#
# ARGS
#   parameters      ResourcesRequestParam - {urn:Magento}resourcesRequestParam
#
# RETURNS
#   parameters      ResourcesResponseParam - {urn:Magento}resourcesResponseParam
#
parameters = nil
puts obj.resources(parameters)

# SYNOPSIS
#   globalFaults(parameters)
#
# ARGS
#   parameters      GlobalFaultsParam - {urn:Magento}globalFaultsParam
#
# RETURNS
#   parameters      GlobalFaultsResponseParam - {urn:Magento}globalFaultsResponseParam
#
parameters = nil
puts obj.globalFaults(parameters)

# SYNOPSIS
#   resourceFaults(parameters)
#
# ARGS
#   parameters      ResourceFaultsParam - {urn:Magento}resourceFaultsParam
#
# RETURNS
#   parameters      ResourceFaultsResponseParam - {urn:Magento}resourceFaultsResponseParam
#
parameters = nil
puts obj.resourceFaults(parameters)

# SYNOPSIS
#   storeList(parameters)
#
# ARGS
#   parameters      StoreListRequestParam - {urn:Magento}storeListRequestParam
#
# RETURNS
#   parameters      StoreListResponseParam - {urn:Magento}storeListResponseParam
#
parameters = nil
puts obj.storeList(parameters)

# SYNOPSIS
#   storeInfo(parameters)
#
# ARGS
#   parameters      StoreInfoRequestParam - {urn:Magento}storeInfoRequestParam
#
# RETURNS
#   parameters      StoreInfoResponseParam - {urn:Magento}storeInfoResponseParam
#
parameters = nil
puts obj.storeInfo(parameters)

# SYNOPSIS
#   magentoInfo(parameters)
#
# ARGS
#   parameters      MagentoInfoRequestParam - {urn:Magento}magentoInfoRequestParam
#
# RETURNS
#   parameters      MagentoInfoResponseParam - {urn:Magento}magentoInfoResponseParam
#
parameters = nil
puts obj.magentoInfo(parameters)

# SYNOPSIS
#   directoryCountryList(parameters)
#
# ARGS
#   parameters      DirectoryCountryListRequestParam - {urn:Magento}directoryCountryListRequestParam
#
# RETURNS
#   parameters      DirectoryCountryListResponseParam - {urn:Magento}directoryCountryListResponseParam
#
parameters = nil
puts obj.directoryCountryList(parameters)

# SYNOPSIS
#   directoryRegionList(parameters)
#
# ARGS
#   parameters      DirectoryRegionListRequestParam - {urn:Magento}directoryRegionListRequestParam
#
# RETURNS
#   parameters      DirectoryRegionListResponseParam - {urn:Magento}directoryRegionListResponseParam
#
parameters = nil
puts obj.directoryRegionList(parameters)

# SYNOPSIS
#   customerCustomerList(parameters)
#
# ARGS
#   parameters      CustomerCustomerListRequestParam - {urn:Magento}customerCustomerListRequestParam
#
# RETURNS
#   parameters      CustomerCustomerListResponseParam - {urn:Magento}customerCustomerListResponseParam
#
parameters = nil
puts obj.customerCustomerList(parameters)

# SYNOPSIS
#   customerCustomerCreate(parameters)
#
# ARGS
#   parameters      CustomerCustomerCreateRequestParam - {urn:Magento}customerCustomerCreateRequestParam
#
# RETURNS
#   parameters      CustomerCustomerCreateResponseParam - {urn:Magento}customerCustomerCreateResponseParam
#
parameters = nil
puts obj.customerCustomerCreate(parameters)

# SYNOPSIS
#   customerCustomerInfo(parameters)
#
# ARGS
#   parameters      CustomerCustomerInfoRequestParam - {urn:Magento}customerCustomerInfoRequestParam
#
# RETURNS
#   parameters      CustomerCustomerInfoResponseParam - {urn:Magento}customerCustomerInfoResponseParam
#
parameters = nil
puts obj.customerCustomerInfo(parameters)

# SYNOPSIS
#   customerCustomerUpdate(parameters)
#
# ARGS
#   parameters      CustomerCustomerUpdateRequestParam - {urn:Magento}customerCustomerUpdateRequestParam
#
# RETURNS
#   parameters      CustomerCustomerUpdateResponseParam - {urn:Magento}customerCustomerUpdateResponseParam
#
parameters = nil
puts obj.customerCustomerUpdate(parameters)

# SYNOPSIS
#   customerCustomerDelete(parameters)
#
# ARGS
#   parameters      CustomerCustomerDeleteRequestParam - {urn:Magento}customerCustomerDeleteRequestParam
#
# RETURNS
#   parameters      CustomerCustomerDeleteResponseParam - {urn:Magento}customerCustomerDeleteResponseParam
#
parameters = nil
puts obj.customerCustomerDelete(parameters)

# SYNOPSIS
#   customerGroupList(parameters)
#
# ARGS
#   parameters      CustomerGroupListRequestParam - {urn:Magento}customerGroupListRequestParam
#
# RETURNS
#   parameters      CustomerGroupListResponseParam - {urn:Magento}customerGroupListResponseParam
#
parameters = nil
puts obj.customerGroupList(parameters)

# SYNOPSIS
#   customerAddressList(parameters)
#
# ARGS
#   parameters      CustomerAddressListRequestParam - {urn:Magento}customerAddressListRequestParam
#
# RETURNS
#   parameters      CustomerAddressListResponseParam - {urn:Magento}customerAddressListResponseParam
#
parameters = nil
puts obj.customerAddressList(parameters)

# SYNOPSIS
#   customerAddressCreate(parameters)
#
# ARGS
#   parameters      CustomerAddressCreateRequestParam - {urn:Magento}customerAddressCreateRequestParam
#
# RETURNS
#   parameters      CustomerAddressCreateResponseParam - {urn:Magento}customerAddressCreateResponseParam
#
parameters = nil
puts obj.customerAddressCreate(parameters)

# SYNOPSIS
#   customerAddressInfo(parameters)
#
# ARGS
#   parameters      CustomerAddressInfoRequestParam - {urn:Magento}customerAddressInfoRequestParam
#
# RETURNS
#   parameters      CustomerAddressInfoResponseParam - {urn:Magento}customerAddressInfoResponseParam
#
parameters = nil
puts obj.customerAddressInfo(parameters)

# SYNOPSIS
#   customerAddressUpdate(parameters)
#
# ARGS
#   parameters      CustomerAddressUpdateRequestParam - {urn:Magento}customerAddressUpdateRequestParam
#
# RETURNS
#   parameters      CustomerAddressUpdateResponseParam - {urn:Magento}customerAddressUpdateResponseParam
#
parameters = nil
puts obj.customerAddressUpdate(parameters)

# SYNOPSIS
#   customerAddressDelete(parameters)
#
# ARGS
#   parameters      CustomerAddressDeleteRequestParam - {urn:Magento}customerAddressDeleteRequestParam
#
# RETURNS
#   parameters      CustomerAddressDeleteResponseParam - {urn:Magento}customerAddressDeleteResponseParam
#
parameters = nil
puts obj.customerAddressDelete(parameters)

# SYNOPSIS
#   catalogCategoryCurrentStore(parameters)
#
# ARGS
#   parameters      CatalogCategoryCurrentStoreRequestParam - {urn:Magento}catalogCategoryCurrentStoreRequestParam
#
# RETURNS
#   parameters      CatalogCategoryCurrentStoreResponseParam - {urn:Magento}catalogCategoryCurrentStoreResponseParam
#
parameters = nil
puts obj.catalogCategoryCurrentStore(parameters)

# SYNOPSIS
#   catalogCategoryTree(parameters)
#
# ARGS
#   parameters      CatalogCategoryTreeRequestParam - {urn:Magento}catalogCategoryTreeRequestParam
#
# RETURNS
#   parameters      CatalogCategoryTreeResponseParam - {urn:Magento}catalogCategoryTreeResponseParam
#
parameters = nil
puts obj.catalogCategoryTree(parameters)

# SYNOPSIS
#   catalogCategoryLevel(parameters)
#
# ARGS
#   parameters      CatalogCategoryLevelRequestParam - {urn:Magento}catalogCategoryLevelRequestParam
#
# RETURNS
#   parameters      CatalogCategoryLevelResponseParam - {urn:Magento}catalogCategoryLevelResponseParam
#
parameters = nil
puts obj.catalogCategoryLevel(parameters)

# SYNOPSIS
#   catalogCategoryInfo(parameters)
#
# ARGS
#   parameters      CatalogCategoryInfoRequestParam - {urn:Magento}catalogCategoryInfoRequestParam
#
# RETURNS
#   parameters      CatalogCategoryInfoResponseParam - {urn:Magento}catalogCategoryInfoResponseParam
#
parameters = nil
puts obj.catalogCategoryInfo(parameters)

# SYNOPSIS
#   catalogCategoryCreate(parameters)
#
# ARGS
#   parameters      CatalogCategoryCreateRequestParam - {urn:Magento}catalogCategoryCreateRequestParam
#
# RETURNS
#   parameters      CatalogCategoryCreateResponseParam - {urn:Magento}catalogCategoryCreateResponseParam
#
parameters = nil
puts obj.catalogCategoryCreate(parameters)

# SYNOPSIS
#   catalogCategoryUpdate(parameters)
#
# ARGS
#   parameters      CatalogCategoryUpdateRequestParam - {urn:Magento}catalogCategoryUpdateRequestParam
#
# RETURNS
#   parameters      CatalogCategoryUpdateResponseParam - {urn:Magento}catalogCategoryUpdateResponseParam
#
parameters = nil
puts obj.catalogCategoryUpdate(parameters)

# SYNOPSIS
#   catalogCategoryMove(parameters)
#
# ARGS
#   parameters      CatalogCategoryMoveRequestParam - {urn:Magento}catalogCategoryMoveRequestParam
#
# RETURNS
#   parameters      CatalogCategoryMoveResponseParam - {urn:Magento}catalogCategoryMoveResponseParam
#
parameters = nil
puts obj.catalogCategoryMove(parameters)

# SYNOPSIS
#   catalogCategoryDelete(parameters)
#
# ARGS
#   parameters      CatalogCategoryDeleteRequestParam - {urn:Magento}catalogCategoryDeleteRequestParam
#
# RETURNS
#   parameters      CatalogCategoryDeleteResponseParam - {urn:Magento}catalogCategoryDeleteResponseParam
#
parameters = nil
puts obj.catalogCategoryDelete(parameters)

# SYNOPSIS
#   catalogCategoryAssignedProducts(parameters)
#
# ARGS
#   parameters      CatalogCategoryAssignedProductsRequestParam - {urn:Magento}catalogCategoryAssignedProductsRequestParam
#
# RETURNS
#   parameters      CatalogCategoryAssignedProductsResponseParam - {urn:Magento}catalogCategoryAssignedProductsResponseParam
#
parameters = nil
puts obj.catalogCategoryAssignedProducts(parameters)

# SYNOPSIS
#   catalogCategoryAssignProduct(parameters)
#
# ARGS
#   parameters      CatalogCategoryAssignProductRequestParam - {urn:Magento}catalogCategoryAssignProductRequestParam
#
# RETURNS
#   parameters      CatalogCategoryAssignProductResponseParam - {urn:Magento}catalogCategoryAssignProductResponseParam
#
parameters = nil
puts obj.catalogCategoryAssignProduct(parameters)

# SYNOPSIS
#   catalogCategoryUpdateProduct(parameters)
#
# ARGS
#   parameters      CatalogCategoryUpdateProductRequestParam - {urn:Magento}catalogCategoryUpdateProductRequestParam
#
# RETURNS
#   parameters      CatalogCategoryUpdateProductResponseParam - {urn:Magento}catalogCategoryUpdateProductResponseParam
#
parameters = nil
puts obj.catalogCategoryUpdateProduct(parameters)

# SYNOPSIS
#   catalogCategoryRemoveProduct(parameters)
#
# ARGS
#   parameters      CatalogCategoryRemoveProductRequestParam - {urn:Magento}catalogCategoryRemoveProductRequestParam
#
# RETURNS
#   parameters      CatalogCategoryRemoveProductResponseParam - {urn:Magento}catalogCategoryRemoveProductResponseParam
#
parameters = nil
puts obj.catalogCategoryRemoveProduct(parameters)

# SYNOPSIS
#   catalogProductCurrentStore(parameters)
#
# ARGS
#   parameters      CatalogProductCurrentStoreRequestParam - {urn:Magento}catalogProductCurrentStoreRequestParam
#
# RETURNS
#   parameters      CatalogProductCurrentStoreResponseParam - {urn:Magento}catalogProductCurrentStoreResponseParam
#
parameters = nil
puts obj.catalogProductCurrentStore(parameters)

# SYNOPSIS
#   catalogProductList(parameters)
#
# ARGS
#   parameters      CatalogProductListRequestParam - {urn:Magento}catalogProductListRequestParam
#
# RETURNS
#   parameters      CatalogProductListResponseParam - {urn:Magento}catalogProductListResponseParam
#
parameters = nil
puts obj.catalogProductList(parameters)

# SYNOPSIS
#   catalogProductInfo(parameters)
#
# ARGS
#   parameters      CatalogProductInfoRequestParam - {urn:Magento}catalogProductInfoRequestParam
#
# RETURNS
#   parameters      CatalogProductInfoResponseParam - {urn:Magento}catalogProductInfoResponseParam
#
parameters = nil
puts obj.catalogProductInfo(parameters)

# SYNOPSIS
#   catalogProductCreate(parameters)
#
# ARGS
#   parameters      CatalogProductCreateRequestParam - {urn:Magento}catalogProductCreateRequestParam
#
# RETURNS
#   parameters      CatalogProductCreateResponseParam - {urn:Magento}catalogProductCreateResponseParam
#
parameters = nil
puts obj.catalogProductCreate(parameters)

# SYNOPSIS
#   catalogProductUpdate(parameters)
#
# ARGS
#   parameters      CatalogProductUpdateRequestParam - {urn:Magento}catalogProductUpdateRequestParam
#
# RETURNS
#   parameters      CatalogProductUpdateResponseParam - {urn:Magento}catalogProductUpdateResponseParam
#
parameters = nil
puts obj.catalogProductUpdate(parameters)

# SYNOPSIS
#   catalogProductSetSpecialPrice(parameters)
#
# ARGS
#   parameters      CatalogProductSetSpecialPriceRequestParam - {urn:Magento}catalogProductSetSpecialPriceRequestParam
#
# RETURNS
#   parameters      CatalogProductSetSpecialPriceResponseParam - {urn:Magento}catalogProductSetSpecialPriceResponseParam
#
parameters = nil
puts obj.catalogProductSetSpecialPrice(parameters)

# SYNOPSIS
#   catalogProductGetSpecialPrice(parameters)
#
# ARGS
#   parameters      CatalogProductGetSpecialPriceRequestParam - {urn:Magento}catalogProductGetSpecialPriceRequestParam
#
# RETURNS
#   parameters      CatalogProductGetSpecialPriceResponseParam - {urn:Magento}catalogProductGetSpecialPriceResponseParam
#
parameters = nil
puts obj.catalogProductGetSpecialPrice(parameters)

# SYNOPSIS
#   catalogProductDelete(parameters)
#
# ARGS
#   parameters      CatalogProductDeleteRequestParam - {urn:Magento}catalogProductDeleteRequestParam
#
# RETURNS
#   parameters      CatalogProductDeleteResponseParam - {urn:Magento}catalogProductDeleteResponseParam
#
parameters = nil
puts obj.catalogProductDelete(parameters)

# SYNOPSIS
#   catalogProductAttributeCurrentStore(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeCurrentStoreRequestParam - {urn:Magento}catalogProductAttributeCurrentStoreRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeCurrentStoreResponseParam - {urn:Magento}catalogProductAttributeCurrentStoreResponseParam
#
parameters = nil
puts obj.catalogProductAttributeCurrentStore(parameters)

# SYNOPSIS
#   catalogProductAttributeList(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeListRequestParam - {urn:Magento}catalogProductAttributeListRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeListResponseParam - {urn:Magento}catalogProductAttributeListResponseParam
#
parameters = nil
puts obj.catalogProductAttributeList(parameters)

# SYNOPSIS
#   catalogProductAttributeOptions(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeOptionsRequestParam - {urn:Magento}catalogProductAttributeOptionsRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeOptionsResponseParam - {urn:Magento}catalogProductAttributeOptionsResponseParam
#
parameters = nil
puts obj.catalogProductAttributeOptions(parameters)

# SYNOPSIS
#   catalogProductCustomOptionAdd(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionAddRequestParam - {urn:Magento}catalogProductCustomOptionAddRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionAddResponseParam - {urn:Magento}catalogProductCustomOptionAddResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionAdd(parameters)

# SYNOPSIS
#   catalogProductCustomOptionUpdate(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionUpdateRequestParam - {urn:Magento}catalogProductCustomOptionUpdateRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionUpdateResponseParam - {urn:Magento}catalogProductCustomOptionUpdateResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionUpdate(parameters)

# SYNOPSIS
#   catalogProductCustomOptionTypes(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionTypesRequestParam - {urn:Magento}catalogProductCustomOptionTypesRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionTypesResponseParam - {urn:Magento}catalogProductCustomOptionTypesResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionTypes(parameters)

# SYNOPSIS
#   catalogProductCustomOptionList(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionListRequestParam - {urn:Magento}catalogProductCustomOptionListRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionListResponseParam - {urn:Magento}catalogProductCustomOptionListResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionList(parameters)

# SYNOPSIS
#   catalogProductCustomOptionInfo(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionInfoRequestParam - {urn:Magento}catalogProductCustomOptionInfoRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionInfoResponseParam - {urn:Magento}catalogProductCustomOptionInfoResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionInfo(parameters)

# SYNOPSIS
#   catalogProductCustomOptionRemove(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionRemoveRequestParam - {urn:Magento}catalogProductCustomOptionRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionRemoveResponseParam - {urn:Magento}catalogProductCustomOptionRemoveResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionRemove(parameters)

# SYNOPSIS
#   catalogProductCustomOptionValueList(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionValueListRequestParam - {urn:Magento}catalogProductCustomOptionValueListRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionValueListResponseParam - {urn:Magento}catalogProductCustomOptionValueListResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionValueList(parameters)

# SYNOPSIS
#   catalogProductCustomOptionValueInfo(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionValueInfoRequestParam - {urn:Magento}catalogProductCustomOptionValueInfoRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionValueInfoResponseParam - {urn:Magento}catalogProductCustomOptionValueInfoResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionValueInfo(parameters)

# SYNOPSIS
#   catalogProductCustomOptionValueAdd(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionValueAddRequestParam - {urn:Magento}catalogProductCustomOptionValueAddRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionValueAddResponseParam - {urn:Magento}catalogProductCustomOptionValueAddResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionValueAdd(parameters)

# SYNOPSIS
#   catalogProductCustomOptionValueUpdate(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionValueUpdateRequestParam - {urn:Magento}catalogProductCustomOptionValueUpdateRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionValueUpdateResponseParam - {urn:Magento}catalogProductCustomOptionValueUpdateResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionValueUpdate(parameters)

# SYNOPSIS
#   catalogProductCustomOptionValueRemove(parameters)
#
# ARGS
#   parameters      CatalogProductCustomOptionValueRemoveRequestParam - {urn:Magento}catalogProductCustomOptionValueRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductCustomOptionValueRemoveResponseParam - {urn:Magento}catalogProductCustomOptionValueRemoveResponseParam
#
parameters = nil
puts obj.catalogProductCustomOptionValueRemove(parameters)

# SYNOPSIS
#   catalogProductAttributeSetCreate(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeSetCreateRequestParam - {urn:Magento}catalogProductAttributeSetCreateRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeSetCreateResponseParam - {urn:Magento}catalogProductAttributeSetCreateResponseParam
#
parameters = nil
puts obj.catalogProductAttributeSetCreate(parameters)

# SYNOPSIS
#   catalogProductAttributeSetRemove(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeSetRemoveRequestParam - {urn:Magento}catalogProductAttributeSetRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeSetRemoveResponseParam - {urn:Magento}catalogProductAttributeSetRemoveResponseParam
#
parameters = nil
puts obj.catalogProductAttributeSetRemove(parameters)

# SYNOPSIS
#   catalogProductAttributeSetList(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeSetListRequestParam - {urn:Magento}catalogProductAttributeSetListRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeSetListResponseParam - {urn:Magento}catalogProductAttributeSetListResponseParam
#
parameters = nil
puts obj.catalogProductAttributeSetList(parameters)

# SYNOPSIS
#   catalogProductAttributeSetAttributeAdd(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeSetAttributeAddRequestParam - {urn:Magento}catalogProductAttributeSetAttributeAddRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeSetAttributeAddResponseParam - {urn:Magento}catalogProductAttributeSetAttributeAddResponseParam
#
parameters = nil
puts obj.catalogProductAttributeSetAttributeAdd(parameters)

# SYNOPSIS
#   catalogProductAttributeSetAttributeRemove(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeSetAttributeRemoveRequestParam - {urn:Magento}catalogProductAttributeSetAttributeRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeSetAttributeRemoveResponseParam - {urn:Magento}catalogProductAttributeSetAttributeRemoveResponseParam
#
parameters = nil
puts obj.catalogProductAttributeSetAttributeRemove(parameters)

# SYNOPSIS
#   catalogProductAttributeSetGroupAdd(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeSetGroupAddRequestParam - {urn:Magento}catalogProductAttributeSetGroupAddRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeSetGroupAddResponseParam - {urn:Magento}catalogProductAttributeSetGroupAddResponseParam
#
parameters = nil
puts obj.catalogProductAttributeSetGroupAdd(parameters)

# SYNOPSIS
#   catalogProductAttributeSetGroupRename(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeSetGroupRenameRequestParam - {urn:Magento}catalogProductAttributeSetGroupRenameRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeSetGroupRenameResponseParam - {urn:Magento}catalogProductAttributeSetGroupRenameResponseParam
#
parameters = nil
puts obj.catalogProductAttributeSetGroupRename(parameters)

# SYNOPSIS
#   catalogProductAttributeSetGroupRemove(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeSetGroupRemoveRequestParam - {urn:Magento}catalogProductAttributeSetGroupRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeSetGroupRemoveResponseParam - {urn:Magento}catalogProductAttributeSetGroupRemoveResponseParam
#
parameters = nil
puts obj.catalogProductAttributeSetGroupRemove(parameters)

# SYNOPSIS
#   catalogProductTypeList(parameters)
#
# ARGS
#   parameters      CatalogProductTypeListRequestParam - {urn:Magento}catalogProductTypeListRequestParam
#
# RETURNS
#   parameters      CatalogProductTypeListResponseParam - {urn:Magento}catalogProductTypeListResponseParam
#
parameters = nil
puts obj.catalogProductTypeList(parameters)

# SYNOPSIS
#   catalogProductAttributeTierPriceInfo(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeTierPriceInfoRequestParam - {urn:Magento}catalogProductAttributeTierPriceInfoRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeTierPriceInfoResponseParam - {urn:Magento}catalogProductAttributeTierPriceInfoResponseParam
#
parameters = nil
puts obj.catalogProductAttributeTierPriceInfo(parameters)

# SYNOPSIS
#   catalogProductAttributeTierPriceUpdate(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeTierPriceUpdateRequestParam - {urn:Magento}catalogProductAttributeTierPriceUpdateRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeTierPriceUpdateResponseParam - {urn:Magento}catalogProductAttributeTierPriceUpdateResponseParam
#
parameters = nil
puts obj.catalogProductAttributeTierPriceUpdate(parameters)

# SYNOPSIS
#   catalogCategoryAttributeCurrentStore(parameters)
#
# ARGS
#   parameters      CatalogCategoryAttributeCurrentStoreRequestParam - {urn:Magento}catalogCategoryAttributeCurrentStoreRequestParam
#
# RETURNS
#   parameters      CatalogCategoryAttributeCurrentStoreResponseParam - {urn:Magento}catalogCategoryAttributeCurrentStoreResponseParam
#
parameters = nil
puts obj.catalogCategoryAttributeCurrentStore(parameters)

# SYNOPSIS
#   catalogCategoryAttributeList(parameters)
#
# ARGS
#   parameters      CatalogCategoryAttributeListRequestParam - {urn:Magento}catalogCategoryAttributeListRequestParam
#
# RETURNS
#   parameters      CatalogCategoryAttributeListResponseParam - {urn:Magento}catalogCategoryAttributeListResponseParam
#
parameters = nil
puts obj.catalogCategoryAttributeList(parameters)

# SYNOPSIS
#   catalogCategoryAttributeOptions(parameters)
#
# ARGS
#   parameters      CatalogCategoryAttributeOptionsRequestParam - {urn:Magento}catalogCategoryAttributeOptionsRequestParam
#
# RETURNS
#   parameters      CatalogCategoryAttributeOptionsResponseParam - {urn:Magento}catalogCategoryAttributeOptionsResponseParam
#
parameters = nil
puts obj.catalogCategoryAttributeOptions(parameters)

# SYNOPSIS
#   catalogProductAttributeMediaCurrentStore(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeMediaCurrentStoreRequestParam - {urn:Magento}catalogProductAttributeMediaCurrentStoreRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeMediaCurrentStoreResponseParam - {urn:Magento}catalogProductAttributeMediaCurrentStoreResponseParam
#
parameters = nil
puts obj.catalogProductAttributeMediaCurrentStore(parameters)

# SYNOPSIS
#   catalogProductAttributeMediaList(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeMediaListRequestParam - {urn:Magento}catalogProductAttributeMediaListRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeMediaListResponseParam - {urn:Magento}catalogProductAttributeMediaListResponseParam
#
parameters = nil
puts obj.catalogProductAttributeMediaList(parameters)

# SYNOPSIS
#   catalogProductAttributeMediaInfo(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeMediaInfoRequestParam - {urn:Magento}catalogProductAttributeMediaInfoRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeMediaInfoResponseParam - {urn:Magento}catalogProductAttributeMediaInfoResponseParam
#
parameters = nil
puts obj.catalogProductAttributeMediaInfo(parameters)

# SYNOPSIS
#   catalogProductAttributeMediaTypes(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeMediaTypesRequestParam - {urn:Magento}catalogProductAttributeMediaTypesRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeMediaTypesResponseParam - {urn:Magento}catalogProductAttributeMediaTypesResponseParam
#
parameters = nil
puts obj.catalogProductAttributeMediaTypes(parameters)

# SYNOPSIS
#   catalogProductAttributeMediaCreate(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeMediaCreateRequestParam - {urn:Magento}catalogProductAttributeMediaCreateRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeMediaCreateResponseParam - {urn:Magento}catalogProductAttributeMediaCreateResponseParam
#
parameters = nil
puts obj.catalogProductAttributeMediaCreate(parameters)

# SYNOPSIS
#   catalogProductAttributeMediaUpdate(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeMediaUpdateRequestParam - {urn:Magento}catalogProductAttributeMediaUpdateRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeMediaUpdateResponseParam - {urn:Magento}catalogProductAttributeMediaUpdateResponseParam
#
parameters = nil
puts obj.catalogProductAttributeMediaUpdate(parameters)

# SYNOPSIS
#   catalogProductAttributeMediaRemove(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeMediaRemoveRequestParam - {urn:Magento}catalogProductAttributeMediaRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeMediaRemoveResponseParam - {urn:Magento}catalogProductAttributeMediaRemoveResponseParam
#
parameters = nil
puts obj.catalogProductAttributeMediaRemove(parameters)

# SYNOPSIS
#   catalogProductLinkList(parameters)
#
# ARGS
#   parameters      CatalogProductLinkListRequestParam - {urn:Magento}catalogProductLinkListRequestParam
#
# RETURNS
#   parameters      CatalogProductLinkListResponseParam - {urn:Magento}catalogProductLinkListResponseParam
#
parameters = nil
puts obj.catalogProductLinkList(parameters)

# SYNOPSIS
#   catalogProductLinkAssign(parameters)
#
# ARGS
#   parameters      CatalogProductLinkAssignRequestParam - {urn:Magento}catalogProductLinkAssignRequestParam
#
# RETURNS
#   parameters      CatalogProductLinkAssignResponseParam - {urn:Magento}catalogProductLinkAssignResponseParam
#
parameters = nil
puts obj.catalogProductLinkAssign(parameters)

# SYNOPSIS
#   catalogProductLinkUpdate(parameters)
#
# ARGS
#   parameters      CatalogProductLinkUpdateRequestParam - {urn:Magento}catalogProductLinkUpdateRequestParam
#
# RETURNS
#   parameters      CatalogProductLinkUpdateResponseParam - {urn:Magento}catalogProductLinkUpdateResponseParam
#
parameters = nil
puts obj.catalogProductLinkUpdate(parameters)

# SYNOPSIS
#   catalogProductLinkRemove(parameters)
#
# ARGS
#   parameters      CatalogProductLinkRemoveRequestParam - {urn:Magento}catalogProductLinkRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductLinkRemoveResponseParam - {urn:Magento}catalogProductLinkRemoveResponseParam
#
parameters = nil
puts obj.catalogProductLinkRemove(parameters)

# SYNOPSIS
#   catalogProductLinkTypes(parameters)
#
# ARGS
#   parameters      CatalogProductLinkTypesRequestParam - {urn:Magento}catalogProductLinkTypesRequestParam
#
# RETURNS
#   parameters      CatalogProductLinkTypesResponseParam - {urn:Magento}catalogProductLinkTypesResponseParam
#
parameters = nil
puts obj.catalogProductLinkTypes(parameters)

# SYNOPSIS
#   catalogProductLinkAttributes(parameters)
#
# ARGS
#   parameters      CatalogProductLinkAttributesRequestParam - {urn:Magento}catalogProductLinkAttributesRequestParam
#
# RETURNS
#   parameters      CatalogProductLinkAttributesResponseParam - {urn:Magento}catalogProductLinkAttributesResponseParam
#
parameters = nil
puts obj.catalogProductLinkAttributes(parameters)

# SYNOPSIS
#   catalogProductAttributeCreate(parameters)
#
# ARGS
#   parameters      CatalogProductAttributeCreateRequestParam - {urn:Magento}catalogProductAttributeCreateRequestParam
#
# RETURNS
#   parameters      CatalogProductAttributeCreateResponseParam - {urn:Magento}catalogProductAttributeCreateResponseParam
#
parameters = nil
puts obj.catalogProductAttributeCreate(parameters)

# SYNOPSIS
#   salesOrderList(parameters)
#
# ARGS
#   parameters      SalesOrderListRequestParam - {urn:Magento}salesOrderListRequestParam
#
# RETURNS
#   parameters      SalesOrderListResponseParam - {urn:Magento}salesOrderListResponseParam
#
parameters = nil
puts obj.salesOrderList(parameters)

# SYNOPSIS
#   salesOrderInfo(parameters)
#
# ARGS
#   parameters      SalesOrderInfoRequestParam - {urn:Magento}salesOrderInfoRequestParam
#
# RETURNS
#   parameters      SalesOrderInfoResponseParam - {urn:Magento}salesOrderInfoResponseParam
#
parameters = nil
puts obj.salesOrderInfo(parameters)

# SYNOPSIS
#   salesOrderAddComment(parameters)
#
# ARGS
#   parameters      SalesOrderAddCommentRequestParam - {urn:Magento}salesOrderAddCommentRequestParam
#
# RETURNS
#   parameters      SalesOrderAddCommentResponseParam - {urn:Magento}salesOrderAddCommentResponseParam
#
parameters = nil
puts obj.salesOrderAddComment(parameters)

# SYNOPSIS
#   salesOrderHold(parameters)
#
# ARGS
#   parameters      SalesOrderHoldRequestParam - {urn:Magento}salesOrderHoldRequestParam
#
# RETURNS
#   parameters      SalesOrderHoldResponseParam - {urn:Magento}salesOrderHoldResponseParam
#
parameters = nil
puts obj.salesOrderHold(parameters)

# SYNOPSIS
#   salesOrderUnhold(parameters)
#
# ARGS
#   parameters      SalesOrderUnholdRequestParam - {urn:Magento}salesOrderUnholdRequestParam
#
# RETURNS
#   parameters      SalesOrderUnholdResponseParam - {urn:Magento}salesOrderUnholdResponseParam
#
parameters = nil
puts obj.salesOrderUnhold(parameters)

# SYNOPSIS
#   salesOrderCancel(parameters)
#
# ARGS
#   parameters      SalesOrderCancelRequestParam - {urn:Magento}salesOrderCancelRequestParam
#
# RETURNS
#   parameters      SalesOrderCancelResponseParam - {urn:Magento}salesOrderCancelResponseParam
#
parameters = nil
puts obj.salesOrderCancel(parameters)

# SYNOPSIS
#   salesOrderShipmentList(parameters)
#
# ARGS
#   parameters      SalesOrderShipmentListRequestParam - {urn:Magento}salesOrderShipmentListRequestParam
#
# RETURNS
#   parameters      SalesOrderShipmentListResponseParam - {urn:Magento}salesOrderShipmentListResponseParam
#
parameters = nil
puts obj.salesOrderShipmentList(parameters)

# SYNOPSIS
#   salesOrderShipmentInfo(parameters)
#
# ARGS
#   parameters      SalesOrderShipmentInfoRequestParam - {urn:Magento}salesOrderShipmentInfoRequestParam
#
# RETURNS
#   parameters      SalesOrderShipmentInfoResponseParam - {urn:Magento}salesOrderShipmentInfoResponseParam
#
parameters = nil
puts obj.salesOrderShipmentInfo(parameters)

# SYNOPSIS
#   salesOrderShipmentCreate(parameters)
#
# ARGS
#   parameters      SalesOrderShipmentCreateRequestParam - {urn:Magento}salesOrderShipmentCreateRequestParam
#
# RETURNS
#   parameters      SalesOrderShipmentCreateResponseParam - {urn:Magento}salesOrderShipmentCreateResponseParam
#
parameters = nil
puts obj.salesOrderShipmentCreate(parameters)

# SYNOPSIS
#   salesOrderShipmentAddComment(parameters)
#
# ARGS
#   parameters      SalesOrderShipmentAddCommentRequestParam - {urn:Magento}salesOrderShipmentAddCommentRequestParam
#
# RETURNS
#   parameters      SalesOrderShipmentAddCommentResponseParam - {urn:Magento}salesOrderShipmentAddCommentResponseParam
#
parameters = nil
puts obj.salesOrderShipmentAddComment(parameters)

# SYNOPSIS
#   salesOrderShipmentAddTrack(parameters)
#
# ARGS
#   parameters      SalesOrderShipmentAddTrackRequestParam - {urn:Magento}salesOrderShipmentAddTrackRequestParam
#
# RETURNS
#   parameters      SalesOrderShipmentAddTrackResponseParam - {urn:Magento}salesOrderShipmentAddTrackResponseParam
#
parameters = nil
puts obj.salesOrderShipmentAddTrack(parameters)

# SYNOPSIS
#   salesOrderShipmentRemoveTrack(parameters)
#
# ARGS
#   parameters      SalesOrderShipmentRemoveTrackRequestParam - {urn:Magento}salesOrderShipmentRemoveTrackRequestParam
#
# RETURNS
#   parameters      SalesOrderShipmentRemoveTrackResponseParam - {urn:Magento}salesOrderShipmentRemoveTrackResponseParam
#
parameters = nil
puts obj.salesOrderShipmentRemoveTrack(parameters)

# SYNOPSIS
#   salesOrderShipmentSendInfo(parameters)
#
# ARGS
#   parameters      SalesOrderShipmentSendInfoRequestParam - {urn:Magento}salesOrderShipmentSendInfoRequestParam
#
# RETURNS
#   parameters      SalesOrderShipmentSendInfoResponseParam - {urn:Magento}salesOrderShipmentSendInfoResponseParam
#
parameters = nil
puts obj.salesOrderShipmentSendInfo(parameters)

# SYNOPSIS
#   salesOrderShipmentGetCarriers(parameters)
#
# ARGS
#   parameters      SalesOrderShipmentGetCarriersRequestParam - {urn:Magento}salesOrderShipmentGetCarriersRequestParam
#
# RETURNS
#   parameters      SalesOrderShipmentGetCarriersResponseParam - {urn:Magento}salesOrderShipmentGetCarriersResponseParam
#
parameters = nil
puts obj.salesOrderShipmentGetCarriers(parameters)

# SYNOPSIS
#   salesOrderInvoiceList(parameters)
#
# ARGS
#   parameters      SalesOrderInvoiceListRequestParam - {urn:Magento}salesOrderInvoiceListRequestParam
#
# RETURNS
#   parameters      SalesOrderInvoiceListResponseParam - {urn:Magento}salesOrderInvoiceListResponseParam
#
parameters = nil
puts obj.salesOrderInvoiceList(parameters)

# SYNOPSIS
#   salesOrderInvoiceInfo(parameters)
#
# ARGS
#   parameters      SalesOrderInvoiceInfoRequestParam - {urn:Magento}salesOrderInvoiceInfoRequestParam
#
# RETURNS
#   parameters      SalesOrderInvoiceInfoResponseParam - {urn:Magento}salesOrderInvoiceInfoResponseParam
#
parameters = nil
puts obj.salesOrderInvoiceInfo(parameters)

# SYNOPSIS
#   salesOrderInvoiceCreate(parameters)
#
# ARGS
#   parameters      SalesOrderInvoiceCreateRequestParam - {urn:Magento}salesOrderInvoiceCreateRequestParam
#
# RETURNS
#   parameters      SalesOrderInvoiceCreateResponseParam - {urn:Magento}salesOrderInvoiceCreateResponseParam
#
parameters = nil
puts obj.salesOrderInvoiceCreate(parameters)

# SYNOPSIS
#   salesOrderInvoiceAddComment(parameters)
#
# ARGS
#   parameters      SalesOrderInvoiceAddCommentRequestParam - {urn:Magento}salesOrderInvoiceAddCommentRequestParam
#
# RETURNS
#   parameters      SalesOrderInvoiceAddCommentResponseParam - {urn:Magento}salesOrderInvoiceAddCommentResponseParam
#
parameters = nil
puts obj.salesOrderInvoiceAddComment(parameters)

# SYNOPSIS
#   salesOrderInvoiceCapture(parameters)
#
# ARGS
#   parameters      SalesOrderInvoiceCaptureRequestParam - {urn:Magento}salesOrderInvoiceCaptureRequestParam
#
# RETURNS
#   parameters      SalesOrderInvoiceCaptureResponseParam - {urn:Magento}salesOrderInvoiceCaptureResponseParam
#
parameters = nil
puts obj.salesOrderInvoiceCapture(parameters)

# SYNOPSIS
#   salesOrderInvoiceVoid(parameters)
#
# ARGS
#   parameters      SalesOrderInvoiceVoidRequestParam - {urn:Magento}salesOrderInvoiceVoidRequestParam
#
# RETURNS
#   parameters      SalesOrderInvoiceVoidResponseParam - {urn:Magento}salesOrderInvoiceVoidResponseParam
#
parameters = nil
puts obj.salesOrderInvoiceVoid(parameters)

# SYNOPSIS
#   salesOrderInvoiceCancel(parameters)
#
# ARGS
#   parameters      SalesOrderInvoiceCancelRequestParam - {urn:Magento}salesOrderInvoiceCancelRequestParam
#
# RETURNS
#   parameters      SalesOrderInvoiceCancelResponseParam - {urn:Magento}salesOrderInvoiceCancelResponseParam
#
parameters = nil
puts obj.salesOrderInvoiceCancel(parameters)

# SYNOPSIS
#   salesOrderCreditmemoList(parameters)
#
# ARGS
#   parameters      SalesOrderCreditmemoListRequestParam - {urn:Magento}salesOrderCreditmemoListRequestParam
#
# RETURNS
#   parameters      SalesOrderCreditmemoListResponseParam - {urn:Magento}salesOrderCreditmemoListResponseParam
#
parameters = nil
puts obj.salesOrderCreditmemoList(parameters)

# SYNOPSIS
#   salesOrderCreditmemoInfo(parameters)
#
# ARGS
#   parameters      SalesOrderCreditmemoInfoRequestParam - {urn:Magento}salesOrderCreditmemoInfoRequestParam
#
# RETURNS
#   parameters      SalesOrderCreditmemoInfoResponseParam - {urn:Magento}salesOrderCreditmemoInfoResponseParam
#
parameters = nil
puts obj.salesOrderCreditmemoInfo(parameters)

# SYNOPSIS
#   salesOrderCreditmemoCreate(parameters)
#
# ARGS
#   parameters      SalesOrderCreditmemoCreateRequestParam - {urn:Magento}salesOrderCreditmemoCreateRequestParam
#
# RETURNS
#   parameters      SalesOrderCreditmemoCreateResponseParam - {urn:Magento}salesOrderCreditmemoCreateResponseParam
#
parameters = nil
puts obj.salesOrderCreditmemoCreate(parameters)

# SYNOPSIS
#   salesOrderCreditmemoAddComment(parameters)
#
# ARGS
#   parameters      SalesOrderCreditmemoAddCommentRequestParam - {urn:Magento}salesOrderCreditmemoAddCommentRequestParam
#
# RETURNS
#   parameters      SalesOrderCreditmemoAddCommentResponseParam - {urn:Magento}salesOrderCreditmemoAddCommentResponseParam
#
parameters = nil
puts obj.salesOrderCreditmemoAddComment(parameters)

# SYNOPSIS
#   salesOrderCreditmemoCancel(parameters)
#
# ARGS
#   parameters      SalesOrderCreditmemoCancelRequestParam - {urn:Magento}salesOrderCreditmemoCancelRequestParam
#
# RETURNS
#   parameters      SalesOrderCreditmemoCancelResponseParam - {urn:Magento}salesOrderCreditmemoCancelResponseParam
#
parameters = nil
puts obj.salesOrderCreditmemoCancel(parameters)

# SYNOPSIS
#   catalogInventoryStockItemList(parameters)
#
# ARGS
#   parameters      CatalogInventoryStockItemListRequestParam - {urn:Magento}catalogInventoryStockItemListRequestParam
#
# RETURNS
#   parameters      CatalogInventoryStockItemListResponseParam - {urn:Magento}catalogInventoryStockItemListResponseParam
#
parameters = nil
puts obj.catalogInventoryStockItemList(parameters)

# SYNOPSIS
#   catalogInventoryStockItemUpdate(parameters)
#
# ARGS
#   parameters      CatalogInventoryStockItemUpdateRequestParam - {urn:Magento}catalogInventoryStockItemUpdateRequestParam
#
# RETURNS
#   parameters      CatalogInventoryStockItemUpdateResponseParam - {urn:Magento}catalogInventoryStockItemUpdateResponseParam
#
parameters = nil
puts obj.catalogInventoryStockItemUpdate(parameters)

# SYNOPSIS
#   shoppingCartCreate(parameters)
#
# ARGS
#   parameters      ShoppingCartCreateRequestParam - {urn:Magento}shoppingCartCreateRequestParam
#
# RETURNS
#   parameters      ShoppingCartCreateResponseParam - {urn:Magento}shoppingCartCreateResponseParam
#
parameters = nil
puts obj.shoppingCartCreate(parameters)

# SYNOPSIS
#   shoppingCartInfo(parameters)
#
# ARGS
#   parameters      ShoppingCartInfoRequestParam - {urn:Magento}shoppingCartInfoRequestParam
#
# RETURNS
#   parameters      ShoppingCartInfoResponseParam - {urn:Magento}shoppingCartInfoResponseParam
#
parameters = nil
puts obj.shoppingCartInfo(parameters)

# SYNOPSIS
#   shoppingCartTotals(parameters)
#
# ARGS
#   parameters      ShoppingCartTotalsRequestParam - {urn:Magento}shoppingCartTotalsRequestParam
#
# RETURNS
#   parameters      ShoppingCartTotalsResponseParam - {urn:Magento}shoppingCartTotalsResponseParam
#
parameters = nil
puts obj.shoppingCartTotals(parameters)

# SYNOPSIS
#   shoppingCartOrder(parameters)
#
# ARGS
#   parameters      ShoppingCartOrderRequestParam - {urn:Magento}shoppingCartOrderRequestParam
#
# RETURNS
#   parameters      ShoppingCartOrderResponseParam - {urn:Magento}shoppingCartOrderResponseParam
#
parameters = nil
puts obj.shoppingCartOrder(parameters)

# SYNOPSIS
#   shoppingCartLicense(parameters)
#
# ARGS
#   parameters      ShoppingCartLicenseRequestParam - {urn:Magento}shoppingCartLicenseRequestParam
#
# RETURNS
#   parameters      ShoppingCartLicenseResponseParam - {urn:Magento}shoppingCartLicenseResponseParam
#
parameters = nil
puts obj.shoppingCartLicense(parameters)

# SYNOPSIS
#   shoppingCartProductAdd(parameters)
#
# ARGS
#   parameters      ShoppingCartProductAddRequestParam - {urn:Magento}shoppingCartProductAddRequestParam
#
# RETURNS
#   parameters      ShoppingCartProductAddResponseParam - {urn:Magento}shoppingCartProductAddResponseParam
#
parameters = nil
puts obj.shoppingCartProductAdd(parameters)

# SYNOPSIS
#   shoppingCartProductUpdate(parameters)
#
# ARGS
#   parameters      ShoppingCartProductUpdateRequestParam - {urn:Magento}shoppingCartProductUpdateRequestParam
#
# RETURNS
#   parameters      ShoppingCartProductUpdateResponseParam - {urn:Magento}shoppingCartProductUpdateResponseParam
#
parameters = nil
puts obj.shoppingCartProductUpdate(parameters)

# SYNOPSIS
#   shoppingCartProductRemove(parameters)
#
# ARGS
#   parameters      ShoppingCartProductRemoveRequestParam - {urn:Magento}shoppingCartProductRemoveRequestParam
#
# RETURNS
#   parameters      ShoppingCartProductRemoveResponseParam - {urn:Magento}shoppingCartProductRemoveResponseParam
#
parameters = nil
puts obj.shoppingCartProductRemove(parameters)

# SYNOPSIS
#   shoppingCartProductList(parameters)
#
# ARGS
#   parameters      ShoppingCartProductListRequestParam - {urn:Magento}shoppingCartProductListRequestParam
#
# RETURNS
#   parameters      ShoppingCartProductListResponseParam - {urn:Magento}shoppingCartProductListResponseParam
#
parameters = nil
puts obj.shoppingCartProductList(parameters)

# SYNOPSIS
#   shoppingCartProductMoveToCustomerQuote(parameters)
#
# ARGS
#   parameters      ShoppingCartProductMoveToCustomerQuoteRequestParam - {urn:Magento}shoppingCartProductMoveToCustomerQuoteRequestParam
#
# RETURNS
#   parameters      ShoppingCartProductMoveToCustomerQuoteResponseParam - {urn:Magento}shoppingCartProductMoveToCustomerQuoteResponseParam
#
parameters = nil
puts obj.shoppingCartProductMoveToCustomerQuote(parameters)

# SYNOPSIS
#   shoppingCartCustomerSet(parameters)
#
# ARGS
#   parameters      ShoppingCartCustomerSetRequestParam - {urn:Magento}shoppingCartCustomerSetRequestParam
#
# RETURNS
#   parameters      ShoppingCartCustomerSetResponseParam - {urn:Magento}shoppingCartCustomerSetResponseParam
#
parameters = nil
puts obj.shoppingCartCustomerSet(parameters)

# SYNOPSIS
#   shoppingCartCustomerAddresses(parameters)
#
# ARGS
#   parameters      ShoppingCartCustomerAddressesRequestParam - {urn:Magento}shoppingCartCustomerAddressesRequestParam
#
# RETURNS
#   parameters      ShoppingCartCustomerAddressesResponseParam - {urn:Magento}shoppingCartCustomerAddressesResponseParam
#
parameters = nil
puts obj.shoppingCartCustomerAddresses(parameters)

# SYNOPSIS
#   shoppingCartShippingMethod(parameters)
#
# ARGS
#   parameters      ShoppingCartShippingMethodRequestParam - {urn:Magento}shoppingCartShippingMethodRequestParam
#
# RETURNS
#   parameters      ShoppingCartShippingMethodResponseParam - {urn:Magento}shoppingCartShippingMethodResponseParam
#
parameters = nil
puts obj.shoppingCartShippingMethod(parameters)

# SYNOPSIS
#   shoppingCartShippingList(parameters)
#
# ARGS
#   parameters      ShoppingCartShippingListRequestParam - {urn:Magento}shoppingCartShippingListRequestParam
#
# RETURNS
#   parameters      ShoppingCartShippingListResponseParam - {urn:Magento}shoppingCartShippingListResponseParam
#
parameters = nil
puts obj.shoppingCartShippingList(parameters)

# SYNOPSIS
#   shoppingCartPaymentMethod(parameters)
#
# ARGS
#   parameters      ShoppingCartPaymentMethodRequestParam - {urn:Magento}shoppingCartPaymentMethodRequestParam
#
# RETURNS
#   parameters      ShoppingCartPaymentMethodResponseParam - {urn:Magento}shoppingCartPaymentMethodResponseParam
#
parameters = nil
puts obj.shoppingCartPaymentMethod(parameters)

# SYNOPSIS
#   shoppingCartPaymentList(parameters)
#
# ARGS
#   parameters      ShoppingCartPaymentListRequestParam - {urn:Magento}shoppingCartPaymentListRequestParam
#
# RETURNS
#   parameters      ShoppingCartPaymentListResponseParam - {urn:Magento}shoppingCartPaymentListResponseParam
#
parameters = nil
puts obj.shoppingCartPaymentList(parameters)

# SYNOPSIS
#   shoppingCartCouponAdd(parameters)
#
# ARGS
#   parameters      ShoppingCartCouponAddRequestParam - {urn:Magento}shoppingCartCouponAddRequestParam
#
# RETURNS
#   parameters      ShoppingCartCouponAddResponseParam - {urn:Magento}shoppingCartCouponAddResponseParam
#
parameters = nil
puts obj.shoppingCartCouponAdd(parameters)

# SYNOPSIS
#   shoppingCartCouponRemove(parameters)
#
# ARGS
#   parameters      ShoppingCartCouponRemoveRequestParam - {urn:Magento}shoppingCartCouponRemoveRequestParam
#
# RETURNS
#   parameters      ShoppingCartCouponRemoveResponseParam - {urn:Magento}shoppingCartCouponRemoveResponseParam
#
parameters = nil
puts obj.shoppingCartCouponRemove(parameters)

# SYNOPSIS
#   catalogProductTagList(parameters)
#
# ARGS
#   parameters      CatalogProductTagListRequestParam - {urn:Magento}catalogProductTagListRequestParam
#
# RETURNS
#   parameters      CatalogProductTagListResponseParam - {urn:Magento}catalogProductTagListResponseParam
#
parameters = nil
puts obj.catalogProductTagList(parameters)

# SYNOPSIS
#   catalogProductTagInfo(parameters)
#
# ARGS
#   parameters      CatalogProductTagInfoRequestParam - {urn:Magento}catalogProductTagInfoRequestParam
#
# RETURNS
#   parameters      CatalogProductTagInfoResponseParam - {urn:Magento}catalogProductTagInfoResponseParam
#
parameters = nil
puts obj.catalogProductTagInfo(parameters)

# SYNOPSIS
#   catalogProductTagAdd(parameters)
#
# ARGS
#   parameters      CatalogProductTagAddRequestParam - {urn:Magento}catalogProductTagAddRequestParam
#
# RETURNS
#   parameters      CatalogProductTagAddResponseParam - {urn:Magento}catalogProductTagAddResponseParam
#
parameters = nil
puts obj.catalogProductTagAdd(parameters)

# SYNOPSIS
#   catalogProductTagUpdate(parameters)
#
# ARGS
#   parameters      CatalogProductTagUpdateRequestParam - {urn:Magento}catalogProductTagUpdateRequestParam
#
# RETURNS
#   parameters      CatalogProductTagUpdateResponseParam - {urn:Magento}catalogProductTagUpdateResponseParam
#
parameters = nil
puts obj.catalogProductTagUpdate(parameters)

# SYNOPSIS
#   catalogProductTagRemove(parameters)
#
# ARGS
#   parameters      CatalogProductTagRemoveRequestParam - {urn:Magento}catalogProductTagRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductTagRemoveResponseParam - {urn:Magento}catalogProductTagRemoveResponseParam
#
parameters = nil
puts obj.catalogProductTagRemove(parameters)

# SYNOPSIS
#   giftMessageSetForQuote(parameters)
#
# ARGS
#   parameters      GiftMessageForQuoteRequestParam - {urn:Magento}giftMessageForQuoteRequestParam
#
# RETURNS
#   parameters      GiftMessageForQuoteResponseParam - {urn:Magento}giftMessageForQuoteResponseParam
#
parameters = nil
puts obj.giftMessageSetForQuote(parameters)

# SYNOPSIS
#   giftMessageSetForQuoteItem(parameters)
#
# ARGS
#   parameters      GiftMessageForQuoteItemRequestParam - {urn:Magento}giftMessageForQuoteItemRequestParam
#
# RETURNS
#   parameters      GiftMessageForQuoteItemResponseParam - {urn:Magento}giftMessageForQuoteItemResponseParam
#
parameters = nil
puts obj.giftMessageSetForQuoteItem(parameters)

# SYNOPSIS
#   giftMessageSetForQuoteProduct(parameters)
#
# ARGS
#   parameters      GiftMessageForQuoteProductRequestParam - {urn:Magento}giftMessageForQuoteProductRequestParam
#
# RETURNS
#   parameters      GiftMessageForQuoteProductResponseParam - {urn:Magento}giftMessageForQuoteProductResponseParam
#
parameters = nil
puts obj.giftMessageSetForQuoteProduct(parameters)

# SYNOPSIS
#   catalogProductDownloadableLinkAdd(parameters)
#
# ARGS
#   parameters      CatalogProductDownloadableLinkAddRequestParam - {urn:Magento}catalogProductDownloadableLinkAddRequestParam
#
# RETURNS
#   parameters      CatalogProductDownloadableLinkAddResponseParam - {urn:Magento}catalogProductDownloadableLinkAddResponseParam
#
parameters = nil
puts obj.catalogProductDownloadableLinkAdd(parameters)

# SYNOPSIS
#   catalogProductDownloadableLinkList(parameters)
#
# ARGS
#   parameters      CatalogProductDownloadableLinkListRequestParam - {urn:Magento}catalogProductDownloadableLinkListRequestParam
#
# RETURNS
#   parameters      CatalogProductDownloadableLinkListResponseParam - {urn:Magento}catalogProductDownloadableLinkListResponseParam
#
parameters = nil
puts obj.catalogProductDownloadableLinkList(parameters)

# SYNOPSIS
#   catalogProductDownloadableLinkRemove(parameters)
#
# ARGS
#   parameters      CatalogProductDownloadableLinkRemoveRequestParam - {urn:Magento}catalogProductDownloadableLinkRemoveRequestParam
#
# RETURNS
#   parameters      CatalogProductDownloadableLinkRemoveResponseParam - {urn:Magento}catalogProductDownloadableLinkRemoveResponseParam
#
parameters = nil
puts obj.catalogProductDownloadableLinkRemove(parameters)

# SYNOPSIS
#   enterpriseCustomerbalanceBalance(parameters)
#
# ARGS
#   parameters      EnterpriseCustomerbalanceBalanceRequestParam - {urn:Magento}enterpriseCustomerbalanceBalanceRequestParam
#
# RETURNS
#   parameters      EnterpriseCustomerbalanceBalanceResponseParam - {urn:Magento}enterpriseCustomerbalanceBalanceResponseParam
#
parameters = nil
puts obj.enterpriseCustomerbalanceBalance(parameters)

# SYNOPSIS
#   enterpriseCustomerbalanceHistory(parameters)
#
# ARGS
#   parameters      EnterpriseCustomerbalanceHistoryRequestParam - {urn:Magento}enterpriseCustomerbalanceHistoryRequestParam
#
# RETURNS
#   parameters      EnterpriseCustomerbalanceHistoryResponseParam - {urn:Magento}enterpriseCustomerbalanceHistoryResponseParam
#
parameters = nil
puts obj.enterpriseCustomerbalanceHistory(parameters)

# SYNOPSIS
#   shoppingCartCustomerbalanceSetAmount(parameters)
#
# ARGS
#   parameters      ShoppingCartCustomerbalanceSetAmountRequestParam - {urn:Magento}shoppingCartCustomerbalanceSetAmountRequestParam
#
# RETURNS
#   parameters      ShoppingCartCustomerbalanceSetAmountResponseParam - {urn:Magento}shoppingCartCustomerbalanceSetAmountResponseParam
#
parameters = nil
puts obj.shoppingCartCustomerbalanceSetAmount(parameters)

# SYNOPSIS
#   shoppingCartCustomerbalanceRemoveAmount(parameters)
#
# ARGS
#   parameters      ShoppingCartCustomerbalanceRemoveAmountRequestParam - {urn:Magento}shoppingCartCustomerbalanceRemoveAmountRequestParam
#
# RETURNS
#   parameters      ShoppingCartCustomerbalanceRemoveAmountResponseParam - {urn:Magento}shoppingCartCustomerbalanceRemoveAmountResponseParam
#
parameters = nil
puts obj.shoppingCartCustomerbalanceRemoveAmount(parameters)

# SYNOPSIS
#   giftcardAccountCreate(parameters)
#
# ARGS
#   parameters      GiftcardAccountCreateRequestParam - {urn:Magento}giftcardAccountCreateRequestParam
#
# RETURNS
#   parameters      GiftcardAccountCreateResponseParam - {urn:Magento}giftcardAccountCreateResponseParam
#
parameters = nil
puts obj.giftcardAccountCreate(parameters)

# SYNOPSIS
#   giftcardAccountUpdate(parameters)
#
# ARGS
#   parameters      GiftcardAccountUpdateRequestParam - {urn:Magento}giftcardAccountUpdateRequestParam
#
# RETURNS
#   parameters      GiftcardAccountUpdateResponseParam - {urn:Magento}giftcardAccountUpdateResponseParam
#
parameters = nil
puts obj.giftcardAccountUpdate(parameters)

# SYNOPSIS
#   giftcardAccountRemove(parameters)
#
# ARGS
#   parameters      GiftcardAccountRemoveRequestParam - {urn:Magento}giftcardAccountRemoveRequestParam
#
# RETURNS
#   parameters      GiftcardAccountRemoveResponseParam - {urn:Magento}giftcardAccountRemoveResponseParam
#
parameters = nil
puts obj.giftcardAccountRemove(parameters)

# SYNOPSIS
#   giftcardAccountList(parameters)
#
# ARGS
#   parameters      GiftcardAccountListRequestParam - {urn:Magento}giftcardAccountListRequestParam
#
# RETURNS
#   parameters      GiftcardAccountListResponseParam - {urn:Magento}giftcardAccountListResponseParam
#
parameters = nil
puts obj.giftcardAccountList(parameters)

# SYNOPSIS
#   giftcardAccountInfo(parameters)
#
# ARGS
#   parameters      GiftcardAccountInfoRequestParam - {urn:Magento}giftcardAccountInfoRequestParam
#
# RETURNS
#   parameters      GiftcardAccountInfoResponseParam - {urn:Magento}giftcardAccountInfoResponseParam
#
parameters = nil
puts obj.giftcardAccountInfo(parameters)

# SYNOPSIS
#   giftcardCustomerInfo(parameters)
#
# ARGS
#   parameters      GiftcardCustomerInfoRequestParam - {urn:Magento}giftcardCustomerInfoRequestParam
#
# RETURNS
#   parameters      GiftcardCustomerInfoResponseParam - {urn:Magento}giftcardCustomerInfoResponseParam
#
parameters = nil
puts obj.giftcardCustomerInfo(parameters)

# SYNOPSIS
#   giftcardCustomerRedeem(parameters)
#
# ARGS
#   parameters      GiftcardCustomerRedeemRequestParam - {urn:Magento}giftcardCustomerRedeemRequestParam
#
# RETURNS
#   parameters      GiftcardCustomerRedeemResponseParam - {urn:Magento}giftcardCustomerRedeemResponseParam
#
parameters = nil
puts obj.giftcardCustomerRedeem(parameters)

# SYNOPSIS
#   shoppingCartGiftcardAdd(parameters)
#
# ARGS
#   parameters      ShoppingCartGiftcardAddRequestParam - {urn:Magento}shoppingCartGiftcardAddRequestParam
#
# RETURNS
#   parameters      ShoppingCartGiftcardAddResponseParam - {urn:Magento}shoppingCartGiftcardAddResponseParam
#
parameters = nil
puts obj.shoppingCartGiftcardAdd(parameters)

# SYNOPSIS
#   shoppingCartGiftcardRemove(parameters)
#
# ARGS
#   parameters      ShoppingCartGiftcardRemoveRequestParam - {urn:Magento}shoppingCartGiftcardRemoveRequestParam
#
# RETURNS
#   parameters      ShoppingCartGiftcardRemoveResponseParam - {urn:Magento}shoppingCartGiftcardRemoveResponseParam
#
parameters = nil
puts obj.shoppingCartGiftcardRemove(parameters)

# SYNOPSIS
#   shoppingCartGiftcardList(parameters)
#
# ARGS
#   parameters      ShoppingCartGiftcardListRequestParam - {urn:Magento}shoppingCartGiftcardListRequestParam
#
# RETURNS
#   parameters      ShoppingCartGiftcardListResponseParam - {urn:Magento}shoppingCartGiftcardListResponseParam
#
parameters = nil
puts obj.shoppingCartGiftcardList(parameters)


