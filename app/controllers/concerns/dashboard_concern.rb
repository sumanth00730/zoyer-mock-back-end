module DashboardConcern
    def search_orders(params, model_name)
     
        model_name.search()&.order("#{params[:sort_field]}")&.page(page_no)&.per_page(per_page)
    end
  
    def page_no
      params[:page_no].present? ? params[:page_no] : 1
    end
  
    def sort_direction
      params[:direction].present? ? params[:direction] : 'desc'
    end
  
    def sort_field(params)
      params[:sort_field].present? ? params[:sort_field] : 'id'
    end
  
    def per_page
      params[:per_page].present? ? params[:per_page] : 10
    end
  
    def filter_field(params)
      params[:filter_type].present? ? params[:filter_type] : 'All'
    end
  
    def from_date(params)
      params[:from_date] if params[:from_date].present?
    end
  
    def to_date(params)
      params[:to_date] if params[:to_date].present?
    end
end