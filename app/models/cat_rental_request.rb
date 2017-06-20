class CatRentalRequest < ActiveRecord::Base
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: %w(PENDING APPROVED DENIED), message: "Invalid status" }

  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    requests = CatRentalRequest
      .select("*")
      .where(cat_rental_requests: { cat_id: self.cat_id } )
      .where("end_date > ?", self.end_date)
      .where.not(id: self.id)
  end
end
