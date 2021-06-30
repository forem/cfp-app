class CommentPolicy < ApplicationPolicy

  def mark_as_deleted!
    @record.user.id == @user.id
  end

end
