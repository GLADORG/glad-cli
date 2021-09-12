with AAA.Strings; use AAA.Strings;
private with GNAT.Strings;

package Commands.Generate is

  type Command is new Commands.Command with private;

  overriding function Name (Cmd : Command) return CLIC.Subcommand.Identifier is
   ("generate");

  overriding procedure Execute
   (Cmd : in out Command; Args : AAA.Strings.Vector);

  overriding function Long_Description
   (Cmd : Command) return AAA.Strings.Vector;

  overriding procedure Setup_Switches
   (Cmd    : in out Command;
    Config : in out CLIC.Subcommand.Switches_Configuration);

  overriding function Short_Description (Cmd : Command) return String is
   ("Generates new code from blueprints.");

  overriding function Usage_Custom_Parameters (Cmd : Command) return String is
   ("[-dry-run] ");

private

  type Command is new Commands.Command with record
    Dry_Run : aliased Boolean := False;
  end record;

end Commands.Generate;