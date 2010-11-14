
package Solid.Media.MLT.Thin.Tractor is
   type mlt_tractor is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                  -- additional information.
--~ extern mlt_tractor mlt_tractor_init( );
--~ extern mlt_tractor mlt_tractor_new( );
--~ extern mlt_service mlt_tractor_service( mlt_tractor self );
--~ extern mlt_producer mlt_tractor_producer( mlt_tractor self );
--~ extern mlt_properties mlt_tractor_properties( mlt_tractor self );
--~ extern mlt_field mlt_tractor_field( mlt_tractor self );
--~ extern mlt_multitrack mlt_tractor_multitrack( mlt_tractor self );
--~ extern int mlt_tractor_connect( mlt_tractor self, mlt_service service );
--~ extern void mlt_tractor_refresh( mlt_tractor self );
--~ extern int mlt_tractor_set_track( mlt_tractor self, mlt_producer producer, int index );
--~ extern mlt_producer mlt_tractor_get_track( mlt_tractor self, int index );
--~ extern void mlt_tractor_close( mlt_tractor self );
end Solid.Media.MLT.Thin.Tractor;
