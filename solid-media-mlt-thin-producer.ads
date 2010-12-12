package Solid.Media.MLT.Thin.Producer is
   type mlt_producer is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                   -- additional information.

--~ extern int mlt_producer_init( mlt_producer self, void *child );
--~ extern mlt_producer mlt_producer_new( );

   function mlt_producer_service (self : mlt_producer) return mlt_service;
   pragma Import (C, mlt_producer_service);

--~ extern mlt_service mlt_producer_service( mlt_producer self );
--~ extern mlt_properties mlt_producer_properties( mlt_producer self );
--~ extern int mlt_producer_seek( mlt_producer self, mlt_position position );
--~ extern mlt_position mlt_producer_position( mlt_producer self );
--~ extern mlt_position mlt_producer_frame( mlt_producer self );
--~ extern int mlt_producer_set_speed( mlt_producer self, double speed );
--~ extern double mlt_producer_get_speed( mlt_producer self );
--~ extern double mlt_producer_get_fps( mlt_producer self );
--~ extern int mlt_producer_set_in_and_out( mlt_producer self, mlt_position in, mlt_position out );
--~ extern int mlt_producer_clear( mlt_producer self );
--~ extern mlt_position mlt_producer_get_in( mlt_producer self );
--~ extern mlt_position mlt_producer_get_out( mlt_producer self );
--~ extern mlt_position mlt_producer_get_playtime( mlt_producer self );
--~ extern mlt_position mlt_producer_get_length( mlt_producer self );
--~ extern void mlt_producer_prepare_next( mlt_producer self );
--~ extern int mlt_producer_attach( mlt_producer self, mlt_filter filter );
--~ extern int mlt_producer_detach( mlt_producer self, mlt_filter filter );
--~ extern mlt_filter mlt_producer_filter( mlt_producer self, int index );
--~ extern mlt_producer mlt_producer_cut( mlt_producer self, int in, int out );
--~ extern int mlt_producer_is_cut( mlt_producer self );
--~ extern int mlt_producer_is_mix( mlt_producer self );
--~ extern int mlt_producer_is_blank( mlt_producer self );
--~ extern mlt_producer mlt_producer_cut_parent( mlt_producer self );
--~ extern int mlt_producer_optimise( mlt_producer self );
--~ extern void mlt_producer_close( mlt_producer self );

   -- Callback
   type transport_callback is access procedure (producer : mlt_producer; value : access C.char);
   pragma Convention (C, transport_callback);
end Solid.Media.MLT.Thin.Producer;
