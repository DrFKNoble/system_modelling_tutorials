model control_sample_5
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-50, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-140, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C1(C = 1e-6)  annotation(
    Placement(visible = true, transformation(origin = {-140, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited opAmp annotation(
    Placement(visible = true, transformation(origin = {-70, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited opAmp1 annotation(
    Placement(visible = true, transformation(origin = { 10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-92, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C2(C = 1e-6)  annotation(
    Placement(visible = true, transformation(origin = {-62, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-30, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {10, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1)  annotation(
    Placement(visible = true, transformation(origin = {-160, -38}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage annotation(
    Placement(visible = true, transformation(origin = {-180, -18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(opAmp.out, R3.p) annotation(
    Line(points = {{-60, -24}, {-40, -24}}, color = {0, 0, 255}));
  connect(R3.n, opAmp1.in_n) annotation(
    Line(points = {{-20, -24}, {0, -24}}, color = {0, 0, 255}));
  connect(opAmp1.out, R4.n) annotation(
    Line(points = {{20, -30}, {30, -30}, {30, 2}, {20, 2}}, color = {0, 0, 255}));
  connect(R4.p, opAmp1.in_n) annotation(
    Line(points = {{0, 2}, {-10, 2}, {-10, -24}, {0, -24}}, color = {0, 0, 255}));
  connect(ground.p, opAmp1.VMin) annotation(
    Line(points = {{-50, -70}, {-50, -60}, {10, -60}, {10, -40}}, color = {0, 0, 255}));
  connect(opAmp1.in_p, ground.p) annotation(
    Line(points = {{0, -36}, {-10, -36}, {-10, -60}, {-50, -60}, {-50, -70}}, color = {0, 0, 255}));
  connect(opAmp.VMin, ground.p) annotation(
    Line(points = {{-70, -34}, {-70, -60}, {-50, -60}, {-50, -70}}, color = {0, 0, 255}));
  connect(R2.n, C2.p) annotation(
    Line(points = {{-82, 12}, {-72, 12}}, color = {0, 0, 255}));
  connect(C2.n, R3.p) annotation(
    Line(points = {{-52, 12}, {-46, 12}, {-46, -24}, {-40, -24}}, color = {0, 0, 255}));
  connect(opAmp.in_n, R2.p) annotation(
    Line(points = {{-80, -18}, {-108, -18}, {-108, 12}, {-102, 12}}, color = {0, 0, 255}));
  connect(C1.n, opAmp.in_n) annotation(
    Line(points = {{-130, 2}, {-120, 2}, {-120, -18}, {-80, -18}}, color = {0, 0, 255}));
  connect(R1.n, opAmp.in_n) annotation(
    Line(points = {{-130, -18}, {-80, -18}}, color = {0, 0, 255}));
  connect(R1.p, C1.p) annotation(
    Line(points = {{-150, -18}, {-160, -18}, {-160, 2}, {-150, 2}}, color = {0, 0, 255}));
  connect(opAmp.in_p, ground.p) annotation(
    Line(points = {{-80, -30}, {-88, -30}, {-88, -60}, {-50, -60}, {-50, -70}}, color = {0, 0, 255}));
  connect(voltageSensor.p, opAmp1.out) annotation(
    Line(points = {{40, -30}, {20, -30}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{60, -30}, {70, -30}, {70, -60}, {-50, -60}, {-50, -70}}, color = {0, 0, 255}));
  connect(stepVoltage.p, R1.p) annotation(
    Line(points = {{-160, -28}, {-160, -18}, {-150, -18}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_p, opAmp1.VMax) annotation(
    Line(points = {{-180, -8}, {-180, 32}, {10, 32}, {10, -20}}, color = {0, 0, 255}));
  connect(opAmp.VMax, supplyVoltage.pin_p) annotation(
    Line(points = {{-70, -14}, {-70, 32}, {-180, 32}, {-180, -8}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_n, ground.p) annotation(
    Line(points = {{-180, -28}, {-180, -60}, {-50, -60}, {-50, -70}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-160, -48}, {-160, -60}, {-50, -60}, {-50, -70}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end control_sample_5;
