with Solid.Media.MLT.Thin.Frame;
with Solid.Media.MLT.Thin.Properties;

package Solid.Media.MLT.Thin.Filter is
   type mlt_filter is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                 -- additional information.

   function mlt_filter_init (self : mlt_filter; child : C.Extensions.void_ptr) return C.int;
   pragma Import (C, mlt_filter_init);

   function mlt_filter_new return mlt_filter;
   pragma Import (C, mlt_filter_new);

   function mlt_filter_service (self : mlt_filter) return mlt_service;
   pragma Import (C, mlt_filter_service);

   function mlt_filter_properties (self : mlt_filter) return Properties.mlt_properties;
   pragma Import (C, mlt_filter_properties);

   function mlt_filter_process (self : mlt_filter; that : Frame.mlt_frame) return Frame.mlt_frame;
   pragma Import (C, mlt_filter_process);

   function mlt_filter_connect (self : mlt_filter; producer : mlt_service; index : C.int) return C.int;
   pragma Import (C, mlt_filter_connect);

   procedure mlt_filter_set_in_and_out (self : mlt_filter; in_position : mlt_position; out_position : mlt_position);
   pragma Import (C, mlt_filter_set_in_and_out);

   function mlt_filter_get_track (self : mlt_filter) return C.int;
   pragma Import (C, mlt_filter_get_track);

   function mlt_filter_get_in (self : mlt_filter) return mlt_position;
   pragma Import (C, mlt_filter_get_in);

   function mlt_filter_get_out (self : mlt_filter) return mlt_position;
   pragma Import (C, mlt_filter_get_out);

   procedure mlt_filter_close (self : mlt_filter);
   pragma Import (C, mlt_filter_close);

--~ extern int mlt_filter_init( mlt_filter self, void *child );
--~ extern mlt_filter mlt_filter_new( );
--~ extern mlt_service mlt_filter_service( mlt_filter self );
--~ extern mlt_properties mlt_filter_properties( mlt_filter self );
--~ extern mlt_frame mlt_filter_process( mlt_filter self, mlt_frame that );
--~ extern int mlt_filter_connect( mlt_filter self, mlt_service producer, int index );
--~ extern void mlt_filter_set_in_and_out( mlt_filter self, mlt_position in, mlt_position out );
--~ extern int mlt_filter_get_track( mlt_filter self );
--~ extern mlt_position mlt_filter_get_in( mlt_filter self );
--~ extern mlt_position mlt_filter_get_out( mlt_filter self );
--~ extern void mlt_filter_close( mlt_filter );
end Solid.Media.MLT.Thin.Filter;
