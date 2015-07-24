# class Volunteer
#   attr_reader :organizations
  
#   def intialize
#     @organizations= self.parse  
#   end
  
#   def add_organization (name, address, phone, age, website, tags)
#     @organizations.push ({:name => name, :address => address, :phone => phone, :age => age, :website => website, :tags => tags})
#   end
  
  def parse
    rows=[]
    IO.foreach("../organizations.csv") do |line| 
      lst=line.split(",")
      row={
        :name => lst[0],
        :address => lst[1],
        :phone => lst[2],
        :age => lst[3],
        :website => lst[4],
        :tags => lst[5] }
      rows.push(row)
    end
    return rows
  end
# end
# kailee=Volunteer.new
# puts kailee.parse
puts parse


  
