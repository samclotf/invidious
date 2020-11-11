struct InvidiousCaption
  include DB::Serializable

  property id : Int32?
  property text : String?
  property video_id : String?
  property name : String?
  property language : String?
end

