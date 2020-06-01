model analogue_sample_1
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-90,-50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1)  annotation(
    Placement(visible = true, transformation(origin = {-50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1)  annotation(
    Placement(visible = true, transformation(origin = {-130, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {-90, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1)  annotation(
    Placement(visible = true, transformation(origin = {-168, -14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 1, 2}, b = {2})  annotation(
    Placement(visible = true, transformation(origin = {70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(voltageSensor.p, capacitor.p) annotation(
    Line(points = {{-100, 50}, {-100, 10}}, color = {0, 0, 255}));
  connect(voltageSensor.n, capacitor.n) annotation(
    Line(points = {{-80, 50}, {-80, 10}}, color = {0, 0, 255}));
  connect(resistor.p, capacitor.n) annotation(
    Line(points = {{-60, 10}, {-80, 10}}, color = {0, 0, 255}));
  connect(inductor.n, capacitor.p) annotation(
    Line(points = {{-120, 10}, {-100, 10}}, color = {0, 0, 255}));
  connect(inductor.p, stepVoltage.p) annotation(
    Line(points = {{-140, 10}, {-168, 10}, {-168, -4}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-168, -24}, {-168, -40}, {-90, -40}}, color = {0, 0, 255}));
  connect(resistor.n, ground.p) annotation(
    Line(points = {{-40, 10}, {-20, 10}, {-20, -40}, {-90, -40}}, color = {0, 0, 255}));
  connect(step.y, transferFunction.u) annotation(
    Line(points = {{42, 10}, {58, 10}, {58, 10}, {58, 10}}, color = {0, 0, 127}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end analogue_sample_1;
