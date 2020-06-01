model multibody_sample_5
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-152, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(height = 0.05, length = 0.5, r = {0.5, 0, 0}, width = 0.05)  annotation(
    Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation annotation(
    Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {-70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(r = {0, 0, 0.05})  annotation(
    Placement(visible = true, transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox1(height = 0.05, length = 0.5, r = {0.5, 0, 0}, width = 0.05) annotation(
    Placement(visible = true, transformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = 0 * time)  annotation(
    Placement(visible = true, transformation(origin = {-150, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(
    Placement(visible = true, transformation(origin = {50, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = 45 * time) annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.From_deg from_deg annotation(
    Placement(visible = true, transformation(origin = {-110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.From_deg from_deg1 annotation(
    Placement(visible = true, transformation(origin = {10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.RelativePosition relativePosition annotation(
    Placement(visible = true, transformation(origin = {70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
  connect(revolute.support, position.support) annotation(
    Line(points = {{-76, 10}, {-76, 10}, {-76, 40}, {-70, 40}, {-70, 40}}));
  connect(position.flange, revolute.axis) annotation(
    Line(points = {{-60, 50}, {-50, 50}, {-50, 10}, {-70, 10}, {-70, 10}}));
  connect(revolute1.support, position1.support) annotation(
    Line(points = {{44, 10}, {44, 10}, {44, 40}, {50, 40}, {50, 40}}));
  connect(position1.flange, revolute1.axis) annotation(
    Line(points = {{60, 50}, {70, 50}, {70, 10}, {50, 10}, {50, 10}}));
  connect(realExpression.y, from_deg.u) annotation(
    Line(points = {{-138, 50}, {-122, 50}, {-122, 50}, {-122, 50}}, color = {0, 0, 127}));
  connect(from_deg.y, position.phi_ref) annotation(
    Line(points = {{-98, 50}, {-84, 50}, {-84, 50}, {-82, 50}}, color = {0, 0, 127}));
  connect(realExpression1.y, from_deg1.u) annotation(
    Line(points = {{-18, 50}, {-2, 50}, {-2, 50}, {-2, 50}}, color = {0, 0, 127}));
  connect(from_deg1.y, position1.phi_ref) annotation(
    Line(points = {{22, 50}, {38, 50}, {38, 50}, {38, 50}}, color = {0, 0, 127}));
  connect(relativePosition.frame_b, bodyBox1.frame_b) annotation(
    Line(points = {{80, -30}, {120, -30}, {120, 0}, {100, 0}}, color = {95, 95, 95}));
  connect(relativePosition.frame_a, fixedRotation.frame_a) annotation(
    Line(points = {{60, -30}, {-120, -30}, {-120, 0}}, color = {95, 95, 95}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end multibody_sample_5;
