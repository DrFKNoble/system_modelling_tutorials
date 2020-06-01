model control_sample_2
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-108, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C2(C = 1e-6)  annotation(
    Placement(visible = true, transformation(origin = {-70, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted idealizedOpAmpLimted annotation(
    Placement(visible = true, transformation(origin = {10, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage annotation(
    Placement(visible = true, transformation(origin = {-130, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-70, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage annotation(
    Placement(visible = true, transformation(origin = {-170, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {50, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(idealizedOpAmpLimted.out, R4.n) annotation(
    Line(points = {{20, 4}, {30, 4}, {30, 38}, {30, 38}, {30, 40}, {20, 40}, {20, 40}}, color = {0, 0, 255}));
  connect(R4.p, idealizedOpAmpLimted.in_n) annotation(
    Line(points = {{0, 40}, {-10, 40}, {-10, 10}, {0, 10}, {0, 10}}, color = {0, 0, 255}));
  connect(R3.n, idealizedOpAmpLimted.in_n) annotation(
    Line(points = {{-20, 10}, {0, 10}}, color = {0, 0, 255}));
  connect(R3.p, opAmp.out) annotation(
    Line(points = {{-40, 10}, {-60, 10}, {-60, 10}, {-60, 10}}, color = {0, 0, 255}));
  connect(C2.n, opAmp.out) annotation(
    Line(points = {{-60, 40}, {-50, 40}, {-50, 10}, {-60, 10}, {-60, 10}}, color = {0, 0, 255}));
  connect(opAmp.in_n, R1.n) annotation(
    Line(points = {{-80, 16}, {-98, 16}, {-98, 16}, {-98, 16}, {-98, 16}}, color = {0, 0, 255}));
  connect(C2.p, opAmp.in_n) annotation(
    Line(points = {{-80, 40}, {-90, 40}, {-90, 16}, {-80, 16}, {-80, 16}}, color = {0, 0, 255}));
  connect(R1.p, stepVoltage.p) annotation(
    Line(points = {{-118, 16}, {-130, 16}, {-130, 0}, {-130, 0}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_p, opAmp.s_p) annotation(
    Line(points = {{-170, 20}, {-170, 20}, {-170, 60}, {-70, 60}, {-70, 20}, {-70, 20}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted.s_p, supplyVoltage.pin_p) annotation(
    Line(points = {{10, 14}, {10, 14}, {10, 60}, {-170, 60}, {-170, 20}, {-170, 20}}, color = {0, 0, 255}));
  connect(opAmp.s_n, ground.p) annotation(
    Line(points = {{-70, 0}, {-70, 0}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted.s_n, ground.p) annotation(
    Line(points = {{10, -6}, {10, -6}, {10, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-130, -20}, {-130, -20}, {-130, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_n, ground.p) annotation(
    Line(points = {{-170, 0}, {-170, 0}, {-170, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(voltageSensor.p, idealizedOpAmpLimted.out) annotation(
    Line(points = {{40, 4}, {20, 4}, {20, 4}, {20, 4}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{60, 4}, {70, 4}, {70, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(opAmp.in_p, ground.p) annotation(
    Line(points = {{-80, 4}, {-90, 4}, {-90, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted.in_p, ground.p) annotation(
    Line(points = {{0, -2}, {-10, -2}, {-10, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end control_sample_2;
