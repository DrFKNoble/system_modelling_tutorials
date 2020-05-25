model translational_sample
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 0, 3, 0,1}, b = {1})  annotation(
    Placement(visible = true, transformation(origin = {130, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-130, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 1)  annotation(
    Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 1)  annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring1(c = 1)  annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass1(m = 1)  annotation(
    Placement(visible = true, transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor annotation(
    Placement(visible = true, transformation(origin = {50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(
    Placement(visible = true, transformation(origin = {-90, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1 annotation(
    Placement(visible = true, transformation(origin = {-130, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(step.y, transferFunction.u) annotation(
    Line(points = {{101, 10}, {118, 10}}, color = {0, 0, 127}));
  connect(force.flange, mass.flange_b) annotation(
    Line(points = {{-80, 50}, {-60, 50}, {-60, 10}, {-60, 10}}, color = {0, 127, 0}));
  connect(spring.flange_a, fixed.flange) annotation(
    Line(points = {{-120, 10}, {-130, 10}, {-130, -10}, {-130, -10}}, color = {0, 127, 0}));
  connect(spring.flange_b, mass.flange_a) annotation(
    Line(points = {{-100, 10}, {-80, 10}, {-80, 10}, {-80, 10}}, color = {0, 127, 0}));
  connect(spring1.flange_a, mass.flange_b) annotation(
    Line(points = {{-40, 10}, {-60, 10}, {-60, 10}, {-60, 10}}, color = {0, 127, 0}));
  connect(mass1.flange_a, spring1.flange_b) annotation(
    Line(points = {{0, 10}, {-20, 10}, {-20, 10}, {-20, 10}}, color = {0, 127, 0}));
  connect(positionSensor.flange, mass1.flange_b) annotation(
    Line(points = {{40, 10}, {20, 10}, {20, 10}, {20, 10}}, color = {0, 127, 0}));
  connect(step1.y, force.f) annotation(
    Line(points = {{-118, 50}, {-102, 50}, {-102, 50}, {-102, 50}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "3.2.3")),
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "");
end translational_sample;
