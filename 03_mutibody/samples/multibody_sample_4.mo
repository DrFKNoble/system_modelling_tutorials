model multibody_sample_4
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-130, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.PointMass pointMass(m = 1)  annotation(
    Placement(visible = true, transformation(origin = {-10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0.5, 0.0, 0.0})  annotation(
    Placement(visible = true, transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Torque torque annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const[3](k = {0.0, 0.0, 1.0})  annotation(
    Placement(visible = true, transformation(origin = {-110, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {-90, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring(c = 1)  annotation(
    Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1)  annotation(
    Placement(visible = true, transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(world.frame_b, revolute.frame_a) annotation(
    Line(points = {{-120, -30}, {-100, -30}}, color = {95, 95, 95}));
  connect(revolute.frame_b, fixedTranslation.frame_a) annotation(
    Line(points = {{-80, -30}, {-60, -30}}));
  connect(fixedTranslation.frame_b, pointMass.frame_a) annotation(
    Line(points = {{-40, -30}, {-10, -30}}, color = {95, 95, 95}));
  connect(torque.frame_b, pointMass.frame_a) annotation(
    Line(points = {{-60, 50}, {-10, 50}, {-10, -30}}, color = {95, 95, 95}));
  connect(const.y, torque.torque) annotation(
    Line(points = {{-99, 70}, {-76, 70}, {-76, 62}}, color = {0, 0, 127}, thickness = 0.5));
  connect(torque.frame_a, revolute.frame_a) annotation(
    Line(points = {{-80, 50}, {-110, 50}, {-110, -30}, {-100, -30}}));
  connect(revolute.support, spring.flange_a) annotation(
    Line(points = {{-96, -20}, {-100, -20}, {-100, 0}, {-100, 0}}));
  connect(revolute.axis, spring.flange_b) annotation(
    Line(points = {{-90, -20}, {-80, -20}, {-80, 0}, {-80, 0}}));
  connect(damper.flange_a, spring.flange_a) annotation(
    Line(points = {{-100, 20}, {-100, 20}, {-100, 0}, {-100, 0}}));
  connect(damper.flange_b, spring.flange_b) annotation(
    Line(points = {{-80, 20}, {-80, 20}, {-80, 0}, {-80, 0}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end multibody_sample_4;
