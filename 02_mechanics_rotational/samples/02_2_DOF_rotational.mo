model mechanics_sample
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-170, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 1, phi(fixed = true, start = 0), w(fixed = true, start = 0))  annotation(
    Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring(c = 2)  annotation(
    Placement(visible = true, transformation(origin = {-130, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1)  annotation(
    Placement(visible = true, transformation(origin = {-130, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring1(c = 2)  annotation(
    Placement(visible = true, transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 1, phi(fixed = true, start = 0), w(fixed = true, start = 0))  annotation(
    Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg to_deg annotation(
    Placement(visible = true, transformation(origin = {-10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {-10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1 annotation(
    Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 1, 6, 2, 4}, b = {1, 1, 4})  annotation(
    Placement(visible = true, transformation(origin = {150, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor1 annotation(
    Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.To_deg to_deg1 annotation(
    Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixed.flange, damper.flange_a) annotation(
    Line(points = {{-170, -30}, {-170, 10}, {-140, 10}}));
  connect(spring.flange_a, fixed.flange) annotation(
    Line(points = {{-140, -10}, {-170, -10}, {-170, -30}}));
  connect(damper.flange_b, inertia.flange_a) annotation(
    Line(points = {{-120, 10}, {-100, 10}, {-100, 0}}));
  connect(spring.flange_b, inertia.flange_a) annotation(
    Line(points = {{-120, -10}, {-100, -10}, {-100, 0}}));
  connect(inertia.flange_b, spring1.flange_a) annotation(
    Line(points = {{-80, 0}, {-60, 0}}));
  connect(spring1.flange_b, inertia1.flange_a) annotation(
    Line(points = {{-40, 0}, {-20, 0}}));
  connect(torque.support, inertia1.flange_a) annotation(
    Line(points = {{-10, 20}, {-20, 20}, {-20, 0}}));
  connect(torque.flange, inertia1.flange_b) annotation(
    Line(points = {{0, 30}, {0, 0}}));
  connect(step.y, torque.tau) annotation(
    Line(points = {{-39, 30}, {-22, 30}}, color = {0, 0, 127}));
  connect(step1.y, transferFunction.u) annotation(
    Line(points = {{122, 0}, {138, 0}, {138, 0}, {138, 0}}, color = {0, 0, 127}));
  connect(angleSensor.flange, inertia.flange_b) annotation(
    Line(points = {{-60, -30}, {-70, -30}, {-70, 0}, {-80, 0}, {-80, 0}}));
  connect(angleSensor.phi, to_deg.u) annotation(
    Line(points = {{-38, -30}, {-22, -30}, {-22, -30}, {-22, -30}}, color = {0, 0, 127}));
  connect(angleSensor1.phi, to_deg1.u) annotation(
    Line(points = {{41, 0}, {58, 0}}, color = {0, 0, 127}));
  connect(inertia1.flange_b, angleSensor1.flange) annotation(
    Line(points = {{0, 0}, {20, 0}, {20, 0}, {20, 0}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end mechanics_sample;
