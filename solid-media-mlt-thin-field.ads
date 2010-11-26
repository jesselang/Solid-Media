with Solid.Media.MLT.Thin.Filter;
with Solid.Media.MLT.Thin.Multitrack;
with Solid.Media.MLT.Thin.Properties;
with Solid.Media.MLT.Thin.Tractor;
with Solid.Media.MLT.Thin.Transition;

package Solid.Media.MLT.Thin.Field is
   type mlt_field is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                -- additional information.

   function mlt_field_init return mlt_field;
   pragma Import (C, mlt_field_init);

   function mlt_field_new (multitrack : Thin.Multitrack.mlt_multitrack; tractor : Thin.Tractor.mlt_tractor) return mlt_field;
   pragma Import (C, mlt_field_new);

   function mlt_field_service (self : mlt_field) return mlt_service;
   pragma Import (C, mlt_field_service);

   function mlt_field_tractor (self : mlt_field) return Thin.Tractor.mlt_tractor;
   pragma Import (C, mlt_field_tractor);

   function mlt_field_multitrack (self : mlt_field) return Thin.Multitrack.mlt_multitrack;
   pragma Import (C, mlt_field_multitrack);

   function mlt_field_properties (self : mlt_field) return Thin.Properties.mlt_properties;
   pragma Import (C, mlt_field_properties);

   function mlt_field_plant_filter (self : mlt_field; that : Filter.mlt_filter; track : C.int) return C.int;
   pragma Import (C, mlt_field_plant_filter);

   function mlt_field_plant_transition (self : mlt_field; that : Transition.mlt_transition; a_track : C.int; b_track : C.int)
   return C.int;
   pragma Import (C, mlt_field_plant_transition);

   procedure mlt_field_close (self : mlt_field);
   pragma Import (C, mlt_field_close);

   procedure mlt_field_disconnect_service (self : mlt_field; service : mlt_service);
   pragma Import (C, mlt_field_disconnect_service);

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
