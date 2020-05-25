model mechanics_sample
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 1, phi(fixed = true, start = 0), w(fixed = true, start = 0))  annotation(
    Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring(c = 1)  annotation(
    Placement(visible = true, transformation(origin = {-70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1)  annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring1(c = 1)  annotation(
    Placement(visible = true, transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 1, phi(fixed = true, start = 0), w(fixed = true, start = 0))  annotation(
    Placement(visible = true, transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg to_deg annotation(
    Placement(visible = true, transformation(origin = {130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixed.flange, damper.flange_a) annotation(
    Line(points = {{-110, -30}, {-110, -30}, {-110, 10}, {-80, 10}, {-80, 10}}));
  connect(spring.flange_a, fixed.flange) annotation(
    Line(points = {{-80, -10}, {-110, -10}, {-110, -30}, {-110, -30}}));
  connect(damper.flange_b, inertia.flange_a) annotation(
    Line(points = {{-60, 10}, {-40, 10}, {-40, 0}, {-40, 0}}));
  connect(spring.flange_b, inertia.flange_a) annotation(
    Line(points = {{-60, -10}, {-40, -10}, {-40, 0}, {-40, 0}}));
  connect(inertia.flange_b, spring1.flange_a) annotation(
    Line(points = {{-20, 0}, {-2, 0}, {-2, 0}, {0, 0}}));
  connect(spring1.flange_b, inertia1.flange_a) annotation(
    Line(points = {{20, 0}, {40, 0}, {40, 0}, {40, 0}}));
  connect(torque.support, inertia1.flange_a) annotation(
    Line(points = {{50, 20}, {40, 20}, {40, 0}, {40, 0}}));
  connect(torque.flange, inertia1.flange_b) annotation(
    Line(points = {{60, 30}, {60, 30}, {60, 0}, {60, 0}}));
  connect(angleSensor.flange, inertia1.flange_b) annotation(
    Line(points = {{80, 0}, {60, 0}, {60, 0}, {60, 0}}));
  connect(step.y, torque.tau) annotation(
    Line(points = {{22, 30}, {36, 30}, {36, 30}, {38, 30}}, color = {0, 0, 127}));
  connect(angleSensor.phi, to_deg.u) annotation(
    Line(points = {{102, 0}, {116, 0}, {116, 0}, {118, 0}}, color = {0, 0, 127}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end mechanics_sample;
