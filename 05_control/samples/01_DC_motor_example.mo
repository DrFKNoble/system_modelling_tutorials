model control_example_1
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1.2)  annotation(
    Placement(visible = true, transformation(origin = {-50, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 0.02)  annotation(
    Placement(visible = true, transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.EMF emf(k = 0.06)  annotation(
    Placement(visible = true, transformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed1 annotation(
    Placement(visible = true, transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-70, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper motor_d(d = 1e-4) annotation(
    Placement(visible = true, transformation(origin = {20, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia motor_j(J = 6.2e-4) annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step(height = 90)  annotation(
    Placement(visible = true, transformation(origin = {-150, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {0.003335, 0.2015, 1.0}, b = {16.13})  annotation(
    Placement(visible = true, transformation(origin = {168, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1(height = 90) annotation(
    Placement(visible = true, transformation(origin = {130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(
    Placement(visible = true, transformation(origin = {90, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(resistor.n, emf.p) annotation(
    Line(points = {{-40, 20}, {-20, 20}, {-20, 10}}, color = {0, 0, 255}));
  connect(inductor.n, resistor.p) annotation(
    Line(points = {{-80, 20}, {-60, 20}}, color = {0, 0, 255}));
  connect(ground.p, signalVoltage.n) annotation(
    Line(points = {{-70, -30}, {-70, -20}, {-110, -20}, {-110, -10}}, color = {0, 0, 255}));
  connect(signalVoltage.n, emf.n) annotation(
    Line(points = {{-110, -10}, {-110, -20}, {-20, -20}, {-20, -10}}, color = {0, 0, 255}));
  connect(inductor.p, signalVoltage.p) annotation(
    Line(points = {{-100, 20}, {-110, 20}, {-110, 10}}, color = {0, 0, 255}));
  connect(motor_j.flange_a, emf.flange) annotation(
    Line(points = {{10, 0}, {-10, 0}}));
  connect(motor_d.flange_b, motor_j.flange_b) annotation(
    Line(points = {{30, -20}, {40, -20}, {40, 0}, {30, 0}}));
  connect(motor_d.flange_a, fixed1.flange) annotation(
    Line(points = {{10, -20}, {0, -20}, {0, -40}}));
  connect(step.y, signalVoltage.v) annotation(
    Line(points = {{-139, 0}, {-122, 0}}, color = {0, 0, 127}));
  connect(step1.y, transferFunction.u) annotation(
    Line(points = {{142, 0}, {156, 0}, {156, 0}, {156, 0}}, color = {0, 0, 127}));
  connect(speedSensor.flange, motor_j.flange_b) annotation(
    Line(points = {{80, -20}, {60, -20}, {60, 0}, {30, 0}, {30, 0}}));
  connect(angleSensor.flange, motor_j.flange_b) annotation(
    Line(points = {{80, 0}, {30, 0}, {30, 0}, {30, 0}}));
  connect(emf.support, fixed1.flange) annotation(
    Line(points = {{-30, 0}, {-40, 0}, {-40, -20}, {0, -20}, {0, -40}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end control_example_1;
