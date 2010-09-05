package Solid.Media.MLT.Thin is
   type mlt_image_format is -- Supported video formats.
      (mlt_image_none,    -- Image not available.
       mlt_image_rgb24,   -- 8-bit RGB.
       mlt_image_rgb24a,  -- 8-bit RGB with alpha channel.
       mlt_image_yuv422,  -- 8-bit YUV 4:2:2 packed.
       mlt_image_yuv420p, -- 8-bit YUV 4:2:0 planar.
       mlt_image_opengl); -- Suitable for a OpenGL texture.

   type mlt_audio_format is -- Supported audio formats.
      (mlt_audio_none,   -- Audio not available.
       mlt_audio_s16,    -- Signed 16-bit interleaved PCM.
       mlt_audio_s32,    -- Signed 32-bit non-interleaved PCM.
       mlt_audio_float); -- 32-bit non-interleaved floating point.

   type mlt_whence is -- Relative time qualifiers.
      (mlt_whence_relative_start,   -- Relative to the beginning.
       mlt_whence_relative_current, -- Relative to the current position.
       mlt_whence_relative_end);    -- Relative to the end.

   type mlt_service_type is -- Subclasses of mlt_service.
      (invalid_type,
       unknown_type,
       producer_type,
       tractor_type,
       playlist_type,
       multitrack_type,
       filter_type,
       transition_type,
       consumer_type,
       field_type);

   type mlt_position is new Interfaces.C.long;
end Solid.Media.MLT.Thin;
