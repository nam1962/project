require_relative "view"
class Controller
  def initialize(cookbook)
@cookbook = cookbook
@view = View.new
  end
  def list
    @view.display(@cookbook.all)
  end
  def add
    #TODO
  end
  def remove
    @view.display(@cookbook.destroy)
  end
end
