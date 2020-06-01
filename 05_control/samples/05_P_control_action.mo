model control_sample_1
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-90, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-50, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {30, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage annotation(
    Placement(visible = true, transformation(origin = {-170, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-70, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1)  annotation(
    Placement(visible = true, transformation(origin = {-110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {70, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp(strict = true)  annotation(
    Placement(visible = true, transformation(origin = {-50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp1 annotation(
    Placement(visible = true, transformation(origin = {32, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(R2.n, R3.p) annotation(
    Line(points = {{-40, 40}, {-30, 40}, {-30, 10}, {-20, 10}, {-20, 10}}, color = {0, 0, 255}));
  connect(ground.p, supplyVoltage.pin_n) annotation(
    Line(points = {{-70, -60}, {-70, -60}, {-70, -40}, {-170, -40}, {-170, 0}, {-170, 0}}, color = {0, 0, 255}));
  connect(R1.p, stepVoltage.p) annotation(
    Line(points = {{-100, 16}, {-110, 16}, {-110, 0}, {-110, 0}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-110, -20}, {-110, -20}, {-110, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{80, 4}, {90, 4}, {90, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(opAmp1.s_n, ground.p) annotation(
    Line(points = {{32, -6}, {32, -40}, {-70, -40}, {-70, -60}}, color = {0, 0, 255}));
  connect(R3.n, opAmp1.in_n) annotation(
    Line(points = {{0, 10}, {22, 10}, {22, 10}, {22, 10}}, color = {0, 0, 255}));
  connect(R1.n, opAmp.in_n) annotation(
    Line(points = {{-80, 16}, {-60, 16}}, color = {0, 0, 255}));
  connect(opAmp.s_p, supplyVoltage.pin_p) annotation(
    Line(points = {{-50, 20}, {-50, 60}, {-170, 60}, {-170, 20}}, color = {0, 0, 255}));
  connect(opAmp1.s_p, supplyVoltage.pin_p) annotation(
    Line(points = {{32, 14}, {32, 14}, {32, 60}, {-170, 60}, {-170, 20}, {-170, 20}}, color = {0, 0, 255}));
  connect(opAmp.s_n, ground.p) annotation(
    Line(points = {{-50, 0}, {-50, -40}, {-70, -40}, {-70, -60}}, color = {0, 0, 255}));
  connect(opAmp1.in_p, ground.p) annotation(
    Line(points = {{22, -2}, {10, -2}, {10, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(opAmp.in_p, ground.p) annotation(
    Line(points = {{-60, 4}, {-70, 4}, {-70, -60}}, color = {0, 0, 255}));
  connect(opAmp1.out, voltageSensor.p) annotation(
    Line(points = {{42, 4}, {60, 4}, {60, 4}, {60, 4}}, color = {0, 0, 255}));
  connect(opAmp.out, R3.p) annotation(
    Line(points = {{-40, 10}, {-20, 10}}, color = {0, 0, 255}));
  connect(R2.p, opAmp.in_n) annotation(
    Line(points = {{-60, 40}, {-70, 40}, {-70, 16}, {-60, 16}}, color = {0, 0, 255}));
  connect(R4.n, opAmp1.out) annotation(
    Line(points = {{40, 34}, {50, 34}, {50, 4}, {42, 4}, {42, 4}}, color = {0, 0, 255}));
  connect(R4.p, opAmp1.in_n) annotation(
    Line(points = {{20, 34}, {10, 34}, {10, 10}, {22, 10}, {22, 10}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end control_sample_1;
