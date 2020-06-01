model scara_manipulator
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-160, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = -90, n = {1, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(height = 0.020, length = 0.250, lengthDirection = {1, 0, 0}, r = {0.250, 0, 0}, width = 0.050, widthDirection = {0, 1, 0})  annotation(
    Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox1(height = 0.020, length = 0.250, lengthDirection = {1, 0, 0}, r = {0.250, 0, 0}, width = 0.050, widthDirection = {0, 1, 0})  annotation(
    Placement(visible = true, transformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(n = {0, 0, 1}, useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {160, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(r = {0, 0, 0.02})  annotation(
    Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(angle = 180, n = {1, 0, 0}, r = {0, 0, -0.010})  annotation(
    Placement(visible = true, transformation(origin = {120, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox2(height = 0.050, length = 0.050, r = {0.0, 0.0, 0.05}, width = 0.050) annotation(
    Placement(visible = true, transformation(origin = {200, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(world.frame_b, fixedRotation.frame_a) annotation(
    Line(points = {{-150, 0}, {-130, 0}}, color = {95, 95, 95}));
  connect(fixedRotation.frame_b, revolute.frame_a) annotation(
    Line(points = {{-110, 0}, {-90, 0}}, color = {95, 95, 95}));
  connect(revolute.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{-70, 0}, {-50, 0}}, color = {95, 95, 95}));
  connect(revolute1.frame_b, bodyBox1.frame_a) annotation(
    Line(points = {{50, 0}, {70, 0}}, color = {95, 95, 95}));
  connect(fixedRotation1.frame_a, bodyBox.frame_b) annotation(
    Line(points = {{-10, 0}, {-30, 0}}));
  connect(fixedRotation1.frame_b, revolute1.frame_a) annotation(
    Line(points = {{10, 0}, {30, 0}}, color = {95, 95, 95}));
  connect(bodyBox1.frame_b, fixedRotation2.frame_a) annotation(
    Line(points = {{90, 0}, {110, 0}}, color = {95, 95, 95}));
  connect(fixedRotation2.frame_b, prismatic.frame_a) annotation(
    Line(points = {{130, 0}, {150, 0}}, color = {95, 95, 95}));
  connect(bodyBox2.frame_a, prismatic.frame_b) annotation(
    Line(points = {{190, 0}, {170, 0}}, color = {95, 95, 95}));
  annotation(
    Diagram(coordinateSystem(extent = {{-250, -100}, {250, 100}})),
    Icon(coordinateSystem(extent = {{-250, -100}, {250, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end scara_manipulator;
