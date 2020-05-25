model analogue_sample_2
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {0, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1)  annotation(
    Placement(visible = true, transformation(origin = {-30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage annotation(
    Placement(visible = true, transformation(origin = {-150, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1)  annotation(
    Placement(visible = true, transformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 1)  annotation(
    Placement(visible = true, transformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 1)  annotation(
    Placement(visible = true, transformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1)  annotation(
    Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1)  annotation(
    Placement(visible = true, transformation(origin = {30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 1)  annotation(
    Placement(visible = true, transformation(origin = {0, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor1 annotation(
    Placement(visible = true, transformation(origin = {70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(stepVoltage.p, inductor.p) annotation(
    Line(points = {{-150, 20}, {-150, 20}, {-150, 30}, {-120, 30}, {-120, 30}}, color = {0, 0, 255}));
  connect(inductor.n, capacitor.p) annotation(
    Line(points = {{-100, 30}, {-82, 30}, {-82, 30}, {-80, 30}}, color = {0, 0, 255}));
  connect(capacitor.n, resistor.p) annotation(
    Line(points = {{-60, 30}, {-40, 30}, {-40, 30}, {-40, 30}}, color = {0, 0, 255}));
  connect(resistor.n, inductor1.p) annotation(
    Line(points = {{-20, 30}, {20, 30}, {20, 30}, {20, 30}}, color = {0, 0, 255}));
  connect(inductor1.n, capacitor1.p) annotation(
    Line(points = {{40, 30}, {60, 30}, {60, 30}, {60, 30}}, color = {0, 0, 255}));
  connect(capacitor1.n, resistor1.p) annotation(
    Line(points = {{80, 30}, {100, 30}, {100, 30}, {100, 30}}, color = {0, 0, 255}));
  connect(resistor1.n, ground.p) annotation(
    Line(points = {{120, 30}, {140, 30}, {140, -20}, {0, -20}, {0, -20}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-150, 0}, {-150, 0}, {-150, -20}, {0, -20}, {0, -20}}, color = {0, 0, 255}));
  connect(resistor2.p, resistor.n) annotation(
    Line(points = {{0, 20}, {0, 20}, {0, 30}, {-20, 30}, {-20, 30}}, color = {0, 0, 255}));
  connect(resistor2.n, ground.p) annotation(
    Line(points = {{0, 0}, {0, 0}, {0, -20}, {0, -20}}, color = {0, 0, 255}));
  connect(voltageSensor.p, capacitor.p) annotation(
    Line(points = {{-80, 70}, {-80, 70}, {-80, 30}, {-80, 30}, {-80, 30}}, color = {0, 0, 255}));
  connect(voltageSensor.n, capacitor.n) annotation(
    Line(points = {{-60, 70}, {-60, 70}, {-60, 30}, {-60, 30}}, color = {0, 0, 255}));
  connect(voltageSensor1.p, capacitor1.p) annotation(
    Line(points = {{60, 70}, {60, 70}, {60, 30}, {60, 30}}, color = {0, 0, 255}));
  connect(voltageSensor1.n, capacitor1.n) annotation(
    Line(points = {{80, 70}, {80, 70}, {80, 30}, {80, 30}}, color = {0, 0, 255}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end analogue_sample_2;
