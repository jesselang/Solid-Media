with Ada.Text_IO;
with Ada.Unchecked_Conversion;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;

with Solid.Media.MLT.Thin.Consumer;
with Solid.Media.MLT.Thin.Factory;
with Solid.Media.MLT.Thin.Producer;
with Solid.Media.MLT.Thin.Profile;

use Solid.Media.MLT;

procedure MLT_Driver is
   package C renames Interfaces.C;
   function Convert is new Ada.Unchecked_Conversion (Source => C.Strings.chars_ptr, Target => C.Extensions.void_ptr);

   Repo     : Thin.mlt_repository;
   Profile  : Thin.Profile.mlt_profile;
   Consumer : Thin.Consumer.mlt_consumer;
   Producer : Thin.Producer.mlt_producer;

   Result : C.int;
begin
   Repo := Thin.Factory.mlt_factory_init (C.Strings.Null_Ptr);

   Profile := Thin.Profile.mlt_profile_init (C.Strings.New_String ("dv_ntsc_wide") );
   Consumer := Thin.Factory.mlt_factory_consumer (Profile, C.Strings.New_String ("sdl"), Convert (C.Strings.Null_Ptr) );
   Producer := Thin.Factory.mlt_factory_producer (Profile, C.Strings.Null_Ptr, Convert (C.Strings.New_String ("/home/jesse/Ministry/Filament/Thaddaeus_Testimony/MOV0AF.mpg") ) );
   Result := Thin.Consumer.mlt_consumer_connect (Consumer, Thin.Producer.mlt_producer_service (Producer) );

   Result := Thin.Consumer.mlt_consumer_start (Consumer);
   delay 10.0;
end MLT_Driver;
