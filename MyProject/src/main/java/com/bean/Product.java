package com.bean;

public class Product {

	
	private int customer_id;
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	private String product_warranty;
	private double product_weight;
	private int product_code;
	private int product_details_Id; 
	private int sub_categories_id;
	private String sub_categories_name;
	private int categories_id;
	private String categories_name;
	private String categories_description;
	private String product_name;
	private String product_description;
	private double product_Discount;
	private int product_id;
	private double product_price;
	private int product_Quntity;
	private int brand_id;
	private String brand_name;
	private String brand_description;
	private int image_id;
	private int stock_id;
	private String product_image;
	private int total_number_of_product_sell;
	private int total_available_product;
	
	private int payment_id;
	private String payment_status;
	private String payment_mode;
	private String payment_date;
	private double payment_price;

	private int invoice_id;
	private String seller_name;
	private String invoice_number;
	
	private int order_details_id;
	private int order_quntity;
	private double per_unit_product_cost;
	private double discount_on_product_cost;
	private double total_order_product_cost;
	private String order_status;
	private String order_date;
	private int kart_id;
	private int kardDeatails_id;
	private int orders_id;
	
	
	public int getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(int orders_id) {
		this.orders_id = orders_id;
	}
	public int getKart_id() {
		return kart_id;
	}
	public void setKart_id(int kart_id) {
		this.kart_id = kart_id;
	}
	public int getKardDeatails_id() {
		return kardDeatails_id;
	}
	public void setKardDeatails_id(int kardDeatails_id) {
		this.kardDeatails_id = kardDeatails_id;
	}
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public String getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}
	public String getPayment_mode() {
		return payment_mode;
	}
	public void setPayment_mode(String payment_mode) {
		this.payment_mode = payment_mode;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public double getPayment_price() {
		return payment_price;
	}
	public void setPayment_price(double payment_price) {
		this.payment_price = payment_price;
	}
	public int getInvoice_id() {
		return invoice_id;
	}
	public void setInvoice_id(int invoice_id) {
		this.invoice_id = invoice_id;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getInvoice_number() {
		return invoice_number;
	}
	public void setInvoice_number(String invoice_number) {
		this.invoice_number = invoice_number;
	}
	public int getOrder_details_id() {
		return order_details_id;
	}
	public void setOrder_details_id(int order_details_id) {
		this.order_details_id = order_details_id;
	}
	public int getOrder_quntity() {
		return order_quntity;
	}
	public void setOrder_quntity(int order_quntity) {
		this.order_quntity = order_quntity;
	}
	public double getPer_unit_product_cost() {
		return per_unit_product_cost;
	}
	public void setPer_unit_product_cost(double per_unit_product_cost) {
		this.per_unit_product_cost = per_unit_product_cost;
	}
	public double getDiscount_on_product_cost() {
		return discount_on_product_cost;
	}
	public void setDiscount_on_product_cost(double discount_on_product_cost) {
		this.discount_on_product_cost = discount_on_product_cost;
	}
	public double getTotal_order_product_cost() {
		return total_order_product_cost;
	}
	public void setTotal_order_product_cost(double total_order_product_cost) {
		this.total_order_product_cost = total_order_product_cost;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getProduct_warranty() {
		return product_warranty;
	}
	public void setProduct_warranty(String product_warranty) {
		this.product_warranty = product_warranty;
	}
	public double getProduct_weight() {
		return product_weight;
	}
	public void setProduct_weight(double product_weight) {
		this.product_weight = product_weight;
	}
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getProduct_details_Id() {
		return product_details_Id;
	}
	public void setProduct_details_Id(int product_details_Id) {
		this.product_details_Id = product_details_Id;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public int getSub_categories_id() {
		return sub_categories_id;
	}
	public void setSub_categories_id(int sub_categories_id) {
		this.sub_categories_id = sub_categories_id;
	}
	public String getSub_categories_name() {
		return sub_categories_name;
	}
	public void setSub_categories_name(String sub_categories_name) {
		this.sub_categories_name = sub_categories_name;
	}
	public int getCategories_id() {
		return categories_id;
	}
	public void setCategories_id(int categories_id) {
		this.categories_id = categories_id;
	}
	public String getCategories_name() {
		return categories_name;
	}
	public void setCategories_name(String categories_name) {
		this.categories_name = categories_name;
	}
	public String getCategories_description() {
		return categories_description;
	}
	public void setCategories_description(String categories_description) {
		this.categories_description = categories_description;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public double getProduct_Discount() {
		return product_Discount;
	}
	public void setProduct_Discount(double product_Discount) {
		this.product_Discount = product_Discount;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public double getProduct_price() {
		return product_price;
	}
	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}
	public int getProduct_Quntity() {
		return product_Quntity;
	}
	public void setProduct_Quntity(int product_Quntity) {
		this.product_Quntity = product_Quntity;
	}
	public int getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getBrand_description() {
		return brand_description;
	}
	public void setBrand_description(String brand_description) {
		this.brand_description = brand_description;
	}
	public int getImage_id() {
		return image_id;
	}
	public void setImage_id(int image_id) {
		this.image_id = image_id;
	}
	public int getStock_id() {
		return stock_id;
	}
	public void setStock_id(int stock_id) {
		this.stock_id = stock_id;
	}
	public int getTotal_number_of_product_sell() {
		return total_number_of_product_sell;
	}
	public void setTotal_number_of_product_sell(int total_number_of_product_sell) {
		this.total_number_of_product_sell = total_number_of_product_sell;
	}
	public int getTotal_available_product() {
		return total_available_product;
	}
	public void setTotal_available_product(int total_available_product) {
		this.total_available_product = total_available_product;
	}
	
	@Override
	public String toString() {
		return "Product [customer_id=" + customer_id + ", product_warranty=" + product_warranty + ", product_weight="
				+ product_weight + ", product_code=" + product_code + ", product_details_Id=" + product_details_Id
				+ ", sub_categories_id=" + sub_categories_id + ", sub_categories_name=" + sub_categories_name
				+ ", categories_id=" + categories_id + ", categories_name=" + categories_name
				+ ", categories_description=" + categories_description + ", product_name=" + product_name
				+ ", product_description=" + product_description + ", product_Discount=" + product_Discount
				+ ", product_id=" + product_id + ", product_price=" + product_price + ", product_Quntity="
				+ product_Quntity + ", brand_id=" + brand_id + ", brand_name=" + brand_name + ", brand_description="
				+ brand_description + ", image_id=" + image_id + ", stock_id=" + stock_id + ", product_image="
				+ product_image + ", total_number_of_product_sell=" + total_number_of_product_sell
				+ ", total_available_product=" + total_available_product + ", payment_id=" + payment_id
				+ ", payment_status=" + payment_status + ", payment_mode=" + payment_mode + ", payment_date="
				+ payment_date + ", payment_price=" + payment_price + ", invoice_id=" + invoice_id + ", seller_name="
				+ seller_name + ", invoice_number=" + invoice_number + ", order_details_id=" + order_details_id
				+ ", order_quntity=" + order_quntity + ", per_unit_product_cost=" + per_unit_product_cost
				+ ", discount_on_product_cost=" + discount_on_product_cost + ", total_order_product_cost="
				+ total_order_product_cost + ", order_status=" + order_status + ", order_date=" + order_date
				+ ", kart_id=" + kart_id + ", kardDeatails_id=" + kardDeatails_id + ", orders_id=" + orders_id + "]";
	}

	



	}
