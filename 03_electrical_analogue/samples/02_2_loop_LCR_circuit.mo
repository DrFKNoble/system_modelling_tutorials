model analogue_sample_2
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1)  annotation(
    Placement(visible = true, transformation(origin = {-60, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1)  annotation(
    Placement(visible = true, transformation(origin = {-180, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 1)  annotation(
    Placement(visible = true, transformation(origin = {80, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-100, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {40, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1)  annotation(
    Placement(visible = true, transformation(origin = {-140, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1)  annotation(
    Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 1)  annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {-100, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor1 annotation(
    Placement(visible = true, transformation(origin = {40, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {50, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 4, 7, 8, 4}, b = {2, 0})  annotation(
    Placement(visible = true, transformation(origin = {90, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(stepVoltage.p, inductor.p) annotation(
    Line(points = {{-180, 20}, {-180, 30}, {-150, 30}}, color = {0, 0, 255}));
  connect(inductor.n, capacitor.p) annotation(
    Line(points = {{-130, 30}, {-110, 30}}, color = {0, 0, 255}));
  connect(capacitor.n, resistor1.p) annotation(
    Line(points = {{-90, 30}, {-70, 30}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(
    Line(points = {{-50, 30}, {-10, 30}}, color = {0, 0, 255}));
  connect(inductor1.n, capacitor1.p) annotation(
    Line(points = {{10, 30}, {30, 30}}, color = {0, 0, 255}));
  connect(capacitor1.n, resistor3.p) annotation(
    Line(points = {{50, 30}, {70, 30}}, color = {0, 0, 255}));
  connect(resistor3.n, ground.p) annotation(
    Line(points = {{90, 30}, {110, 30}, {110, -20}, {-30, -20}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-180, 0}, {-180, -20}, {-30, -20}}, color = {0, 0, 255}));
  connect(resistor2.p, resistor1.n) annotation(
    Line(points = {{-30, 20}, {-30, 30}, {-50, 30}}, color = {0, 0, 255}));
  connect(resistor2.n, ground.p) annotation(
    Line(points = {{-30, 0}, {-30, -20}, {-30, -20}}, color = {0, 0, 255}));
  connect(voltageSensor.p, capacitor.p) annotation(
    Line(points = {{-110, 70}, {-110, 30}}, color = {0, 0, 255}));
  connect(voltageSensor.n, capacitor.n) annotation(
    Line(points = {{-90, 70}, {-90, 30}}, color = {0, 0, 255}));
  connect(voltageSensor1.p, capacitor1.p) annotation(
    Line(points = {{30, 70}, {30, 30}}, color = {0, 0, 255}));
  connect(voltageSensor1.n, capacitor1.n) annotation(
    Line(points = {{50, 70}, {50, 30}}, color = {0, 0, 255}));
  connect(step.y, transferFunction.u) annotation(
    Line(points = {{62, -50}, {76, -50}, {76, -50}, {78, -50}}, color = {0, 0, 127}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end analogue_sample_2;
