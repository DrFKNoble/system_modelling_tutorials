model ziegler_1
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {1,  6, 5, 0}, b = {1})  annotation(
    Placement(visible = true, transformation(origin = {-30, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {1,  6, 5, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1 annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 30)  annotation(
    Placement(visible = true, transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction2(a = {1, 6, 5, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {50, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step2 annotation(
    Placement(visible = true, transformation(origin = {-70, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(
    Placement(visible = true, transformation(origin = {-30, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.PID pid(Td = 0.125 * 2.80, Ti = 0.5 * 2.80, k = 0.6 * 30)  annotation(
    Placement(visible = true, transformation(origin = {10, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(step.y, transferFunction.u) annotation(
    Line(points = {{-59, 70}, {-42, 70}}, color = {0, 0, 127}));
  connect(step1.y, feedback.u1) annotation(
    Line(points = {{-59, 10}, {-38, 10}}, color = {0, 0, 127}));
  connect(transferFunction1.y, feedback.u2) annotation(
    Line(points = {{61, 10}, {70, 10}, {70, -14}, {-30, -14}, {-30, 2}}, color = {0, 0, 127}));
  connect(feedback.y, gain.u) annotation(
    Line(points = {{-20, 10}, {-4, 10}, {-4, 10}, {-2, 10}}, color = {0, 0, 127}));
  connect(gain.y, transferFunction1.u) annotation(
    Line(points = {{22, 10}, {36, 10}, {36, 10}, {38, 10}}, color = {0, 0, 127}));
  connect(step2.y, feedback1.u1) annotation(
    Line(points = {{-59, -50}, {-38, -50}}, color = {0, 0, 127}));
  connect(feedback1.u2, transferFunction2.y) annotation(
    Line(points = {{-30, -58}, {-30, -58}, {-30, -80}, {70, -80}, {70, -50}, {62, -50}, {62, -50}}, color = {0, 0, 127}));
  connect(feedback1.y, pid.u) annotation(
    Line(points = {{-20, -50}, {-2, -50}, {-2, -50}, {-2, -50}}, color = {0, 0, 127}));
  connect(pid.y, transferFunction2.u) annotation(
    Line(points = {{22, -50}, {38, -50}, {38, -50}, {38, -50}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "3.2.3")));
end ziegler_1;
