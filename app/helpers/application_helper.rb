module ApplicationHelper
  def formatted_date(date)
    date.strftime("%Y-%b-%d")
  end

  def get_random_color
    colors = %w(0 1 2 3 4 5 6 7 8 9 A B C D E F)
    color_rgb = []
    for rgb in 0..2
      color_rgb[rgb] = colors.sample(2)
    end
    color_rgb.join
  end
end
