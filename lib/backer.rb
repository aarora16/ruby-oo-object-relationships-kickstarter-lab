require "pry"

class Backer
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projects = []
    ProjectBacker.all.each do |pb|
      if pb.backer == self
        projects << pb.project
      end
    end
    projects
  end
end