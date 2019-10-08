class Search
	def initialize(page, page_size, keywords, current_user = nil)
		@page = page
		@page_size = page_size
		@offset = page_size * page
		@keywords = keywords
		@current_user = current_user
	end


	def brands_by_name
		if @keywords.present?
		    brands = Brand.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Brand.where(name_condition).count
	    else
		    brands = Brand.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Brand.count
	    end
	    
	    return brands, number_of_pages
	end

	def categories_by_name
		if @keywords.present?
		    categories = Category.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Category.where(name_condition).count
	    else
		    categories = Category.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Category.count
	    end
	    
	    return categories, number_of_pages
	end

	def cities_by_name
		if @keywords.present?
		    cities = City.where(name_condition).order(:id).offset(@offset).limit(@page_size)
		    @number_of_records = City.where(name_condition).count
	    else
		    cities = City.order(:id).offset(@offset).limit(@page_size)
		    @number_of_records = City.count
	    end
	    
	    return cities, number_of_pages
	end

	def states_by_name
		if @keywords.present?
		    states = State.where(name_condition).order(:id).offset(@offset).limit(@page_size)
		    @number_of_records = State.where(name_condition).count
	    else
		    states = State.order(:id).offset(@offset).limit(@page_size)
		    @number_of_records = State.count
	    end
	    
	    return states, number_of_pages
	end

	def districts_by_name
		if @keywords.present?
		    districts = District.where(name_condition).order(:id).offset(@offset).limit(@page_size)
		    @number_of_records = District.where(name_condition).count
	    else
		    districts = District.order(:id).offset(@offset).limit(@page_size)
		    @number_of_records = District.count
	    end
	    
	    return districts, number_of_pages
	end

	def neighborhoods_by_name
		if @keywords.present?
		    neighborhoods = Neighborhood.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Neighborhood.where(name_condition).count
	    else
		    neighborhoods = Neighborhood.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Neighborhood.count
	    end
	    
	    return neighborhoods, number_of_pages
	end

	def customer_types_by_name
		if @keywords.present?
		    customer_types = CustomerType.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = CustomerType.where(name_condition).count
	    else
		    customer_types = CustomerType.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = CustomerType.count
	    end
	    
	    return customer_types, number_of_pages
	end

	def sexes_by_name
		if @keywords.present?
		    sexes = Sex.where(description_condition).order(:description).offset(@offset).limit(@page_size)
		    @number_of_records = Sex.where(description_condition).count
	    else
		    sexes = Sex.order(:description).offset(@offset).limit(@page_size)
		    @number_of_records = Sex.count
	    end
	    
	    return sexes, number_of_pages
	end

	def customers_by_name
		if @keywords.present?
		    customers = Customer.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Customer.where(name_condition).count
	    else
		    customers = Customer.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Customer.count
	    end
	    
	    return customers, number_of_pages
	end

	def customermanagers_by_name
		if @keywords.present?
		    customermanagers = Customermanager.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Customermanager.where(name_condition).count
	    else
		    customermanagers = Customermanager.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Customermanager.count
	    end
	    
	    return customermanagers, number_of_pages
	end

	def providers_by_name
		if @keywords.present?
		    providers = Provider.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Provider.where(name_condition).count
	    else
		    providers = Provider.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Provider.count
	    end
	    
	    return providers, number_of_pages
	end

	def providermanagers_by_name
		if @keywords.present?
		    providermanagers = Providermanager.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Providermanager.where(name_condition).count
	    else
		    providermanagers = Providermanager.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Providermanager.count
	    end
	    
	    return providermanagers, number_of_pages
	end

	def provider_types_by_name
		if @keywords.present?
		    provider_types = ProviderType.where(description_condition).order(:description).offset(@offset).limit(@page_size)
		    @number_of_records = ProviderType.where(description_condition).count
	    else
		    provider_types = ProviderType.order(:description).offset(@offset).limit(@page_size)
		    @number_of_records = ProviderType.count
	    end
	    
	    return provider_types, number_of_pages
	end

	def employees_by_name
		if @keywords.present?
		    employees = Employee.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Employee.where(name_condition).count
	    else
		    employees = Employee.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Employee.count
	    end
	    
	    return employees, number_of_pages
	end

	def vacations_by_name
		if @keywords.present?
		    vacations = Vacation.where(state_condition).order(:state).offset(@offset).limit(@page_size)
		    @number_of_records = Vacation.where(state_condition).count
	    else
		    vacations = Vacation.order(:state).offset(@offset).limit(@page_size)
		    @number_of_records = Vacation.count
	    end
	    
	    return vacations, number_of_pages
	end

	def check_ins_by_name
		if @keywords.present?
		    check_ins = CheckIn.where(identificationcard_condition).order(:created_at).offset(@offset).limit(@page_size)
		    @number_of_records = CheckIn.where(identificationcard_condition).count
	    else
		    check_ins = CheckIn.order(:created_at).offset(@offset).limit(@page_size)
		    @number_of_records = CheckIn.count
	    end
	    
	    return check_ins, number_of_pages
	end

	def check_outs_by_name
		if @keywords.present?
		    check_outs = CheckOut.where(identificationcard_condition).order(:created_at).offset(@offset).limit(@page_size)
		    @number_of_records = CheckOut.where(identificationcard_condition).count
	    else
		    check_outs = CheckOut.order(:created_at).offset(@offset).limit(@page_size)
		    @number_of_records = CheckOut.count
	    end
	    
	    return check_outs, number_of_pages
	end

	def type_vouchers_by_name
		if @keywords.present?
		    type_vouchers = TypeVoucher.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = TypeVoucher.where(name_condition).count
	    else
		    type_vouchers = TypeVoucher.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = TypeVoucher.count
	    end
	    
	    return type_vouchers, number_of_pages
	end

	def id_types_by_name
		if @keywords.present?
		    id_types = IdType.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = IdType.where(name_condition).count
	    else
		    id_types = IdType.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = IdType.count
	    end
	    
	    return id_types, number_of_pages
	end

	def condition_sales_by_name
		if @keywords.present?
		    condition_sales = ConditionSale.where(name_condition).order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = ConditionSale.where(name_condition).count
	    else
		    condition_sales = ConditionSale.order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = ConditionSale.count
	    end
	    
	    return condition_sales, number_of_pages
	end

	def payment_types_by_name
		if @keywords.present?
		    payment_types = PaymentType.where(name_condition).order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = PaymentType.where(name_condition).count
	    else
		    payment_types = PaymentType.order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = PaymentType.count
	    end
	    
	    return payment_types, number_of_pages
	end

	def taxes_by_name
		if @keywords.present?
		    taxes = Tax.where(name_condition).order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = Tax.where(name_condition).count
	    else
		    taxes = Tax.order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = Tax.count
	    end
	    
	    return taxes, number_of_pages
	end

	def document_references_by_name
		if @keywords.present?
		    document_references = DocumentReference.where(name_condition).order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = DocumentReference.where(name_condition).count
	    else
		    document_references = DocumentReference.order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = DocumentReference.count
	    end
	    
	    return document_references, number_of_pages
	end

	def type_document_references_by_name
		if @keywords.present?
		    type_document_references = TypeDocumentReference.where(name_condition).order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = TypeDocumentReference.where(name_condition).count
	    else
		    type_document_references = TypeDocumentReference.order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = TypeDocumentReference.count
	    end
	    
	    return type_document_references, number_of_pages
	end

	def document_authorizations_by_name
		if @keywords.present?
		    document_authorizations = DocumentAuthorization.where(name_condition).order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = DocumentAuthorization.where(name_condition).count
	    else
		    document_authorizations = DocumentAuthorization.order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = DocumentAuthorization.count
	    end
	    
	    return document_authorizations, number_of_pages
	end

	def messages_by_name
		if @keywords.present?
		    messages = Message.where(name_condition).order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = Message.where(name_condition).count
	    else
		    messages = Message.order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = Message.count
	    end
	    
	    return messages, number_of_pages
	end

	def type_codes_by_name
		if @keywords.present?
		    type_codes = TypeCode.where(name_condition).order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = TypeCode.where(name_condition).count
	    else
		    type_codes = TypeCode.order(:code).offset(@offset).limit(@page_size)
		    @number_of_records = TypeCode.count
	    end
	    
	    return type_codes, number_of_pages
	end

	def currency_codes_by_name
		if @keywords.present?
		    currency_codes = CurrencyCode.where(name_condition).order(country: :desc).offset(@offset).limit(@page_size)
		    @number_of_records = CurrencyCode.where(name_condition).count
	    else
		    currency_codes = CurrencyCode.order(country: :desc).offset(@offset).limit(@page_size)
		    @number_of_records = CurrencyCode.count
	    end
	    
	    return currency_codes, number_of_pages
	end

	def towns_by_name
		if @keywords.present?
		    towns = Town.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Town.where(name_condition).count
	    else
		    towns = Town.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Town.count
	    end
	    
	    return towns, number_of_pages
	end

	def units_by_name
		if @keywords.present?
		    units = Unit.where(name_condition).order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Unit.where(name_condition).count
	    else
		    units = Unit.order(:name).offset(@offset).limit(@page_size)
		    @number_of_records = Unit.count
	    end
	    
	    return units, number_of_pages
	end


	def items_by_description
		if @keywords.present?
		    items = Item.where(description_condition).order(:description).offset(@offset).limit(@page_size)
		    @number_of_records = Item.where(description_condition).count
	    else
		    items = Item.order(:description).offset(@offset).limit(@page_size)
		    @number_of_records = Item.count
	    end
	    
	    return items, number_of_pages
	end

	def sales
		if @keywords.present?
		    sales = Sale.where(sale_condition).order(number: :desc).offset(@offset).limit(@page_size)
		    @number_of_records = Item.where(description_condition).count
	    else
		    sales = Sale.where(state: "confirmed").order(number: :desc).offset(@offset).limit(@page_size)
			@number_of_records = Sale.where(state: "confirmed").count
	    end

		return sales, number_of_pages
	end

	
	private

	def name_condition
		name_condition = "unaccent(lower(name)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
	end

	def description_condition
		description_condition = "unaccent(lower(description)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
	end

	def state_condition
		state_condition = "unaccent(lower(state)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
	end

	def identificationcard_condition
		identificationcard_condition = "identificationcard = #{@keywords.to_i}"
	end

	def sale_condition
		number_condition = "number = #{@keywords.to_i} and user_id = #{@current_user.id} and state = 1"
	end

	def number_of_pages
		number_of_pages = (@number_of_records % @page_size) == 0 ? 
	                        @number_of_records / @page_size - 1 : @number_of_records / @page_size
	end
end