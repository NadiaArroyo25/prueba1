class StaticsController < ApplicationController
  def about_us
  end

  def contact
    @email_address = "Dr.nay@icloud.com"
    @dr_name = "Nadia"
    @dr_last_name = "Arroyo"
  end

  def specialitie
  end

  def treatment
  end

  def privacy
  end
end
