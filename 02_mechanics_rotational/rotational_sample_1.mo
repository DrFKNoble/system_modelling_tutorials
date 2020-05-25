model mechanics_sample
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 1)  annotation(
    Placement(visible = true, transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1, phi_rel(fixed = true))  annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring(c = 1)  annotation(
    Placement(visible = true, transformation(origin = {-30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {52, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg to_deg annotation(
    Placement(visible = true, transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(damper.flange_a, fixed.flange) annotation(
    Line(points = {{-40, 10}, {-70, 10}, {-70, -30}, {-70, -30}}));
  connect(spring.flange_a, fixed.flange) annotation(
    Line(points = {{-40, -10}, {-70, -10}, {-70, -30}, {-70, -30}}));
  connect(spring.flange_b, inertia.flange_a) annotation(
    Line(points = {{-20, -10}, {0, -10}, {0, 0}, {0, 0}}));
  connect(damper.flange_b, inertia.flange_a) annotation(
    Line(points = {{-20, 10}, {0, 10}, {0, 0}, {0, 0}}));
  connect(inertia.flange_b, angleSensor.flange) annotation(
    Line(points = {{20, 0}, {42, 0}, {42, 0}, {42, 0}}));
  connect(torque.support, inertia.flange_a) annotation(
    Line(points = {{10, 40}, {0, 40}, {0, 0}}));
  connect(torque.flange, inertia.flange_b) annotation(
    Line(points = {{20, 50}, {20, 0}}));
  connect(step.y, torque.tau) annotation(
    Line(points = {{-18, 50}, {-2, 50}, {-2, 50}, {-2, 50}}, color = {0, 0, 127}));
  connect(angleSensor.phi, to_deg.u) annotation(
    Line(points = {{64, 0}, {78, 0}, {78, 0}, {78, 0}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end mechanics_sample;
