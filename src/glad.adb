with CLIC.Subcommand;
with Commands;
with Ada.Text_IO;
with CLIC.TTY;
with Version;
with Ada.Exceptions; use Ada.Exceptions;

procedure Glad is
begin
  Ada.Text_IO.New_Line;
  Commands.Execute;

exception
   when E : others =>
      Ada.Text_IO.Put_Line(Exception_Message (E));
end Glad;