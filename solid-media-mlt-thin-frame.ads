
package Solid.Media.MLT.Thin.Frame is
   type mlt_frame is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                -- additional information.
--~ extern mlt_frame mlt_frame_init( mlt_service service );
--~ extern mlt_properties mlt_frame_properties( mlt_frame self );
--~ extern int mlt_frame_is_test_card( mlt_frame self );
--~ extern int mlt_frame_is_test_audio( mlt_frame self );
--~ extern double mlt_frame_get_aspect_ratio( mlt_frame self );
--~ extern int mlt_frame_set_aspect_ratio( mlt_frame self, double value );
--~ extern mlt_position mlt_frame_get_position( mlt_frame self );
--~ extern int mlt_frame_set_position( mlt_frame self, mlt_position value );
--~ extern void mlt_frame_replace_image( mlt_frame self, uint8_t *image, mlt_image_format format, int width, int height );
--~ extern int mlt_frame_get_image( mlt_frame self, uint8_t **buffer, mlt_image_format *format, int *width, int *height, int writable );
--~ extern uint8_t *mlt_frame_get_alpha_mask( mlt_frame self );
--~ extern int mlt_frame_get_audio( mlt_frame self, void **buffer, mlt_audio_format *format, int *frequency, int *channels, int *samples );
--~ extern int mlt_frame_set_audio( mlt_frame self, void *buffer, mlt_audio_format, int size, mlt_destructor );
--~ extern unsigned char *mlt_frame_get_waveform( mlt_frame self, int w, int h );
--~ extern int mlt_frame_push_get_image( mlt_frame self, mlt_get_image get_image );
--~ extern mlt_get_image mlt_frame_pop_get_image( mlt_frame self );
--~ extern int mlt_frame_push_frame( mlt_frame self, mlt_frame that );
--~ extern mlt_frame mlt_frame_pop_frame( mlt_frame self );
--~ extern int mlt_frame_push_service( mlt_frame self, void *that );
--~ extern void *mlt_frame_pop_service( mlt_frame self );
--~ extern int mlt_frame_push_service_int( mlt_frame self, int that );
--~ extern int mlt_frame_pop_service_int( mlt_frame self );
--~ extern int mlt_frame_push_audio( mlt_frame self, void *that );
--~ extern void *mlt_frame_pop_audio( mlt_frame self );
--~ extern mlt_deque mlt_frame_service_stack( mlt_frame self );
--~ extern mlt_producer mlt_frame_get_original_producer( mlt_frame self );
--~ extern void mlt_frame_close( mlt_frame self );

--~ /* convenience functions */
--~ extern int mlt_sample_calculator( float fps, int frequency, int64_t position );
--~ extern int64_t mlt_sample_calculator_to_now( float fps, int frequency, int64_t position );
--~ extern const char * mlt_image_format_name( mlt_image_format format );
--~ extern const char * mlt_audio_format_name( mlt_audio_format format );
end Solid.Media.MLT.Thin.Frame;
