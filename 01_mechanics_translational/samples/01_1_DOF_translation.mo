model mechanics_sample
  Modelica.Mechanics.Translational.Components.Mass mass(m = 1, s(fixed = true), v(fixed = true))  annotation(
    Placement(visible = true, transformation(origin = {-70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-140, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 2)  annotation(
    Placement(visible = true, transformation(origin = {-110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Damper damper(d = 1)  annotation(
    Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(
    Placement(visible = true, transformation(origin = {-90, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-130, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor annotation(
    Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 1, 2}, b = {1})  annotation(
    Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1 annotation(
    Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixed.flange, damper.flange_a) annotation(
    Line(points = {{-140, -30}, {-140, 10}, {-120, 10}}, color = {0, 127, 0}));
  connect(spring.flange_a, fixed.flange) annotation(
    Line(points = {{-120, -10}, {-140, -10}, {-140, -30}}, color = {0, 127, 0}));
  connect(spring.flange_b, mass.flange_a) annotation(
    Line(points = {{-100, -10}, {-80, -10}, {-80, 0}}, color = {0, 127, 0}));
  connect(damper.flange_b, mass.flange_a) annotation(
    Line(points = {{-100, 10}, {-80, 10}, {-80, 0}}, color = {0, 127, 0}));
  connect(force.flange, mass.flange_b) annotation(
    Line(points = {{-80, 50}, {-60, 50}, {-60, 0}}, color = {0, 127, 0}));
  connect(step.y, force.f) annotation(
    Line(points = {{-119, 50}, {-102, 50}}, color = {0, 0, 127}));
  connect(positionSensor.flange, mass.flange_b) annotation(
    Line(points = {{-40, 0}, {-60, 0}}, color = {0, 127, 0}));
  connect(step1.y, transferFunction.u) annotation(
    Line(points = {{42, 0}, {58, 0}}, color = {0, 0, 127}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end mechanics_sample;
