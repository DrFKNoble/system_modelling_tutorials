model control_sample_3
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-60, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C1(C = 1e-6)  annotation(
    Placement(visible = true, transformation(origin = {-120, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-60, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-20, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {20, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp annotation(
    Placement(visible = true, transformation(origin = {-60, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp1 annotation(
    Placement(visible = true, transformation(origin = {20, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage annotation(
    Placement(visible = true, transformation(origin = {-178, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage annotation(
    Placement(visible = true, transformation(origin = {-150, -20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {60, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(R1.p, C1.p) annotation(
    Line(points = {{-130, 0}, {-140, 0}, {-140, 20}, {-130, 20}}, color = {0, 0, 255}));
  connect(opAmp.in_n, R1.n) annotation(
    Line(points = {{-70, 0}, {-110, 0}}, color = {0, 0, 255}));
  connect(opAmp.out, R2.n) annotation(
    Line(points = {{-50, -6}, {-42, -6}, {-42, 30}, {-50, 30}}, color = {0, 0, 255}));
  connect(R2.p, opAmp.in_n) annotation(
    Line(points = {{-70, 30}, {-80, 30}, {-80, 0}, {-70, 0}}, color = {0, 0, 255}));
  connect(R3.p, opAmp.out) annotation(
    Line(points = {{-30, -6}, {-50, -6}}, color = {0, 0, 255}));
  connect(opAmp1.in_n, R3.n) annotation(
    Line(points = {{10, -6}, {-10, -6}}, color = {0, 0, 255}));
  connect(opAmp1.out, R4.n) annotation(
    Line(points = {{30, -12}, {40, -12}, {40, 20}, {30, 20}}, color = {0, 0, 255}));
  connect(R4.p, opAmp1.in_n) annotation(
    Line(points = {{10, 20}, {0, 20}, {0, -6}, {10, -6}}, color = {0, 0, 255}));
  connect(C1.n, opAmp.in_n) annotation(
    Line(points = {{-110, 20}, {-100, 20}, {-100, 0}, {-70, 0}}, color = {0, 0, 255}));
  connect(ground.p, opAmp.s_n) annotation(
    Line(points = {{-60, -50}, {-60, -16}}, color = {0, 0, 255}));
  connect(opAmp1.s_n, ground.p) annotation(
    Line(points = {{20, -22}, {20, -40}, {-60, -40}, {-60, -50}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_n, ground.p) annotation(
    Line(points = {{-178, -10}, {-178, -40}, {-60, -40}, {-60, -50}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_p, opAmp.s_p) annotation(
    Line(points = {{-178, 10}, {-178, 50}, {-60, 50}, {-60, 4}}, color = {0, 0, 255}));
  connect(opAmp1.s_p, supplyVoltage.pin_p) annotation(
    Line(points = {{20, -2}, {20, 50}, {-178, 50}, {-178, 10}}, color = {0, 0, 255}));
  connect(R1.p, stepVoltage.p) annotation(
    Line(points = {{-130, 0}, {-150, 0}, {-150, -10}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-150, -30}, {-150, -40}, {-60, -40}, {-60, -50}}, color = {0, 0, 255}));
  connect(voltageSensor.p, opAmp1.out) annotation(
    Line(points = {{50, -12}, {30, -12}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{70, -12}, {82, -12}, {82, -40}, {-60, -40}, {-60, -50}}, color = {0, 0, 255}));
  connect(opAmp.in_p, ground.p) annotation(
    Line(points = {{-70, -12}, {-80, -12}, {-80, -40}, {-60, -40}, {-60, -50}}, color = {0, 0, 255}));
  connect(opAmp1.in_p, ground.p) annotation(
    Line(points = {{10, -18}, {0, -18}, {0, -40}, {-60, -40}, {-60, -50}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end control_sample_3;
