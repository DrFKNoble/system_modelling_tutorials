model analogue_sample_4
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 100) annotation(
    Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {40, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-50, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 2.5) annotation(
    Placement(visible = true, transformation(origin = {-60, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 5) annotation(
    Placement(visible = true, transformation(origin = { 0, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.EMF emf(k = 2, useSupport = true) annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-80, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1e-6) annotation(
    Placement(visible = true, transformation(origin = {-100, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear(ratio = 100 / 1000)  annotation(
    Placement(visible = true, transformation(origin = {40,10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 700) annotation(
    Placement(visible = true, transformation(origin = {80, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor1 annotation(
    Placement(visible = true, transformation(origin = {120, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 2)  annotation(
    Placement(visible = true, transformation(origin = {0, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper1(d = 800) annotation(
    Placement(visible = true, transformation(origin = {80, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(emf.flange, fixed.flange) annotation(
    Line(points = {{-40, 10}, {-50, 10}, {-50, -50}}));
  connect(ground.p, stepVoltage.n) annotation(
    Line(points = {{-80, -50}, {-80, -30}, {-130, -30}, {-130, -10}}, color = {0, 0, 255}));
  connect(emf.support, inertia.flange_a) annotation(
    Line(points = {{-20, 10}, {-10, 10}}));
  connect(stepVoltage.p, inductor.p) annotation(
    Line(points = {{-130, 10}, {-130, 30}, {-110, 30}}, color = {0, 0, 255}));
  connect(emf.p, ground.p) annotation(
    Line(points = {{-30, 0}, {-30, -30}, {-80, -30}, {-80, -50}}, color = {0, 0, 255}));
  connect(inductor.n, resistor.p) annotation(
    Line(points = {{-90, 30}, {-70, 30}}, color = {0, 0, 255}));
  connect(angleSensor.flange, inertia.flange_b) annotation(
    Line(points = {{30, 40}, {20, 40}, {20, 10}, {10, 10}}));
  connect(resistor.n, emf.n) annotation(
    Line(points = {{-50, 30}, {-30, 30}, {-30, 20}}, color = {0, 0, 255}));
  connect(idealGear.flange_a, inertia.flange_b) annotation(
    Line(points = {{30, 10}, {10, 10}}));
  connect(idealGear.flange_b, inertia1.flange_a) annotation(
    Line(points = {{50, 10}, {70, 10}}));
  connect(inertia1.flange_b, angleSensor1.flange) annotation(
    Line(points = {{90, 10}, {100, 10}, {100, 40}, {110, 40}}));
  connect(damper.flange_a, fixed.flange) annotation(
    Line(points = {{-10, -20}, {-50, -20}, {-50, -50}}));
  connect(damper.flange_b, inertia.flange_b) annotation(
    Line(points = {{10, -20}, {20, -20}, {20, 10}, {10, 10}}));
  connect(damper1.flange_b, inertia1.flange_b) annotation(
    Line(points = {{90, -20}, {100, -20}, {100, 10}, {90, 10}}));
  connect(damper1.flange_a, idealGear.support) annotation(
    Line(points = {{70, -20}, {40, -20}, {40, 0}}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "");
end analogue_sample_4;
