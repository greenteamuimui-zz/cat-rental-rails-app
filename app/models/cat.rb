class Cat < ActiveRecord::Base
  cat_colors = %w(black white brown orange)
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: {in: cat_colors, message:"Invalid color" }
  validates :sex, inclusion: { in: %w(M F), message: "Invalid sex" }

  def age
    current_date = Date.new(Time.now.year, Time.now.month, Time.now.day)
    ((current_date - birth_date) / 365).floor
  end
end
