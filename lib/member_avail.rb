class MemberAvail <ActiveRecord::Base
  belongs_to :day
  belongs_to :member

  def self.find_mon_avail
    monday_day = Day.find_by(name: 'Monday')
    mon_avail = MemberAvail.where(day_id: monday_day.id)
    mon_people =[]
    x=0
    while x < mon_avail.length
      member_id_gotten = mon_avail[x].member_id
      name_of_person = Member.find(member_id_gotten).name
      x=x+1
      mon_people.push(name_of_person)
    end
    mon_people
  end


end
