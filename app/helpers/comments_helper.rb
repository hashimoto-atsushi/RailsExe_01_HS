module CommentsHelper
  def choose_new_or_edit
    if action_name == 'new'
      confirm_comments_path
    elsif action_name == 'edit'
      comment_path
    end
  end
end
