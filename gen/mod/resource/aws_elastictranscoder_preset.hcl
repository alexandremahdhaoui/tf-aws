resource "aws_elastictranscoder_preset" "aws_elastictranscoder_preset" {
  Profile              = var.Profile
  description          = var.description
  display_aspect_ratio = var.display_aspect_ratio
  fixed_gop            = var.fixed_gop
  horizontal_align     = var.horizontal_align
  horizontal_offset    = var.horizontal_offset
  Level                = var.Level
  LoopCount            = var.LoopCount
  bit_depth            = var.bit_depth
  padding_policy       = var.padding_policy
  video_codec_options  = var.video_codec_options
  ColorSpaceConversion = var.ColorSpaceConversion
  aspect_ratio         = var.aspect_ratio
  max_frame_rate       = var.max_frame_rate
  opacity              = var.opacity
  target               = var.target
  thumbnails           = var.thumbnails
  vertical_align       = var.vertical_align
  BufferSize           = var.BufferSize
  audio_packing_mode   = var.audio_packing_mode
  bit_rate             = var.bit_rate
  codec                = var.codec
  name                 = var.name
  profile              = var.profile
  vertical_offset      = var.vertical_offset
  ChromaSubsampling    = var.ChromaSubsampling
  bit_order            = var.bit_order
  id                   = var.id
  max_width            = var.max_width
  audio                = var.audio
  frame_rate           = var.frame_rate
  MaxReferenceFrames   = var.MaxReferenceFrames
  resolution           = var.resolution
  sample_rate          = var.sample_rate
  sizing_policy        = var.sizing_policy
  InterlacedMode       = var.InterlacedMode
  MaxBitRate           = var.MaxBitRate
  max_height           = var.max_height
  signed               = var.signed
  video                = var.video
  video_watermarks     = var.video_watermarks
  audio_codec_options  = var.audio_codec_options
  container            = var.container
  interval             = var.interval
  keyframes_max_dist   = var.keyframes_max_dist
  channels             = var.channels
  format               = var.format
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "Profile" {
  description = "The codec profile that you want to use for the output file. (H.264/VP8 Only)"
  type        = string
}
variable "description" {
  description = "(Optional, Forces new resource) A description of the preset (maximum 255 characters)"
  type        = string
}
variable "display_aspect_ratio" {
  description = "The value that Elastic Transcoder adds to the metadata in the output file. If you set DisplayAspectRatio to auto, Elastic Transcoder chooses an aspect ratio that ensures square pixels. If you specify another option, Elastic Transcoder sets that value in the output file."
  type        = string
}
variable "fixed_gop" {
  description = "Whether to use a fixed value for Video:FixedGOP. Not applicable for containers of type gif. Valid values are true and false. Also known as, Fixed Number of Frames Between Keyframes."
  type        = string
}
variable "horizontal_align" {
  description = "The horizontal position of the watermark unless you specify a nonzero value for horzontal_offset."
  type        = string
}
variable "horizontal_offset" {
  description = "The amount by which you want the horizontal position of the watermark to be offset from the position specified by horizontal_align."
  type        = string
}
variable "Level" {
  description = "The H.264 level that you want to use for the output file. Elastic Transcoder supports the following levels: 1, 1b, 1.1, 1.2, 1.3, 2, 2.1, 2.2, 3, 3.1, 3.2, 4, 4.1 (H.264 only)"
  type        = string
}
variable "LoopCount" {
  description = "The number of times you want the output gif to loop (Gif only)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "bit_depth" {
  description = "The bit depth of a sample is how many bits of information are included in the audio samples. Valid values are 16 and 24. (FLAC/PCM Only)"
  type        = string
}
variable "padding_policy" {
  description = "When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of the output video to make the total size of the output video match the values that you specified for max_width and max_height."
  type        = string
}
variable "video_codec_options" {
  description = " (Optional, Forces new resource) Codec options for the video parametersThe audio object supports the following:"
  type        = string
}
variable "ColorSpaceConversion" {
  description = "The color space conversion Elastic Transcoder applies to the output video. Valid values are None, Bt709toBt601, Bt601toBt709, and Auto. (Optional, H.264/MPEG2 Only)"
  type        = string
}
variable "aspect_ratio" {
  description = "The display aspect ratio of the video in the output file. Valid values are: auto, 1:1, 4:3, 3:2, 16:9. (Note; to better control resolution and aspect ratio of output videos, we recommend that you use the values max_width, max_height, sizing_policy, padding_policy, and display_aspect_ratio instead of resolution and aspect_ratio.)"
  type        = string
}
variable "max_frame_rate" {
  description = "If you specify auto for FrameRate, Elastic Transcoder uses the frame rate of the input video for the frame rate of the output video, up to the maximum frame rate. If you do not specify a MaxFrameRate, Elastic Transcoder will use a default of 30."
  type        = string
}
variable "opacity" {
  description = "A percentage that indicates how much you want a watermark to obscure the video in the location where it appears."
  type        = string
}
variable "target" {
  description = "A value that determines how Elastic Transcoder interprets values that you specified for video_watermarks.horizontal_offset, video_watermarks.vertical_offset, video_watermarks.max_width, and video_watermarks.max_height. Valid values are Content and Frame."
  type        = string
}
variable "thumbnails" {
  description = "(Optional, Forces new resource) Thumbnail parameters object (documented below)"
  type        = string
}
variable "vertical_align" {
  description = "The vertical position of the watermark unless you specify a nonzero value for vertical_align. Valid values are Top, Bottom, Center."
  type        = string
}
variable "BufferSize" {
  description = "The maximum number of kilobits in any x seconds of the output video. This window is commonly 10 seconds, the standard segment duration when you're using ts for the container type of the output video. Specify an integer greater than 0. If you specify MaxBitRate and omit BufferSize, Elastic Transcoder sets BufferSize to 10 times the value of MaxBitRate. (Optional, H.264/MPEG2/VP8/VP9 only)"
  type        = string
}
variable "audio_packing_mode" {
  description = "The method of organizing audio channels and tracks. Use Audio:Channels to specify the number of channels in your output, and Audio:AudioPackingMode to specify the number of tracks and their relation to the channels. If you do not specify an Audio:AudioPackingMode, Elastic Transcoder uses SingleTrack."
  type        = string
}
variable "bit_rate" {
  description = "The bit rate of the video stream in the output file, in kilobits/second. You can configure variable bit rate or constant bit rate encoding."
  type        = string
}
variable "codec" {
  description = "The video codec for the output file. Valid values are gif, H.264, mpeg2, vp8, and vp9."
  type        = string
}
variable "name" {
  description = "(Optional, Forces new resource) The name of the preset. (maximum 40 characters)"
  type        = string
}
variable "profile" {
  description = "If you specified AAC for Audio:Codec, choose the AAC profile for the output file."
  type        = string
}
variable "vertical_offset" {
  description = "The amount by which you want the vertical position of the watermark to be offset from the position specified by vertical_alignThe video_codec_options map supports the following:"
  type        = string
}
variable "ChromaSubsampling" {
  description = "The sampling pattern for the chroma (color) channels of the output video. Valid values are yuv420p and yuv422p."
  type        = string
}
variable "bit_order" {
  description = "The order the bits of a PCM sample are stored in. The supported value is LittleEndian. (PCM Only)"
  type        = string
}
variable "id" {
  description = "A unique identifier for the settings for one watermark. The value of Id can be up to 40 characters long. You can specify settings for up to four watermarks."
  type        = string
}
variable "max_width" {
  description = "The maximum width of the watermark."
  type        = string
}
variable "audio" {
  description = "(Optional, Forces new resource) Audio parameters object (documented below)."
  type        = string
}
variable "frame_rate" {
  description = "The frames per second for the video stream in the output file. The following values are valid: auto, 10, 15, 23.97, 24, 25, 29.97, 30, 50, 60."
  type        = string
}
variable "MaxReferenceFrames" {
  description = "The maximum number of previously decoded frames to use as a reference for decoding future frames. Valid values are integers 0 through 16. (H.264 only)"
  type        = string
}
variable "resolution" {
  description = "The width and height of the video in the output file, in pixels. Valid values are auto and widthxheight. (see note for aspect_ratio)"
  type        = string
}
variable "sample_rate" {
  description = "The sample rate of the audio stream in the output file, in hertz. Valid values are: auto, 22050, 32000, 44100, 48000, 96000The audio_codec_options object supports the following:"
  type        = string
}
variable "sizing_policy" {
  description = "A value that controls scaling of the watermark. Valid values are: Fit, Stretch, ShrinkToFit"
  type        = string
}
variable "InterlacedMode" {
  description = " The interlace mode for the output video. (Optional, H.264/MPEG2 Only)"
  type        = string
}
variable "MaxBitRate" {
  description = "The maximum number of kilobits per second in the output video. Specify a value between 16 and 62,500 inclusive, or auto. (Optional, H.264/MPEG2/VP8/VP9 only)"
  type        = string
}
variable "max_height" {
  description = "The maximum height of the watermark."
  type        = string
}
variable "signed" {
  description = "Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned). The supported value is Signed. (PCM Only)The thumbnails object supports the following:"
  type        = string
}
variable "video" {
  description = "(Optional, Forces new resource) Video parameters object (documented below)"
  type        = string
}
variable "video_watermarks" {
  description = "(Optional, Forces new resource) Watermark parameters for the video parameters (documented below)"
  type        = string
}
variable "audio_codec_options" {
  description = "(Optional, Forces new resource) Codec options for the audio parameters (documented below)"
  type        = string
}
variable "container" {
  description = "(Required, Forces new resource) The container type for the output file. Valid values are flac, flv, fmp4, gif, mp3, mp4, mpg, mxf, oga, ogg, ts, and webm."
  type        = string
}
variable "interval" {
  description = "The approximate number of seconds between thumbnails. The value must be an integer. The actual interval can vary by several seconds from one thumbnail to the next."
  type        = string
}
variable "keyframes_max_dist" {
  description = "The maximum number of frames between key frames. Not applicable for containers of type gif."
  type        = string
}
variable "channels" {
  description = "The number of audio channels in the output file"
  type        = string
}
variable "format" {
  description = "The format of thumbnails, if any. Valid formats are jpg and png."
  type        = string
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "signed" {
  description = "Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned). The supported value is Signed. (PCM Only)The thumbnails object supports the following:"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.signed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "video" {
  description = "(Optional, Forces new resource) Video parameters object (documented below)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.video
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "video_watermarks" {
  description = "(Optional, Forces new resource) Watermark parameters for the video parameters (documented below)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.video_watermarks
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audio_codec_options" {
  description = "(Optional, Forces new resource) Codec options for the audio parameters (documented below)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.audio_codec_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container" {
  description = "(Required, Forces new resource) The container type for the output file. Valid values are flac, flv, fmp4, gif, mp3, mp4, mpg, mxf, oga, ogg, ts, and webm."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.container
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_height" {
  description = "The maximum height of the watermark."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.max_height
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "keyframes_max_dist" {
  description = "The maximum number of frames between key frames. Not applicable for containers of type gif."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.keyframes_max_dist
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "channels" {
  description = "The number of audio channels in the output file"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.channels
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "format" {
  description = "The format of thumbnails, if any. Valid formats are jpg and png."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "interval" {
  description = "The approximate number of seconds between thumbnails. The value must be an integer. The actual interval can vary by several seconds from one thumbnail to the next."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.interval
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional, Forces new resource) A description of the preset (maximum 255 characters)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "display_aspect_ratio" {
  description = "The value that Elastic Transcoder adds to the metadata in the output file. If you set DisplayAspectRatio to auto, Elastic Transcoder chooses an aspect ratio that ensures square pixels. If you specify another option, Elastic Transcoder sets that value in the output file."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.display_aspect_ratio
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fixed_gop" {
  description = "Whether to use a fixed value for Video:FixedGOP. Not applicable for containers of type gif. Valid values are true and false. Also known as, Fixed Number of Frames Between Keyframes."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.fixed_gop
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "horizontal_align" {
  description = "The horizontal position of the watermark unless you specify a nonzero value for horzontal_offset."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.horizontal_align
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "horizontal_offset" {
  description = "The amount by which you want the horizontal position of the watermark to be offset from the position specified by horizontal_align."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.horizontal_offset
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "Level" {
  description = "The H.264 level that you want to use for the output file. Elastic Transcoder supports the following levels: 1, 1b, 1.1, 1.2, 1.3, 2, 2.1, 2.2, 3, 3.1, 3.2, 4, 4.1 (H.264 only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.Level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "LoopCount" {
  description = "The number of times you want the output gif to loop (Gif only)In addition to all arguments above, the following attributes are exported:"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.LoopCount
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "Profile" {
  description = "The codec profile that you want to use for the output file. (H.264/VP8 Only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.Profile
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "padding_policy" {
  description = "When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of the output video to make the total size of the output video match the values that you specified for max_width and max_height."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.padding_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "video_codec_options" {
  description = " (Optional, Forces new resource) Codec options for the video parametersThe audio object supports the following:"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.video_codec_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ColorSpaceConversion" {
  description = "The color space conversion Elastic Transcoder applies to the output video. Valid values are None, Bt709toBt601, Bt601toBt709, and Auto. (Optional, H.264/MPEG2 Only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.ColorSpaceConversion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aspect_ratio" {
  description = "The display aspect ratio of the video in the output file. Valid values are: auto, 1:1, 4:3, 3:2, 16:9. (Note; to better control resolution and aspect ratio of output videos, we recommend that you use the values max_width, max_height, sizing_policy, padding_policy, and display_aspect_ratio instead of resolution and aspect_ratio.)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.aspect_ratio
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bit_depth" {
  description = "The bit depth of a sample is how many bits of information are included in the audio samples. Valid values are 16 and 24. (FLAC/PCM Only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.bit_depth
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "opacity" {
  description = "A percentage that indicates how much you want a watermark to obscure the video in the location where it appears."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.opacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target" {
  description = "A value that determines how Elastic Transcoder interprets values that you specified for video_watermarks.horizontal_offset, video_watermarks.vertical_offset, video_watermarks.max_width, and video_watermarks.max_height. Valid values are Content and Frame."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "thumbnails" {
  description = "(Optional, Forces new resource) Thumbnail parameters object (documented below)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.thumbnails
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vertical_align" {
  description = "The vertical position of the watermark unless you specify a nonzero value for vertical_align. Valid values are Top, Bottom, Center."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.vertical_align
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "BufferSize" {
  description = "The maximum number of kilobits in any x seconds of the output video. This window is commonly 10 seconds, the standard segment duration when you're using ts for the container type of the output video. Specify an integer greater than 0. If you specify MaxBitRate and omit BufferSize, Elastic Transcoder sets BufferSize to 10 times the value of MaxBitRate. (Optional, H.264/MPEG2/VP8/VP9 only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.BufferSize
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audio_packing_mode" {
  description = "The method of organizing audio channels and tracks. Use Audio:Channels to specify the number of channels in your output, and Audio:AudioPackingMode to specify the number of tracks and their relation to the channels. If you do not specify an Audio:AudioPackingMode, Elastic Transcoder uses SingleTrack."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.audio_packing_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_frame_rate" {
  description = "If you specify auto for FrameRate, Elastic Transcoder uses the frame rate of the input video for the frame rate of the output video, up to the maximum frame rate. If you do not specify a MaxFrameRate, Elastic Transcoder will use a default of 30."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.max_frame_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "codec" {
  description = "The video codec for the output file. Valid values are gif, H.264, mpeg2, vp8, and vp9."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.codec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional, Forces new resource) The name of the preset. (maximum 40 characters)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "profile" {
  description = "If you specified AAC for Audio:Codec, choose the AAC profile for the output file."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.profile
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vertical_offset" {
  description = "The amount by which you want the vertical position of the watermark to be offset from the position specified by vertical_alignThe video_codec_options map supports the following:"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.vertical_offset
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ChromaSubsampling" {
  description = "The sampling pattern for the chroma (color) channels of the output video. Valid values are yuv420p and yuv422p."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.ChromaSubsampling
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bit_order" {
  description = "The order the bits of a PCM sample are stored in. The supported value is LittleEndian. (PCM Only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.bit_order
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bit_rate" {
  description = "The bit rate of the video stream in the output file, in kilobits/second. You can configure variable bit rate or constant bit rate encoding."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.bit_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_width" {
  description = "The maximum width of the watermark."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.max_width
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audio" {
  description = "(Optional, Forces new resource) Audio parameters object (documented below)."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.audio
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "frame_rate" {
  description = "The frames per second for the video stream in the output file. The following values are valid: auto, 10, 15, 23.97, 24, 25, 29.97, 30, 50, 60."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.frame_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "A unique identifier for the settings for one watermark. The value of Id can be up to 40 characters long. You can specify settings for up to four watermarks."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resolution" {
  description = "The width and height of the video in the output file, in pixels. Valid values are auto and widthxheight. (see note for aspect_ratio)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.resolution
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sample_rate" {
  description = "The sample rate of the audio stream in the output file, in hertz. Valid values are: auto, 22050, 32000, 44100, 48000, 96000The audio_codec_options object supports the following:"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.sample_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sizing_policy" {
  description = "A value that controls scaling of the watermark. Valid values are: Fit, Stretch, ShrinkToFit"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.sizing_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "InterlacedMode" {
  description = " The interlace mode for the output video. (Optional, H.264/MPEG2 Only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.InterlacedMode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "MaxBitRate" {
  description = "The maximum number of kilobits per second in the output video. Specify a value between 16 and 62,500 inclusive, or auto. (Optional, H.264/MPEG2/VP8/VP9 only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.MaxBitRate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "MaxReferenceFrames" {
  description = "The maximum number of previously decoded frames to use as a reference for decoding future frames. Valid values are integers 0 through 16. (H.264 only)"
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.MaxReferenceFrames
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Elastic Transcoder Preset."
  value       = aws_elastictranscoder_preset.aws_elastictranscoder_preset.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
terraform {
  backend "local" {
  }
  required_providers {
    aws {
      source  = "hashicorp/aws"
      version = ">= 4.38.0"
    }
    required_version = ">= 1.3.4"
  }
}
provider "aws" {
  region = var.provider_region
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_elastictranscoder_preset"
      "kind/version"                = "v0.1.0"
    }
  }
}
