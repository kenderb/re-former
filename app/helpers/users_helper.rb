module UsersHelper
  def error_validator(user)
    return unless user.errors.any?

    list = "<ul class='error-list'>"
    user.errors.full_messages.each do |message|
      list += "<li>#{message}</li>"
    end
    list += '</ul>'
    list.html_safe
  end
end
