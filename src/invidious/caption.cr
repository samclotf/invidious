struct InvidiousCaption
  include DB::Serializable

  property id : Int32?
  property text : String?
  property video_id : String?
  property name : String?
  property language : String?

  def name_with_language()
    "#{self.name} (#{self.language})"
  end
end

struct InvidiousUserCaption
  include DB::Serializable

  property caption_id : Int32?
  property email : String?
end
