model inverting_opamp
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1)  annotation(
    Placement(visible = true, transformation(origin = {-90, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage annotation(
    Placement(visible = true, transformation(origin = {-130, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-70, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-70, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(R1.n, opAmp.in_n) annotation(
    Line(points = {{-60, 16}, {-40, 16}, {-40, 16}, {-40, 16}}, color = {0, 0, 255}));
  connect(R2.p, opAmp.in_n) annotation(
    Line(points = {{-40, 40}, {-50, 40}, {-50, 16}, {-40, 16}, {-40, 16}}, color = {0, 0, 255}));
  connect(R2.n, opAmp.out) annotation(
    Line(points = {{-20, 40}, {-10, 40}, {-10, 10}, {-20, 10}, {-20, 10}}, color = {0, 0, 255}));
  connect(R1.p, stepVoltage.p) annotation(
    Line(points = {{-80, 16}, {-90, 16}, {-90, 0}, {-90, 0}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_p, opAmp.s_p) annotation(
    Line(points = {{-130, 20}, {-130, 20}, {-130, 60}, {-30, 60}, {-30, 20}, {-30, 20}}, color = {0, 0, 255}));
  connect(voltageSensor.p, opAmp.out) annotation(
    Line(points = {{0, 10}, {-20, 10}, {-20, 10}, {-20, 10}}, color = {0, 0, 255}));
  connect(opAmp.in_p, ground.p) annotation(
    Line(points = {{-40, 4}, {-70, 4}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_n, ground.p) annotation(
    Line(points = {{-130, 0}, {-130, 0}, {-130, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(opAmp.s_n, ground.p) annotation(
    Line(points = {{-30, 0}, {-30, 0}, {-30, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-90, -20}, {-90, -20}, {-90, -40}, {-70, -40}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{20, 10}, {30, 10}, {30, -40}, {-70, -40}, {-70, -60}, {-70, -60}, {-70, -60}}, color = {0, 0, 255}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end inverting_opamp;
