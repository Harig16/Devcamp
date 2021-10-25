module PortfoliosHelper

  def image_generator(height:, width: )
    "https://via.placeholder.com/#{height}X#{width}"
  end

  def portfolio_img img, type
    if img
      img
    elsif img && type == "thumb"
      image_generator(height: 350, width: 200)
    else img && type == "main"
      image_generator(height: 600, width: 400)
    end
  end
end
