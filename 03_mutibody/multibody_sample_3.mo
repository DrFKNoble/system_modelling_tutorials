model multibody_sample_3
  Modelica.Mechanics.MultiBody.Parts.PointMass pointMass(m = 1.0) annotation(
    Placement(visible = true, transformation(origin = {40, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(s(fixed = true), useAxisFlange = true, v(fixed = true)) annotation(
    Placement(visible = true, transformation(origin = {-40, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Force force annotation(
    Placement(visible = true, transformation(origin = {-30, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0.5, 0.0, 0.0}) annotation(
    Placement(visible = true, transformation(origin = {0, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-80, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor relativeSensor(get_r_rel = true) annotation(
    Placement(visible = true, transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step[3](height = {1.0, 0.0, 0.0})  annotation(
    Placement(visible = true, transformation(origin = {-60, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 1, s_rel0 = 0.5) annotation(
    Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Damper damper(d = 1) annotation(
    Placement(visible = true, transformation(origin = {-40, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(force.frame_b, pointMass.frame_a) annotation(
    Line(points = {{-20, 40}, {40, 40}, {40, -20}}, color = {95, 95, 95}));
  connect(world.frame_b, prismatic.frame_a) annotation(
    Line(points = {{-70, -20}, {-50, -20}}, color = {95, 95, 95}));
  connect(fixedTranslation.frame_a, prismatic.frame_b) annotation(
    Line(points = {{-10, -20}, {-30, -20}}, color = {95, 95, 95}));
  connect(relativeSensor.frame_a, prismatic.frame_a) annotation(
    Line(points = {{-50, -50}, {-60, -50}, {-60, -20}, {-50, -20}}, color = {95, 95, 95}));
  connect(fixedTranslation.frame_b, pointMass.frame_a) annotation(
    Line(points = {{10, -20}, {40, -20}}));
  connect(force.frame_a, prismatic.frame_a) annotation(
    Line(points = {{-40, 40}, {-60, 40}, {-60, -20}, {-50, -20}}, color = {95, 95, 95}));
  connect(relativeSensor.frame_b, pointMass.frame_a) annotation(
    Line(points = {{-30, -50}, {40, -50}, {40, -20}}, color = {95, 95, 95}));
  connect(step.y, force.force) annotation(
    Line(points = {{-49, 70}, {-36, 70}, {-36, 52}}, color = {0, 0, 127}, thickness = 0.5));
  connect(prismatic.support, spring.flange_a) annotation(
    Line(points = {{-44, -14}, {-50, -14}, {-50, 0}, {-50, 0}}, color = {0, 127, 0}));
  connect(prismatic.axis, spring.flange_b) annotation(
    Line(points = {{-32, -14}, {-30, -14}, {-30, 0}, {-30, 0}}, color = {0, 127, 0}));
  connect(damper.flange_a, prismatic.support) annotation(
    Line(points = {{-50, 20}, {-50, 20}, {-50, -14}, {-44, -14}, {-44, -14}}, color = {0, 127, 0}));
  connect(damper.flange_b, prismatic.axis) annotation(
    Line(points = {{-30, 20}, {-30, 20}, {-30, -14}, {-32, -14}, {-32, -14}}, color = {0, 127, 0}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end multibody_sample_3;
