with Solid.Media.MLT.Thin.Properties;

package Solid.Media.MLT.Thin.Profile is
   type mlt_profile_info is record
      description        : C.Strings.chars_ptr; -- A brief description suitable as a label in UI menu.
      frame_rate_num     : C.int;               -- The numerator of the video frame rate.
      frame_rate_den     : C.int;               -- The denominator of the video frame rate.
      width              : C.int;               -- The horizontal resolution of the video.
      height             : C.int;               -- The vertical resolution of the video.
      progressive        : C.int;               -- A flag to indicate if the video is progressive scan, interlace if not set.
      sample_aspect_num  : C.int;               -- The numerator of the pixel aspect ratio.
      sample_aspect_den  : C.int;               -- The denominator of the pixel aspect ratio.
      display_aspect_num : C.int;               -- The numerator of the image aspect ratio in case it can not be simply derived.
      display_aspect_den : C.int;               -- The denominator of the image aspect ratio in case it can not be simply derived.
   end record;                                  -- For the two above, see ITU-R 601.
   pragma Convention (C, mlt_profile_info);

   type mlt_profile is access mlt_profile_info;
   pragma Convention (C, mlt_profile);

--~ struct mlt_profile_s
--~ {
	--~ char* description;      /**< a brief description suitable as a label in UI menu */
	--~ int frame_rate_num;     /**< the numerator of the video frame rate */
	--~ int frame_rate_den;     /**< the denominator of the video frame rate */
	--~ int width;              /**< the horizontal resolution of the video */
	--~ int height;             /**< the vertical resolution of the video */
	--~ int progressive;        /**< a flag to indicate if the video is progressive scan, interlace if not set */
	--~ int sample_aspect_num;  /**< the numerator of the pixel aspect ratio */
	--~ int sample_aspect_den;  /**< the denominator of the pixel aspect ratio */
	--~ int display_aspect_num; /**< the numerator of the image aspect ratio in case it can not be simply derived (e.g. ITU-R 601) */
	--~ int display_aspect_den; /**< the denominator of the image aspect ratio in case it can not be simply derived (e.g. ITU-R 601) */
--~ };

   function mlt_profile_init (name : C.Strings.chars_ptr) return mlt_profile;
   pragma Import (C, mlt_profile_init);

   function mlt_profile_load_file (file : C.Strings.chars_ptr) return mlt_profile;
   pragma Import (C, mlt_profile_load_file);

   function mlt_profile_load_properties (properties : Thin.Properties.mlt_properties) return mlt_profile;
   pragma Import (C, mlt_profile_load_properties);

   function mlt_profile_load_string (string : C.Strings.chars_ptr) return mlt_profile;
   pragma Import (C, mlt_profile_load_string);

   function mlt_profile_fps (profile : mlt_profile) return C.double;
   pragma Import (C, mlt_profile_fps);

   function mlt_profile_sar (profile : mlt_profile) return C.double;
   pragma Import (C, mlt_profile_sar);

   function mlt_profile_dar (profile : mlt_profile) return C.double;
   pragma Import (C, mlt_profile_dar);

   procedure mlt_profile_close (profile : mlt_profile);
   pragma Import (C, mlt_profile_close);

--~ extern mlt_profile mlt_profile_init( const char *name );
--~ extern mlt_profile mlt_profile_load_file( const char *file );
--~ extern mlt_profile mlt_profile_load_properties( mlt_properties properties );
--~ extern mlt_profile mlt_profile_load_string( const char *string );
--~ extern double mlt_profile_fps( mlt_profile profile );
--~ extern double mlt_profile_sar( mlt_profile profile );
--~ extern double mlt_profile_dar( mlt_profile profile );
--~ extern void mlt_profile_close( mlt_profile profile );
end Solid.Media.MLT.Thin.Profile;
