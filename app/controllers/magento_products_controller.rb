class MagentoProductsController < ApplicationController
  # GET /magento_products
  # GET /magento_products.json
  def index
    @magento_products = MagentoProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @magento_products }
    end
  end

  # GET /magento_products/1
  # GET /magento_products/1.json
  def show
    @magento_product = MagentoProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @magento_product }
    end
  end

  # GET /magento_products/new
  # GET /magento_products/new.json
  def new
    @magento_product = MagentoProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @magento_product }
    end
  end

  # GET /magento_products/1/edit
  def edit
    @magento_product = MagentoProduct.find(params[:id])
  end

  # POST /magento_products
  # POST /magento_products.json
  def create
    @magento_product = MagentoProduct.new(params[:magento_product])

    respond_to do |format|
      if @magento_product.save
        format.html { redirect_to @magento_product, notice: 'Magento product was successfully created.' }
        format.json { render json: @magento_product, status: :created, location: @magento_product }
      else
        format.html { render action: "new" }
        format.json { render json: @magento_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /magento_products/1
  # PUT /magento_products/1.json
  def update
    @magento_product = MagentoProduct.find(params[:id])

    respond_to do |format|
      if @magento_product.update_attributes(params[:magento_product])
        format.html { redirect_to @magento_product, notice: 'Magento product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @magento_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magento_products/1
  # DELETE /magento_products/1.json
  def destroy
    @magento_product = MagentoProduct.find(params[:id])
    @magento_product.destroy

    respond_to do |format|
      format.html { redirect_to magento_products_url }
      format.json { head :no_content }
    end
  end
end
