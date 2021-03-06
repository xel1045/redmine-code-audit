class AuditCommentInline < ActiveRecord::Base
  belongs_to :audit_comment
  belongs_to :change

  validates_presence_of :line_begin, :audit_comment, :change

  def line_number
    if line_end.nil?
      line_begin.to_s
    else
      line_begin.to_s + '-' + line_end.to_s
    end
  end
end