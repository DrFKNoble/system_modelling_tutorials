model control_sample_4
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-110, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C2(C = 1e-6)  annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {10, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {50, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp annotation(
    Placement(visible = true, transformation(origin = {-50, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp1 annotation(
    Placement(visible = true, transformation(origin = {50, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1)  annotation(
    Placement(visible = true, transformation(origin = {-130, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage annotation(
    Placement(visible = true, transformation(origin = {-170, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {90, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-50, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(stepVoltage.p, R1.p) annotation(
    Line(points = {{-130, 2}, {-130, 20}, {-120, 20}}, color = {0, 0, 255}));
  connect(R1.n, opAmp.in_n) annotation(
    Line(points = {{-100, 20}, {-60, 20}, {-60, 20}, {-60, 20}}, color = {0, 0, 255}));
  connect(R2.p, opAmp.in_n) annotation(
    Line(points = {{-80, 50}, {-88, 50}, {-88, 20}, {-60, 20}, {-60, 20}}, color = {0, 0, 255}));
  connect(R2.n, C2.p) annotation(
    Line(points = {{-60, 50}, {-40, 50}, {-40, 50}, {-40, 50}}, color = {0, 0, 255}));
  connect(C2.n, opAmp.out) annotation(
    Line(points = {{-20, 50}, {-10, 50}, {-10, 14}, {-40, 14}, {-40, 14}}, color = {0, 0, 255}));
  connect(R3.p, opAmp.out) annotation(
    Line(points = {{0, 14}, {-42, 14}, {-42, 14}, {-40, 14}, {-40, 14}}, color = {0, 0, 255}));
  connect(R3.n, opAmp1.in_n) annotation(
    Line(points = {{20, 14}, {40, 14}, {40, 14}, {40, 14}}, color = {0, 0, 255}));
  connect(R4.p, opAmp1.in_n) annotation(
    Line(points = {{40, 40}, {30, 40}, {30, 14}, {40, 14}, {40, 14}}, color = {0, 0, 255}));
  connect(R4.n, opAmp1.out) annotation(
    Line(points = {{60, 40}, {70, 40}, {70, 8}, {60, 8}, {60, 8}, {60, 8}}, color = {0, 0, 255}));
  connect(voltageSensor.p, opAmp1.out) annotation(
    Line(points = {{80, 8}, {60, 8}, {60, 8}, {60, 8}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_p, opAmp.s_p) annotation(
    Line(points = {{-170, 20}, {-170, 68}, {-50, 68}, {-50, 24}}, color = {0, 0, 255}));
  connect(opAmp1.s_p, supplyVoltage.pin_p) annotation(
    Line(points = {{50, 18}, {50, 68}, {-170, 68}, {-170, 20}}, color = {0, 0, 255}));
  connect(opAmp.s_n, ground.p) annotation(
    Line(points = {{-50, 4}, {-50, 4}, {-50, -40}, {-50, -40}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_n, ground.p) annotation(
    Line(points = {{-170, 0}, {-170, -30}, {-50, -30}, {-50, -40}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-130, -18}, {-130, -18}, {-130, -30}, {-50, -30}, {-50, -40}, {-50, -40}, {-50, -40}}, color = {0, 0, 255}));
  connect(opAmp1.s_n, ground.p) annotation(
    Line(points = {{50, -2}, {50, -2}, {50, -30}, {-50, -30}, {-50, -40}, {-50, -40}}, color = {0, 0, 255}));
  connect(opAmp.in_p, ground.p) annotation(
    Line(points = {{-60, 8}, {-70, 8}, {-70, -30}, {-50, -30}, {-50, -40}, {-50, -40}}, color = {0, 0, 255}));
  connect(opAmp1.in_p, ground.p) annotation(
    Line(points = {{40, 2}, {30, 2}, {30, -30}, {-50, -30}, {-50, -40}, {-50, -40}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{100, 8}, {110, 8}, {110, -30}, {-50, -30}, {-50, -40}, {-50, -40}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end control_sample_4;
