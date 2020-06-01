model multibody_sample_5
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-152, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(height = 0.05, length = 0.5, r = {0.5, 0, 0}, width = 0.05)  annotation(
    Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation annotation(
    Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute annotation(
    Placement(visible = true, transformation(origin = {-70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(r = {0, 0, 0.05})  annotation(
    Placement(visible = true, transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox1(height = 0.05, length = 0.5, r = {0.5, 0, 0}, width = 0.05) annotation(
    Placement(visible = true, transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(
    Placement(visible = true, transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixedRotation.frame_a, world.frame_b) annotation(
    Line(points = {{-120, 0}, {-142, 0}, {-142, 0}, {-142, 0}}));
  connect(revolute.frame_a, fixedRotation.frame_b) annotation(
    Line(points = {{-80, 0}, {-100, 0}, {-100, 0}, {-100, 0}}, color = {95, 95, 95}));
  connect(revolute.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{-60, 0}, {-40, 0}, {-40, 0}, {-40, 0}}, color = {95, 95, 95}));
  connect(bodyBox.frame_b, fixedRotation1.frame_a) annotation(
    Line(points = {{-20, 0}, {0, 0}, {0, 0}, {0, 0}}, color = {95, 95, 95}));
  connect(fixedRotation1.frame_b, revolute1.frame_a) annotation(
    Line(points = {{20, 0}, {40, 0}, {40, 0}, {40, 0}}));
  connect(revolute1.frame_b, bodyBox1.frame_a) annotation(
    Line(points = {{60, 0}, {80, 0}, {80, 0}, {80, 0}}, color = {95, 95, 95}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end multibody_sample_5;
