{
  inputs.hive.url = "github:divnix/hive";
  inputs.incl.url = "github:divnix/incl";
  
  outputs = {
    hive,
    incl,
    self,
    ...
  } @ inputs:
    hive.growOn {
      inherit inputs;

      cellsFrom = incl ./cells ["cell10"];
      cellBlocks = with hive.blockTypes; [
        diskoConfigurations
      ];
    }
    {diskoConfigurations = hive.collect self "diskoConfigurations";};
}
