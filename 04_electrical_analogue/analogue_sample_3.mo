model analogue_sample_3
  Modelica.Electrical.Analog.Basic.OpAmp opAmp(Slope = 10e3)  annotation(
    Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-100, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage annotation(
    Placement(visible = true, transformation(origin = {-100, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1)  annotation(
    Placement(visible = true, transformation(origin = {-40, -30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-20, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {58, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(supplyVoltage.pin_n, ground.p) annotation(
    Line(points = {{-100, 0}, {-100, -60}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-40, -40}, {-40, -50}, {-100, -50}, {-100, -60}}, color = {0, 0, 255}));
  connect(stepVoltage.p, opAmp.in_p) annotation(
    Line(points = {{-40, -20}, {-40, -6}, {-10, -6}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_p, opAmp.VMax) annotation(
    Line(points = {{-100, 20}, {-100, 60}, {0, 60}, {0, 10}}, color = {0, 0, 255}));
  connect(resistor.n, ground.p) annotation(
    Line(points = {{-70, -40}, {-70, -50}, {-100, -50}, {-100, -60}}, color = {0, 0, 255}));
  connect(opAmp.out, resistor1.n) annotation(
    Line(points = {{10, 0}, {30, 0}, {30, 30}, {-10, 30}}, color = {0, 0, 255}));
  connect(resistor1.p, resistor.p) annotation(
    Line(points = {{-30, 30}, {-70, 30}, {-70, -20}}, color = {0, 0, 255}));
  connect(opAmp.in_n, resistor.p) annotation(
    Line(points = {{-10, 6}, {-70, 6}, {-70, -20}}, color = {0, 0, 255}));
  connect(voltageSensor.p, opAmp.out) annotation(
    Line(points = {{48, 0}, {10, 0}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{68, 0}, {90, 0}, {90, -50}, {-100, -50}, {-100, -60}}, color = {0, 0, 255}));
  connect(opAmp.VMin, ground.p) annotation(
    Line(points = {{0, -10}, {0, -10}, {0, -50}, {-100, -50}, {-100, -60}, {-100, -60}}, color = {0, 0, 255}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end analogue_sample_3;
