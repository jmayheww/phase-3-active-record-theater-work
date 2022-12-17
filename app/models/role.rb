class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.map { |audition| audition.actor }
  end

  def locations
    auditions.map { |audition| audition.location }
  end

  def lead
    audition = auditions.find { |actor| actor.hired == true }

    if audition
      audition.actor
    else
      'no actor has been hired for this role'
    end
  end

  def understudy
    auditions = self.auditions.filter { |actor| actor.hired == true }
    if auditions[1]
      auditions[1].actor
    else
      'no actor has been hired for this role'
    end
  end
end
