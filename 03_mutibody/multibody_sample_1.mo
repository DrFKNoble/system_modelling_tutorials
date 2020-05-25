model multibody_sample_1
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(height = 0.25, length = 0.25, lengthDirection = {1, 0, 0}, r = {0.25, 0.0, 0.0}, r_shape = {0.0, 0.0, 0.0}, width = 0.25, widthDirection = {0, 1, 0})  annotation(
    Placement(visible = true, transformation(origin = {70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1)  annotation(
    Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s(fixed = true), useAxisFlange = true, v(fixed = true))  annotation(
    Placement(visible = true, transformation(origin = {30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(
    Placement(visible = true, transformation(origin = {30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-30, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor relativeSensor(get_r_rel = true)  annotation(
    Placement(visible = true, transformation(origin = {30, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.SpringDamper springDamper(c = 1, d = 1)  annotation(
    Placement(visible = true, transformation(origin = {30, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(prismatic.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{40, -10}, {60, -10}}, color = {95, 95, 95}));
  connect(const.y, force.f) annotation(
    Line(points = {{1, 50}, {18, 50}}, color = {0, 0, 127}));
  connect(fixed.frame_b, prismatic.frame_a) annotation(
    Line(points = {{-20, -10}, {20, -10}}, color = {95, 95, 95}));
  connect(relativeSensor.frame_a, fixed.frame_b) annotation(
    Line(points = {{20, -50}, {-20, -50}, {-20, -10}}));
  connect(relativeSensor.frame_b, bodyBox.frame_b) annotation(
    Line(points = {{40, -50}, {80, -50}, {80, -10}}));
  connect(force.support, prismatic.support) annotation(
    Line(points = {{30, 40}, {10, 40}, {10, -4}, {26, -4}, {26, -4}}, color = {0, 127, 0}));
  connect(force.flange, prismatic.axis) annotation(
    Line(points = {{40, 50}, {50, 50}, {50, -4}, {38, -4}, {38, -4}}, color = {0, 127, 0}));
  connect(springDamper.flange_b, prismatic.axis) annotation(
    Line(points = {{40, 20}, {50, 20}, {50, -4}, {38, -4}, {38, -4}}, color = {0, 127, 0}));
  connect(springDamper.flange_a, prismatic.support) annotation(
    Line(points = {{20, 20}, {10, 20}, {10, -4}, {26, -4}, {26, -4}}, color = {0, 127, 0}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end multibody_sample_1;
