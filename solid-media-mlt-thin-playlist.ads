with Solid.Media.MLT.Thin.Producer;
with Solid.Media.MLT.Thin.Properties;

package Solid.Media.MLT.Thin.Playlist is
   type mlt_playlist is new C.Extensions.opaque_structure_def_ptr; -- We may need to change this to a record with
                                                                   -- additional information.

   function mlt_playlist_init return mlt_playlist;
   pragma Import (C, mlt_playlist_init);

   function mlt_playlist_producer (self : mlt_playlist) return Producer.mlt_producer;
   pragma Import (C, mlt_playlist_producer);

   function mlt_playlist_service (self : mlt_playlist) return mlt_service;
   pragma Import (C, mlt_playlist_service);

   function mlt_playlist_properties (self : mlt_playlist) return Properties.mlt_properties;
   pragma Import (C, mlt_playlist_properties);

   function mlt_playlist_count (self : mlt_playlist) return C.int;
   pragma Import (C, mlt_playlist_count);

   function mlt_playlist_clear (self : mlt_playlist) return C.int;
   pragma Import (C, mlt_playlist_clear);

   function mlt_playlist_append (self : mlt_playlist) return C.int;
   pragma Import (C, mlt_playlist_append);



--~ extern mlt_playlist mlt_playlist_init( );
--~ extern mlt_producer mlt_playlist_producer( mlt_playlist self );
--~ extern mlt_service mlt_playlist_service( mlt_playlist self );
--~ extern mlt_properties mlt_playlist_properties( mlt_playlist self );
--~ extern int mlt_playlist_count( mlt_playlist self );
--~ extern int mlt_playlist_clear( mlt_playlist self );
--~ extern int mlt_playlist_append( mlt_playlist self, mlt_producer producer );
--~ extern int mlt_playlist_append_io( mlt_playlist self, mlt_producer producer, mlt_position in, mlt_position out );
--~ extern int mlt_playlist_blank( mlt_playlist self, mlt_position length );
--~ extern mlt_position mlt_playlist_clip( mlt_playlist self, mlt_whence whence, int index );
--~ extern int mlt_playlist_current_clip( mlt_playlist self );
--~ extern mlt_producer mlt_playlist_current( mlt_playlist self );
--~ extern int mlt_playlist_get_clip_info( mlt_playlist self, mlt_playlist_clip_info *info, int index );
--~ extern int mlt_playlist_insert( mlt_playlist self, mlt_producer producer, int where, mlt_position in, mlt_position out );
--~ extern int mlt_playlist_remove( mlt_playlist self, int where );
--~ extern int mlt_playlist_move( mlt_playlist self, int from, int to );
--~ extern int mlt_playlist_resize_clip( mlt_playlist self, int clip, mlt_position in, mlt_position out );
--~ extern int mlt_playlist_repeat_clip( mlt_playlist self, int clip, int repeat );
--~ extern int mlt_playlist_split( mlt_playlist self, int clip, mlt_position position );
--~ extern int mlt_playlist_split_at( mlt_playlist self, mlt_position position, int left );
--~ extern int mlt_playlist_join( mlt_playlist self, int clip, int count, int merge );
--~ extern int mlt_playlist_mix( mlt_playlist self, int clip, int length, mlt_transition transition );
--~ extern int mlt_playlist_mix_add( mlt_playlist self, int clip, mlt_transition transition );
--~ extern mlt_producer mlt_playlist_get_clip( mlt_playlist self, int clip );
--~ extern mlt_producer mlt_playlist_get_clip_at( mlt_playlist self, mlt_position position );
--~ extern int mlt_playlist_get_clip_index_at( mlt_playlist self, mlt_position position );
--~ extern int mlt_playlist_clip_is_mix( mlt_playlist self, int clip );
--~ extern void mlt_playlist_consolidate_blanks( mlt_playlist self, int keep_length );
--~ extern int mlt_playlist_is_blank( mlt_playlist self, int clip );
--~ extern int mlt_playlist_is_blank_at( mlt_playlist self, mlt_position position );
--~ extern void mlt_playlist_insert_blank( mlt_playlist self, int clip, int length );
--~ extern void mlt_playlist_pad_blanks( mlt_playlist self, mlt_position position, int length, int find );
--~ extern mlt_producer mlt_playlist_replace_with_blank( mlt_playlist self, int clip );
--~ extern int mlt_playlist_insert_at( mlt_playlist self, mlt_position position, mlt_producer producer, int mode );
--~ extern int mlt_playlist_clip_start( mlt_playlist self, int clip );
--~ extern int mlt_playlist_clip_length( mlt_playlist self, int clip );
--~ extern int mlt_playlist_blanks_from( mlt_playlist self, int clip, int bounded );
--~ extern int mlt_playlist_remove_region( mlt_playlist self, mlt_position position, int length );
--~ extern int mlt_playlist_move_region( mlt_playlist self, mlt_position position, int length, int new_position );
--~ extern void mlt_playlist_close( mlt_playlist self );
end Solid.Media.MLT.Thin.Playlist;
