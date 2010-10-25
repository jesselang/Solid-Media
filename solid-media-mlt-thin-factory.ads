with Solid.Media.MLT.Thin.Consumer;
with Solid.Media.MLT.Thin.Filter;
with Solid.Media.MLT.Thin.Producer;
with Solid.Media.MLT.Thin.Profile;
with Solid.Media.MLT.Thin.Properties;
with Solid.Media.MLT.Thin.Transition;

package Solid.Media.MLT.Thin.Factory is
   function mlt_factory_init (directory : in C.Strings.chars_ptr) return mlt_repository;
   pragma Import (C, mlt_factory_init);

   function mlt_factory_directory return C.Strings.chars_ptr;
   pragma Import (C, mlt_factory_directory);

   function mlt_environment_set (name : in C.Strings.chars_ptr; value : in C.Strings.chars_ptr) return C.int;
   pragma Import (C, mlt_environment_set);

   function mlt_factory_event_object return Properties.mlt_properties;
   pragma Import (C, mlt_factory_event_object);

   function mlt_factory_producer
      (profile : Thin.Profile.mlt_profile; name : in C.Strings.chars_ptr; input : in C.Extensions.void_ptr)
   return Producer.mlt_producer;
   pragma Import (C, mlt_factory_producer);

   function mlt_factory_filter
      (profile : Thin.Profile.mlt_profile; name : in C.Strings.chars_ptr; input : in C.Extensions.void_ptr)
   return Filter.mlt_filter;
   pragma Import (C, mlt_factory_filter);

   function mlt_factory_transition
      (profile : Thin.Profile.mlt_profile; name : in C.Strings.chars_ptr; input : in C.Extensions.void_ptr)
   return Transition.mlt_transition;
   pragma Import (C, mlt_factory_transition);

   function mlt_factory_consumer
      (profile : Thin.Profile.mlt_profile; name : in C.Strings.chars_ptr; input : in C.Extensions.void_ptr)
   return Consumer.mlt_consumer;
   pragma Import (C, mlt_factory_consumer);

   procedure mlt_factory_register_for_clean_up (ptr : C.Extensions.void_ptr; destructor : mlt_destructor);
   pragma Import (C, mlt_factory_register_for_clean_up);

   procedure mlt_factory_close;
   pragma Import (C, mlt_factory_close);

   function mlt_global_properties return Properties.mlt_properties;
   pragma Import (C, mlt_global_properties);

--~ extern mlt_repository mlt_factory_init( const char *directory );
--~ extern const char *mlt_factory_directory( );
--~ extern char *mlt_environment( const char *name );
--~ extern int mlt_environment_set( const char *name, const char *value );
--~ extern mlt_properties mlt_factory_event_object( );
--~ extern mlt_producer mlt_factory_producer( mlt_profile profile, const char *name, const void *input );
--~ extern mlt_filter mlt_factory_filter( mlt_profile profile, const char *name, const void *input );
--~ extern mlt_transition mlt_factory_transition( mlt_profile profile, const char *name, const void *input );
--~ extern mlt_consumer mlt_factory_consumer( mlt_profile profile, const char *name, const void *input );
--~ extern void mlt_factory_register_for_clean_up( void *ptr, mlt_destructor destructor );
--~ extern void mlt_factory_close( );
--~ extern mlt_properties mlt_global_properties( );
end Solid.Media.MLT.Thin.Factory;
