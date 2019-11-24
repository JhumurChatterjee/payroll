module ApplicationHelper
  def full_title(page_title = "")
    base_title = "Payroll"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def flash_message_prefix(message_type)
    case message_type
    when "success"
      "Well done!"
    when "info"
      "Heads up!"
    when "warning"
      "Warning!"
    when "danger"
      "Oh snap!"
    else
      ""
    end
  end

  def states_selection
    State.all.map{ |s| [s.id, s.name] }
  end

  def cities_selection
    City.all.map{ |c| [c.id, c.name] }
  end

  def statuses_selection
    Status.all.map{ |s| [s.status_type, s.id] }
  end

  def countries_selection
    Country.all.map{ |c| [c.id, c.name] }
  end
end
