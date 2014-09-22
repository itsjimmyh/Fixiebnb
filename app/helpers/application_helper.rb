module ApplicationHelper

  def flash_bootstrap_class (flash_key)
    case flash_key
    when "errors" then "alert alert-danger"
    when "success" then "alert alert-success"
    when "info" then "alert alert-info"
    when "warning" then "alert alert-warning"
    else "wat"
    end
  end

end
