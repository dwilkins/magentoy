class MagentoProduct < MagentoSoapModel
  extend Savon::Model
  client wsdl: Rails.root.join('public','v2_soap.xml')
  client logger: Rails.logger
  client strip_namespaces: false
  client soap_version: 2
  client advanced_typecasting: false
  client pretty_print_xml: true
#  global :convert_request_keys_to, :none
  global :element_form_default, :unqualified
  operations :catalog_product_list
  operations :catalog_product_info

  attr_accessor :product_id, :sku, :name, :set, :type, :category_ids, :website_ids



  def self.catalog_product_list filters=nil, store=nil
#    f = {:complex_filter => {:complexObjectArray => [{key: 'sku',value: {key: 'in', value: '28417090'}}]}}

    if filters.is_a? String
      filters = {sku: filters}
    end

    filter_array = []
    filter_type = 'filter'
    filters.each_pair do |k,v|
      if v.is_a? Hash
        filter_type = 'complex_filter'
        v.each_pair do |k1,v1| 
          v = {:key => k1,:value => v1}
        end
      end
      filter_array << {:key => k,:value => v}
    end

    passed_filters = {"complexObjectArray" => filter_array}
    catalog_product_list_request_param = {filter_type => passed_filters}

    resp = super(message: {sessionId: self.session,filters: catalog_product_list_request_param,storeView: store})
#    return resp
    products = []
    if resp.body && resp.body[:catalog_product_list_response_param] && resp.body[:catalog_product_list_response_param][:result] && resp.body[:catalog_product_list_response_param][:result][:complex_object_array]
      resp.body[:catalog_product_list_response_param][:result][:complex_object_array].each do |a|
        product = MagentoProduct.new()
        product.product_id = a[:product_id].to_s
        product.sku = a[:sku].to_s
        product.name = a[:name].to_s
        product.set = a[:set].to_s
        product.type = a[:type].to_s
        if a[:category_ids][:complex_object_array].is_a? Hash
          product.category_ids = a[:category_ids][:complex_object_array].collect { |a1| a1.to_s }
        else
          product.category_ids = [a[:category_ids][:complex_object_array].to_s]
        end
        if a[:website_ids][:complex_object_array].is_a? Hash
          product.website_ids = a[:website_ids][:complex_object_array].collect { |a1| a1.to_s }
        else
          product.website_ids = [a[:website_ids][:complex_object_array].to_s]
        end
        products << product
      end
    end
    products
  end

  def self.catalog_product_info product=nil, store=nil
    super(message: {sessionId: self.session,product: product,storeView: 'fas',attributes: nil, productIdentifierType: 'sku'})
  end

  def self.all
    self.catalog_product_list
  end



end
