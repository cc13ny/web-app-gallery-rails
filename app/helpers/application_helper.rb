module ApplicationHelper
  def modal options={}, &block
    options[:body_html] = capture(&block) if block_given?
    render 'modal', options
  end

  def addRound opts={}
    render 'application/add_round'
  end
end
