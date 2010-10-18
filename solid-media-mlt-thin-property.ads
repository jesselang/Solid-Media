--with Interfaces.C.Extensions;

package Solid.Media.MLT.Thin.Property is
   type mlt_property is new C.Extensions.opaque_structure_def_ptr;

   function mlt_property_init return mlt_property;
   pragma Import (C, mlt_property_init);

   function mlt_property_set_int (self : mlt_property; value : C.int) return C.int;
   pragma Import (C, mlt_property_set_int);

   function mlt_property_set_double (self : mlt_property; value : C.double) return C.int;
   pragma Import (C, mlt_property_set_double);

   function mlt_property_set_position (self : mlt_property; value : mlt_position) return C.int;
   pragma Import (C, mlt_property_set_position);

   function mlt_property_set_int64 (self : mlt_property; value : C.Extensions.long_long) return C.int;
   pragma Import (C, mlt_property_set_int64);

   function mlt_property_set_string (self : mlt_property; value : C.Strings.chars_ptr) return C.int;
   pragma Import (C, mlt_property_set_string);

   function mlt_property_set_data (self       : mlt_property;
                                   value      : C.Extensions.void_ptr;
                                   length     : C.int;
                                   destructor : mlt_destructor;
                                   serializer : mlt_serializer)
   return C.int;
   pragma Import (C, mlt_property_set_data);


   function mlt_property_get_int (self : mlt_property) return C.int;
   pragma Import (C, mlt_property_get_int);

   function mlt_property_get_double (self : mlt_property) return C.double;
   pragma Import (C, mlt_property_get_double);

   function mlt_property_get_position (self : mlt_property) return mlt_position;
   pragma Import (C, mlt_property_get_position);

   function mlt_property_get_int64 (self : mlt_property) return C.Extensions.long_long;
   pragma Import (C, mlt_property_get_int64);

   function mlt_property_get_string (self : mlt_property) return C.Strings.chars_ptr;
   pragma Import (C, mlt_property_get_string);


--~ extern mlt_property mlt_property_init( );
--~ extern int mlt_property_set_int( mlt_property self, int value );
--~ extern int mlt_property_set_double( mlt_property self, double value );
--~ extern int mlt_property_set_position( mlt_property self, mlt_position value );
--~ extern int mlt_property_set_int64( mlt_property self, int64_t value );
--~ extern int mlt_property_set_string( mlt_property self, const char *value );
--~ extern int mlt_property_set_data( mlt_property self, void *value, int length, mlt_destructor destructor, mlt_serialiser serialiser );
--~ extern int mlt_property_get_int( mlt_property self );
--~ extern double mlt_property_get_double( mlt_property self );
--~ extern mlt_position mlt_property_get_position( mlt_property self );
--~ extern int64_t mlt_property_get_int64( mlt_property self );
--~ extern char *mlt_property_get_string( mlt_property self );
--~ extern void *mlt_property_get_data( mlt_property self, int *length );
--~ extern void mlt_property_close( mlt_property self );

--~ extern void mlt_property_pass( mlt_property this, mlt_property that );
end Solid.Media.MLT.Thin.Property;
