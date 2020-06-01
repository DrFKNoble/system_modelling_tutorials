model mechanics_sample
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {-60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-140, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 1)  annotation(
    Placement(visible = true, transformation(origin = {-60, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1, phi_rel(fixed = true))  annotation(
    Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring(c = 2)  annotation(
    Placement(visible = true, transformation(origin = {-100, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {-18, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg to_deg annotation(
    Placement(visible = true, transformation(origin = {20, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1 annotation(
    Placement(visible = true, transformation(origin = {70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 1, 2}, b = {1})  annotation(
    Placement(visible = true, transformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(damper.flange_a, fixed.flange) annotation(
    Line(points = {{-110, 0}, {-140, 0}, {-140, -40}}));
  connect(spring.flange_a, fixed.flange) annotation(
    Line(points = {{-110, -20}, {-140, -20}, {-140, -40}}));
  connect(spring.flange_b, inertia.flange_a) annotation(
    Line(points = {{-90, -20}, {-70, -20}, {-70, -10}}));
  connect(damper.flange_b, inertia.flange_a) annotation(
    Line(points = {{-90, 0}, {-70, 0}, {-70, -10}}));
  connect(inertia.flange_b, angleSensor.flange) annotation(
    Line(points = {{-50, -10}, {-28, -10}}));
  connect(torque.support, inertia.flange_a) annotation(
    Line(points = {{-60, 30}, {-70, 30}, {-70, -10}}));
  connect(torque.flange, inertia.flange_b) annotation(
    Line(points = {{-50, 40}, {-50, -10}}));
  connect(step.y, torque.tau) annotation(
    Line(points = {{-89, 40}, {-72, 40}}, color = {0, 0, 127}));
  connect(angleSensor.phi, to_deg.u) annotation(
    Line(points = {{-7, -10}, {8, -10}}, color = {0, 0, 127}));
  connect(step1.y, transferFunction.u) annotation(
    Line(points = {{82, -10}, {96, -10}, {96, -10}, {98, -10}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end mechanics_sample;
