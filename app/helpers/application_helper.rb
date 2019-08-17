module ApplicationHelper
  def modal options={}, &block
    options[:body_html] = capture(&block) if block_given?
    # render 'modal', options
    render partial: 'modal', locals: options
  end
end
