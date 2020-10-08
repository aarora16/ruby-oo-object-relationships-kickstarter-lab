class Project
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    backers = []
    ProjectBacker.all.each do |pb|
      if pb.project == self
        backers << pb.backer
      end
    end
    backers
  end
end