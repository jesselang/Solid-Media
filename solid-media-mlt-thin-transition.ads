package Solid.Media.MLT.Thin.Transition is
   type mlt_transition is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                     -- additional information.
--~ extern int mlt_transition_init( mlt_transition self, void *child );
--~ extern mlt_transition mlt_transition_new( );
--~ extern mlt_service mlt_transition_service( mlt_transition self );
--~ extern mlt_properties mlt_transition_properties( mlt_transition self );
--~ extern int mlt_transition_connect( mlt_transition self, mlt_service producer, int a_track, int b_track );
--~ extern void mlt_transition_set_in_and_out( mlt_transition self, mlt_position in, mlt_position out );
--~ extern int mlt_transition_get_a_track( mlt_transition self );
--~ extern int mlt_transition_get_b_track( mlt_transition self );
--~ extern mlt_position mlt_transition_get_in( mlt_transition self );
--~ extern mlt_position mlt_transition_get_out( mlt_transition self );
--~ extern mlt_frame mlt_transition_process( mlt_transition self, mlt_frame a_frame, mlt_frame b_frame );
--~ extern void mlt_transition_close( mlt_transition self );
end Solid.Media.MLT.Thin.Transition;
