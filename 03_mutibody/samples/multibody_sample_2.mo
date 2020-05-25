model multibody_sample_2
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(phi(fixed = true), useAxisFlange = true, w(fixed = true))  annotation(
    Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(height = 0.25, length = 0.25, lengthDirection = {1, 0, 0}, r = {0.25, 0.0, 0.0}, r_shape = {0.0, 0.0, 0.0}, width = 0.25, widthDirection = {0, 1, 0}) annotation(
    Placement(visible = true, transformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor relativeSensor(get_angles = true, get_r_rel = false) annotation(
    Placement(visible = true, transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {0, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.SpringDamper springDamper(c = 1, d = 1)  annotation(
    Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-40, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(revolute.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{10, 0}, {30, 0}}));
  connect(fixed.frame_b, revolute.frame_a) annotation(
    Line(points = {{-30, 0}, {-10, 0}}, color = {95, 95, 95}));
  connect(relativeSensor.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{10, -40}, {30, -40}, {30, 0}}, color = {95, 95, 95}));
  connect(relativeSensor.frame_a, fixed.frame_b) annotation(
    Line(points = {{-10, -40}, {-30, -40}, {-30, 0}}));
  connect(revolute.support, torque.support) annotation(
    Line(points = {{-6, 10}, {-20, 10}, {-20, 50}, {0, 50}}));
  connect(springDamper.flange_a, revolute.support) annotation(
    Line(points = {{-10, 30}, {-20, 30}, {-20, 10}, {-6, 10}}));
  connect(revolute.axis, torque.flange) annotation(
    Line(points = {{0, 10}, {20, 10}, {20, 60}, {10, 60}}));
  connect(springDamper.flange_b, revolute.axis) annotation(
    Line(points = {{10, 30}, {10, 31}, {20, 31}, {20, 10}, {0, 10}}));
  connect(step.y, torque.tau) annotation(
    Line(points = {{-29, 60}, {-12, 60}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "");
end multibody_sample_2;
