package Solid.Media.MLT.Thin.Properties is
--~ /** \brief Properties class
 --~ *
 --~ * Properties is a combination list/dictionary of name/::mlt_property pairs.
 --~ * It is also a base class for many of the other MLT classes.
 --~ */

   type mlt_properties is new C.Extensions.opaque_structure_def_ptr;

--~ struct mlt_properties_s
--~ {
	--~ void *child; /**< \private the object of a subclass */
	--~ void *local; /**< \private instance object */

	--~ /** the destructor virtual function */
	--~ mlt_destructor close;
	--~ void *close_object;  /**< the object supplied to the close virtual function */
--~ };

   function mlt_properties_init (this : mlt_properties; child : mlt_properties) return C.int;
   -- Perhaps child should default to null?
   pragma Import (C, mlt_properties_init);

   function mlt_properties_new return mlt_properties;
   pragma Import (C, mlt_properties_new);

   function mlt_properties_load (file : C.Strings.chars_ptr) return mlt_properties;
   pragma Import (C, mlt_properties_load);

   function mlt_properties_inc_ref (self : mlt_properties) return C.int;
   pragma Import (C, mlt_properties_inc_ref);

   function mlt_properties_dec_ref (self : mlt_properties) return C.int;
   pragma Import (C, mlt_properties_dec_ref);

   procedure mlt_properties_mirror (self : mlt_properties; that : mlt_properties);
   pragma Import (C, mlt_properties_mirror);

   function mlt_properties_inherit (self : mlt_properties; that : mlt_properties) return C.int;
   pragma Import (C, mlt_properties_inherit);

   function mlt_properties_pass (self : mlt_properties; that : mlt_properties; prefix : in C.Strings.chars_ptr) return C.int;
   pragma Import (C, mlt_properties_pass);

   procedure mlt_properties_pass_property (self : mlt_properties; that : mlt_properties; name : in C.Strings.chars_ptr);
   pragma Import (C, mlt_properties_pass_property);

   function mlt_properties_pass_list (self : mlt_properties; that : mlt_properties; list : in C.Strings.chars_ptr_array)
   return C.int;
   pragma Import (C, mlt_properties_pass_list); -- Not sure of this one.

   function mlt_properties_set (self : mlt_properties; name : in C.Strings.chars_ptr; value : in C.Strings.chars_ptr)
   return C.int;
   pragma Import (C, mlt_properties_set);

   function mlt_properties_set_or_default
      (self : mlt_properties; name : in C.Strings.chars_ptr; value : in C.Strings.chars_ptr; def : in C.Strings.chars_ptr)
   return C.int;
   pragma Import (C, mlt_properties_set_or_default);

   function mlt_properties_parse (self : mlt_properties; namevalue : in C.Strings.chars_ptr) return C.int;
   pragma Import (C, mlt_properties_parse);

   -- Unfinished.

--~ extern int mlt_properties_init( mlt_properties, void *child );
--~ extern mlt_properties mlt_properties_new( );
--~ extern mlt_properties mlt_properties_load( const char *file );
--~ extern int mlt_properties_inc_ref( mlt_properties self );
--~ extern int mlt_properties_dec_ref( mlt_properties self );
--~ extern int mlt_properties_ref_count( mlt_properties self );
--~ extern void mlt_properties_mirror( mlt_properties self, mlt_properties that );
--~ extern int mlt_properties_inherit( mlt_properties self, mlt_properties that );
--~ extern int mlt_properties_pass( mlt_properties self, mlt_properties that, const char *prefix );
--~ extern void mlt_properties_pass_property( mlt_properties self, mlt_properties that, const char *name );
--~ extern int mlt_properties_pass_list( mlt_properties self, mlt_properties that, const char *list );
--~ extern int mlt_properties_set( mlt_properties self, const char *name, const char *value );
--~ extern int mlt_properties_set_or_default( mlt_properties self, const char *name, const char *value, const char *def );
--~ extern int mlt_properties_parse( mlt_properties self, const char *namevalue );
--~ extern char *mlt_properties_get( mlt_properties self, const char *name );
--~ extern char *mlt_properties_get_name( mlt_properties self, int index );
--~ extern char *mlt_properties_get_value( mlt_properties self, int index );
--~ extern void *mlt_properties_get_data_at( mlt_properties self, int index, int *size );
--~ extern int mlt_properties_get_int( mlt_properties self, const char *name );
--~ extern int mlt_properties_set_int( mlt_properties self, const char *name, int value );
--~ extern int64_t mlt_properties_get_int64( mlt_properties self, const char *name );
--~ extern int mlt_properties_set_int64( mlt_properties self, const char *name, int64_t value );
--~ extern double mlt_properties_get_double( mlt_properties self, const char *name );
--~ extern int mlt_properties_set_double( mlt_properties self, const char *name, double value );
--~ extern mlt_position mlt_properties_get_position( mlt_properties self, const char *name );
--~ extern int mlt_properties_set_position( mlt_properties self, const char *name, mlt_position value );
--~ extern int mlt_properties_set_data( mlt_properties self, const char *name, void *value, int length, mlt_destructor, mlt_serialiser );
--~ extern void *mlt_properties_get_data( mlt_properties self, const char *name, int *length );
--~ extern int mlt_properties_rename( mlt_properties self, const char *source, const char *dest );
--~ extern int mlt_properties_count( mlt_properties self );
--~ extern void mlt_properties_dump( mlt_properties self, FILE *output );
--~ extern void mlt_properties_debug( mlt_properties self, const char *title, FILE *output );
--~ extern int mlt_properties_save( mlt_properties, const char * );
--~ extern int mlt_properties_dir_list( mlt_properties, const char *, const char *, int );
--~ extern void mlt_properties_close( mlt_properties self );
--~ extern int mlt_properties_is_sequence( mlt_properties self );
--~ extern mlt_properties mlt_properties_parse_yaml( const char *file );
--~ extern char *mlt_properties_serialise_yaml( mlt_properties self );
end Solid.Media.MLT.Thin.Properties;
