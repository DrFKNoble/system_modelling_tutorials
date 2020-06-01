model ziegler_1
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 2, 1}, b = {1})  annotation(
    Placement(visible = true, transformation(origin = {-30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Derivative derivative annotation(
    Placement(visible = true, transformation(origin = { 10,30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Derivative derivative1 annotation(
    Placement(visible = true, transformation(origin = {50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {-30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.PID pid(Td = 0.5 * 0.25, Ti = 2 * 0.25, k = 1.2 * 2.75 / 0.25)  annotation(
    Placement(visible = true, transformation(origin = {10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {1, 2, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1 annotation(
    Placement(visible = true, transformation(origin = {-70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(step.y, transferFunction.u) annotation(
    Line(points = {{-59, 30}, {-42, 30}}, color = {0, 0, 127}));
  connect(derivative.u, transferFunction.y) annotation(
    Line(points = {{-2, 30}, {-19, 30}}, color = {0, 0, 127}));
  connect(derivative1.u, derivative.y) annotation(
    Line(points = {{38, 30}, {21, 30}}, color = {0, 0, 127}));
  connect(step1.y, feedback.u1) annotation(
    Line(points = {{-58, -30}, {-38, -30}, {-38, -30}, {-38, -30}}, color = {0, 0, 127}));
  connect(feedback.y, pid.u) annotation(
    Line(points = {{-20, -30}, {-4, -30}, {-4, -30}, {-2, -30}}, color = {0, 0, 127}));
  connect(pid.y, transferFunction1.u) annotation(
    Line(points = {{22, -30}, {38, -30}, {38, -30}, {38, -30}}, color = {0, 0, 127}));
  connect(transferFunction1.y, feedback.u2) annotation(
    Line(points = {{62, -30}, {70, -30}, {70, -54}, {-30, -54}, {-30, -38}, {-30, -38}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "3.2.3")));
end ziegler_1;
