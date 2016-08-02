module ApplicationHelper

  def yes_or_no?(value)
    value ? "Yes" : "No"
  end

  def order_status(order_status_id)

    order_status = case order_status_id
       when 1 then "In Progress"
       when 2 then "Placed"
       when 3 then "Shipped"
       when 4 then "Cancelled"
       else "Unknown"
    end    
    
  end

  
end
