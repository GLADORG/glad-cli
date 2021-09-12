with AAA.Strings;
private with GNAT.Strings;

package Commands.Init is

  type Command is new Commands.Command with private;

  overriding function Name (Cmd : Command) return CLIC.Subcommand.Identifier is
   ("init");

  overriding procedure Execute
   (Cmd : in out Command; Args : AAA.Strings.Vector);

  overriding function Long_Description
   (Cmd : Command) return AAA.Strings.Vector is
   (AAA.Strings.Empty_Vector.Append
     ("Initializes a new project in the current folder.")
     .New_Line
     );

  overriding procedure Setup_Switches
   (Cmd    : in out Command;
    Config : in out CLIC.Subcommand.Switches_Configuration);

  overriding function Short_Description (Cmd : Command) return String is
   ("Initializes a new project in the current folder.");

  overriding function Usage_Custom_Parameters (Cmd : Command) return String is
   ("[-dry-run]");

private

  type Command is new Commands.Command with record
    Dry_Run : aliased Boolean := False;
  end record;

end Commands.Init;