model mechanics_sample
  Modelica.Mechanics.Translational.Components.Mass mass(m = 1, s(fixed = true), v(fixed = true))  annotation(
    Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass1(m = 1, s(fixed = true), v(fixed = true))  annotation(
    Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-170, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 2)  annotation(
    Placement(visible = true, transformation(origin = {-130, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Damper damper(d = 1)  annotation(
    Placement(visible = true, transformation(origin = {-130, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring1(c = 2)  annotation(
    Placement(visible = true, transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor annotation(
    Placement(visible = true, transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(
    Placement(visible = true, transformation(origin = {-30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor1 annotation(
    Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {1.0, 1.0, 6.0, 2.0, 4.0}, b = {1.0, 1.0, 4.0}) annotation(
    Placement(visible = true, transformation(origin = {130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step2 annotation(
    Placement(visible = true, transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(step.y, force.f) annotation(
    Line(points = {{-59, 30}, {-42, 30}}, color = {0, 0, 127}));
  connect(force.flange, mass1.flange_b) annotation(
    Line(points = {{-20, 30}, {0, 30}, {0, 0}}, color = {0, 127, 0}));
  connect(damper.flange_a, fixed.flange) annotation(
    Line(points = {{-140, 10}, {-170, 10}, {-170, -30}}, color = {0, 127, 0}));
  connect(spring.flange_a, fixed.flange) annotation(
    Line(points = {{-140, -10}, {-170, -10}, {-170, -30}}, color = {0, 127, 0}));
  connect(damper.flange_b, mass.flange_a) annotation(
    Line(points = {{-120, 10}, {-100, 10}, {-100, 0}}, color = {0, 127, 0}));
  connect(spring.flange_b, mass.flange_a) annotation(
    Line(points = {{-120, -10}, {-100, -10}, {-100, 0}}, color = {0, 127, 0}));
  connect(mass.flange_b, spring1.flange_a) annotation(
    Line(points = {{-80, 0}, {-60, 0}}, color = {0, 127, 0}));
  connect(spring1.flange_b, mass1.flange_a) annotation(
    Line(points = {{-40, 0}, {-20, 0}}, color = {0, 127, 0}));
  connect(positionSensor1.flange, mass1.flange_b) annotation(
    Line(points = {{20, 0}, {0, 0}, {0, 0}, {0, 0}}, color = {0, 127, 0}));
  connect(positionSensor.flange, mass.flange_b) annotation(
    Line(points = {{-60, -30}, {-70, -30}, {-70, 0}, {-80, 0}, {-80, 0}}, color = {0, 127, 0}));
  connect(step2.y, transferFunction1.u) annotation(
    Line(points = {{101, 0}, {118, 0}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end mechanics_sample;
