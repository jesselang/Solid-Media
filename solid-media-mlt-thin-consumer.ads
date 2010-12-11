with Solid.Media.MLT.Thin.Properties;

package Solid.Media.MLT.Thin.Consumer is
   type mlt_consumer is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                   -- additional information.

-- These don't seem to be useful because consumers are created by the factory.
--~ extern int mlt_consumer_init( mlt_consumer self, void *child, mlt_profile profile );
--~ extern mlt_consumer mlt_consumer_new( mlt_profile profile );

   function mlt_consumer_service (self : mlt_consumer) return mlt_service;
   pragma Import (C, mlt_consumer_service);

   function mlt_consumer_properties (self : mlt_consumer) return Properties.mlt_properties;
   pragma Import (C, mlt_consumer_properties);

   function mlt_consumer_connect (self : mlt_consumer; producer : mlt_service) return C.int;
   pragma Import (C, mlt_consumer_connect);

   function mlt_consumer_start (self : mlt_consumer) return C.int;
   pragma Import (C, mlt_consumer_start);

   function mlt_consumer_stop (self : mlt_consumer) return C.int;
   pragma Import (C, mlt_consumer_stop);

   function mlt_consumer_is_stopped (self : mlt_consumer) return C.int;
   pragma Import (C, mlt_consumer_is_stopped);

--~ extern mlt_service mlt_consumer_service( mlt_consumer self );
--~ extern mlt_properties mlt_consumer_properties( mlt_consumer self );
--~ extern int mlt_consumer_connect( mlt_consumer self, mlt_service producer );
--~ extern int mlt_consumer_start( mlt_consumer self );
--~ extern void mlt_consumer_purge( mlt_consumer self );
--~ extern int mlt_consumer_put_frame( mlt_consumer self, mlt_frame frame );
--~ extern mlt_frame mlt_consumer_get_frame( mlt_consumer self );
--~ extern mlt_frame mlt_consumer_rt_frame( mlt_consumer self );
--~ extern int mlt_consumer_stop( mlt_consumer self );
--~ extern int mlt_consumer_is_stopped( mlt_consumer self );
--~ extern void mlt_consumer_stopped( mlt_consumer self );
--~ extern void mlt_consumer_close( mlt_consumer );
end Solid.Media.MLT.Thin.Consumer;
