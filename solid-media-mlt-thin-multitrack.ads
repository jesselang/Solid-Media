with Solid.Media.MLT.Thin.Producer;
with Solid.Media.MLT.Thin.Properties;

package Solid.Media.MLT.Thin.Multitrack is
   type mlt_multitrack is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                     -- additional information.

   function mlt_multitrack_init return mlt_multitrack;
   pragma Import (C, mlt_multitrack_init);

   function mlt_multitrack_producer (self : mlt_multitrack) return Producer.mlt_producer;
   pragma Import (C, mlt_multitrack_producer);

   function mlt_multitrack_service (self : mlt_multitrack) return mlt_service;
   pragma Import (C, mlt_multitrack_service);

   function mlt_multitrack_properties (self : mlt_multitrack) return Properties.mlt_properties;
   pragma Import (C, mlt_multitrack_properties);

   function mlt_multitrack_connect (self : mlt_multitrack; producer : Thin.Producer.mlt_producer; track : C.int) return C.int;
   pragma Import (C, mlt_multitrack_connect);

   function mlt_multitrack_clip (self : mlt_multitrack; whence : mlt_whence; index : C.int) return mlt_position;
   pragma Import (C, mlt_multitrack_clip);

   procedure mlt_multitrack_close (self : mlt_multitrack);
   pragma Import (C, mlt_multitrack_close);

   function mlt_multitrack_count (self : mlt_multitrack) return C.int;
   pragma Import (C, mlt_multitrack_count);

   procedure mlt_multitrack_refresh (self : mlt_multitrack);
   pragma Import (C, mlt_multitrack_refresh);

   function mlt_multitrack_track (self : mlt_multitrack; track : C.int) return Producer.mlt_producer;
   pragma Import (C, mlt_multitrack_track);

--~ extern mlt_multitrack mlt_multitrack_init( );
--~ extern mlt_producer mlt_multitrack_producer( mlt_multitrack self );
--~ extern mlt_service mlt_multitrack_service( mlt_multitrack self );
--~ extern mlt_properties mlt_multitrack_properties( mlt_multitrack self );
--~ extern int mlt_multitrack_connect( mlt_multitrack self, mlt_producer producer, int track );
--~ extern mlt_position mlt_multitrack_clip( mlt_multitrack self, mlt_whence whence, int index );
--~ extern void mlt_multitrack_close( mlt_multitrack self );
--~ extern int mlt_multitrack_count( mlt_multitrack self );
--~ extern void mlt_multitrack_refresh( mlt_multitrack self );
--~ extern mlt_producer mlt_multitrack_track( mlt_multitrack self, int track );
end Solid.Media.MLT.Thin.Multitrack;
