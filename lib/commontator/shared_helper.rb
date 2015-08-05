module Commontator
  module SharedHelper
    def commontator_thread(commontable)
      user = Commontator.current_user_proc.call(self)
      thread = commontable.thread

      render(:partial => 'commontator/shared/thread',
             :locals => { :thread => thread,
                          :user => user }).html_safe
    end

    def commontator_gravatar_image_tag(user, border = 1, options = {})
      name = Commontator.commontator_name(user) || ''
      avatar = user.avatar.url(:small)
      image_tag(avatar, { :alt => name,
                       :title => name,
                       :border => border })
    end
  end
end
