model control_sample
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1, 1, 1}, b = {1})  annotation(
    Placement(visible = true, transformation(origin = {50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.PID pid(k = 100)  annotation(
    Placement(visible = true, transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pid.y, transferFunction.u) annotation(
    Line(points = {{21, 10}, {38, 10}}, color = {0, 0, 127}));
  connect(transferFunction.y, feedback.u2) annotation(
    Line(points = {{61, 10}, {80, 10}, {80, -20}, {-30, -20}, {-30, 2}}, color = {0, 0, 127}));
  connect(feedback.y, pid.u) annotation(
    Line(points = {{-21, 10}, {-2, 10}}, color = {0, 0, 127}));
  connect(step.y, feedback.u1) annotation(
    Line(points = {{-58, 10}, {-38, 10}, {-38, 10}, {-38, 10}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "3.2.3")));
end control_sample;
