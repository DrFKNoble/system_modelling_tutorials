model analogue_sample_1
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {0,-50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor annotation(
    Placement(visible = true, transformation(origin = {40, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1)  annotation(
    Placement(visible = true, transformation(origin = {-40, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 1)  annotation(
    Placement(visible = true, transformation(origin = {0, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {0, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1)  annotation(
    Placement(visible = true, transformation(origin = {-78, -14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(voltageSensor.p, capacitor.p) annotation(
    Line(points = {{-10, 50}, {-10, 10}}, color = {0, 0, 255}));
  connect(voltageSensor.n, capacitor.n) annotation(
    Line(points = {{10, 50}, {10, 10}}, color = {0, 0, 255}));
  connect(resistor.p, capacitor.n) annotation(
    Line(points = {{30, 10}, {10, 10}}, color = {0, 0, 255}));
  connect(inductor.n, capacitor.p) annotation(
    Line(points = {{-30, 10}, {-10, 10}}, color = {0, 0, 255}));
  connect(inductor.p, stepVoltage.p) annotation(
    Line(points = {{-50, 10}, {-78, 10}, {-78, -4}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-78, -24}, {-78, -40}, {0, -40}}, color = {0, 0, 255}));
  connect(resistor.n, ground.p) annotation(
    Line(points = {{50, 10}, {70, 10}, {70, -40}, {0, -40}}, color = {0, 0, 255}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end analogue_sample_1;
