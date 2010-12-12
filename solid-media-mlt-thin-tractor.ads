with Solid.Media.MLT.Thin.Field;
with Solid.Media.MLT.Thin.Multitrack;
with Solid.Media.MLT.Thin.Producer;
with Solid.Media.MLT.Thin.Properties;

package Solid.Media.MLT.Thin.Tractor is
   type mlt_tractor is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                  -- additional information.

   function mlt_tractor_init return mlt_tractor;
   pragma Import (C, mlt_tractor_init);

   function mlt_tractor_new return mlt_tractor;
   pragma Import (C, mlt_tractor_new);

   function mlt_tractor_service (self : mlt_tractor) return mlt_service;
   pragma Import (C, mlt_tractor_service);

   function mlt_tractor_producer (self : mlt_tractor) return Producer.mlt_producer;
   pragma Import (C, mlt_tractor_producer);

   function mlt_tractor_properties (self : mlt_tractor) return Properties.mlt_properties;
   pragma Import (C, mlt_tractor_properties);

   function mlt_tractor_field (self : mlt_tractor) return Field.mlt_field;
   pragma Import (C, mlt_tractor_field);

   function mlt_tractor_multitrack (self : mlt_tractor) return Multitrack.mlt_multitrack;
   pragma Import (C, mlt_tractor_multitrack);

   function mlt_tractor_connect (self : mlt_tractor; service : mlt_service) return C.int;
   pragma Import (C, mlt_tractor_connect);

   procedure mlt_tractor_refresh (self : mlt_tractor);
   pragma Import (C, mlt_tractor_refresh);

   function mlt_tractor_set_track (self : mlt_tractor; producer : Thin.Producer.mlt_producer; index : C.int) return C.int;
   pragma Import (C, mlt_tractor_set_track);

   function mlt_tractor_get_track (self : mlt_tractor; index : C.int) return Producer.mlt_producer;
   pragma Import (C, mlt_tractor_get_track);

   procedure mlt_tractor_close (self : mlt_tractor);
   pragma Import (C, mlt_tractor_close);

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
