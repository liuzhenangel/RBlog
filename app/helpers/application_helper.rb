module ApplicationHelper
  def format_date(datetime)
    datetime.strftime("%Y-%m-%d") if datetime.present?
  end

  def active_for(controller_name, navbar_name)
    if controller_name.to_s == admin_root_path
      return controller_name.to_s == navbar_name.to_s ? "active" : ""
    end
    navbar_name.to_s.include?(controller_name.to_s) ? 'active' : ''
  end
end
