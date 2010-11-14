
package Solid.Media.MLT.Thin.Field is
   type mlt_field is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                -- additional information.

--~ extern mlt_field mlt_field_init( );
--~ extern mlt_field mlt_field_new( mlt_multitrack multitrack, mlt_tractor tractor );
--~ extern mlt_service mlt_field_service( mlt_field self );
--~ extern mlt_tractor mlt_field_tractor( mlt_field self );
--~ extern mlt_multitrack mlt_field_multitrack( mlt_field self );
--~ extern mlt_properties mlt_field_properties( mlt_field self );
--~ extern int mlt_field_plant_filter( mlt_field self, mlt_filter that, int track );
--~ extern int mlt_field_plant_transition( mlt_field self, mlt_transition that, int a_track, int b_track );
--~ extern void mlt_field_close( mlt_field self );
--~ extern void mlt_field_disconnect_service( mlt_field self, mlt_service service );
end Solid.Media.MLT.Thin.Field;
