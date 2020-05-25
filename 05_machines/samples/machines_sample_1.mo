model machines_sample_1
  Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm annotation(
    Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 12)  annotation(
    Placement(visible = true, transformation(origin = {-60, -2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-30, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 700)  annotation(
    Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 800)  annotation(
    Placement(visible = true, transformation(origin = {70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {114, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear(ratio = 0.1)  annotation(
    Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(stepVoltage.p, dcpm.pin_ap) annotation(
    Line(points = {{-60, 8}, {-60, 8}, {-60, 40}, {-4, 40}, {-4, 10}, {-4, 10}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-60, -12}, {-60, -12}, {-60, -40}, {-30, -40}, {-30, -40}}, color = {0, 0, 255}));
  connect(dcpm.pin_an, ground.p) annotation(
    Line(points = {{-16, 10}, {-16, 10}, {-16, 20}, {-30, 20}, {-30, -40}, {-30, -40}}, color = {0, 0, 255}));
  connect(damper.flange_b, inertia.flange_b) annotation(
    Line(points = {{80, -30}, {90, -30}, {90, 0}, {80, 0}}));
  connect(angleSensor.flange, inertia.flange_b) annotation(
    Line(points = {{104, 0}, {80, 0}}));
  connect(dcpm.flange, idealGear.flange_a) annotation(
    Line(points = {{0, 0}, {22, 0}, {22, 0}, {20, 0}, {20, 0}}));
  connect(damper.flange_a, idealGear.support) annotation(
    Line(points = {{60, -30}, {30, -30}, {30, -10}, {30, -10}}));
  connect(inertia.flange_a, idealGear.flange_b) annotation(
    Line(points = {{60, 0}, {40, 0}, {40, 0}, {40, 0}}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end machines_sample_1;
