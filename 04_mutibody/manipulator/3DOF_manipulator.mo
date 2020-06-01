model manipulator
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-230, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute joint_1(n = {0,  0,1}, useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape link_1(I_11 = 0.071016, I_21 = 0, I_22 = 0.071016, I_31 = 0, I_32 = 0, I_33 = 0.001406, m = 3.375, r = {0.00, 0.00, 0.500}, r_CM = {0.00, 0.00, 0.250}, r_shape = {0, 0, 0.250}, shapeType = "file://C:/Users/Fraze/Desktop/system_modelling_tutorials/03_mutibody/manipulator/link_1.stl")  annotation(
    Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.From_deg from_deg annotation(
    Placement(visible = true, transformation(origin = {-150, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position annotation(
    Placement(visible = true, transformation(origin = {-112, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Clock theta_1 annotation(
    Placement(visible = true, transformation(origin = {-230, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 36)  annotation(
    Placement(visible = true, transformation(origin = {-190, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = -90, n = {1, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {-150, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-190, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(angle = 90, n = {1, 0, 0}) annotation(
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.From_deg from_deg1 annotation(
    Placement(visible = true, transformation(origin = {-28, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(
    Placement(visible = true, transformation(origin = {10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute joint_2(n = {0, 0, 1}, useAxisFlange = true) annotation(
    Placement(visible = true, transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant theta_2(k = 0)  annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape link_2(I_11 = 0.001406, I_21 = 0, I_22 = 0.071016, I_31 = 0, I_32 = 0, I_33 = 0.071016, m = 3.375, r = {0.500, 0.00, 0.00}, r_CM = {0.250, 0.00, 0.00}, r_shape = {0.250, 0, 0}, shapeType = "file://C:/Users/Fraze/Desktop/system_modelling_tutorials/03_mutibody/manipulator/link_1.stl") annotation(
    Placement(visible = true, transformation(origin = {70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant theta_3(k = 0)  annotation(
    Placement(visible = true, transformation(origin = {50, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position2 annotation(
    Placement(visible = true, transformation(origin = {130, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.UnitConversions.From_deg from_deg2 annotation(
    Placement(visible = true, transformation(origin = {92, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute joint_3(n = {0, 0, 1}, useAxisFlange = true) annotation(
    Placement(visible = true, transformation(origin = {130, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape link_3(I_11 = 0.001406, I_21 = 0, I_22 = 0.071016, I_31 = 0, I_32 = 0, I_33 = 0.071016, m = 3.375, r = {0.500, 0.00, 0.00}, r_CM = {0.250, 0.00, 0.00}, r_shape = {0.250, 0, 0}, shapeType = "file://C:/Users/Fraze/Desktop/system_modelling_tutorials/03_mutibody/manipulator/link_1.stl") annotation(
    Placement(visible = true, transformation(origin = {190, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor relativeSensor(get_r_rel = true) annotation(
    Placement(visible = true, transformation(origin = {190, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(link_1.frame_a, joint_1.frame_b) annotation(
    Line(points = {{-80, 10}, {-100, 10}}));
  connect(joint_1.support, position.support) annotation(
    Line(points = {{-116, 20}, {-116, 20}, {-116, 40}, {-112, 40}, {-112, 40}}));
  connect(position.flange, joint_1.axis) annotation(
    Line(points = {{-102, 50}, {-102, 50}, {-102, 20}, {-110, 20}, {-110, 20}}));
  connect(from_deg.y, position.phi_ref) annotation(
    Line(points = {{-138, 50}, {-124, 50}, {-124, 50}, {-124, 50}}, color = {0, 0, 127}));
  connect(gain.u, theta_1.y) annotation(
    Line(points = {{-202, 50}, {-219, 50}}, color = {0, 0, 127}));
  connect(gain.y, from_deg.u) annotation(
    Line(points = {{-178, 50}, {-162, 50}, {-162, 50}, {-162, 50}}, color = {0, 0, 127}));
  connect(fixedRotation.frame_b, joint_1.frame_a) annotation(
    Line(points = {{-140, 10}, {-120, 10}, {-120, 10}, {-120, 10}}, color = {95, 95, 95}));
  connect(fixed.frame_b, fixedRotation.frame_a) annotation(
    Line(points = {{-180, 10}, {-160, 10}, {-160, 10}, {-160, 10}}, color = {95, 95, 95}));
  connect(link_1.frame_b, fixedRotation1.frame_a) annotation(
    Line(points = {{-60, 10}, {-40, 10}, {-40, 10}, {-40, 10}}));
  connect(from_deg1.y, position1.phi_ref) annotation(
    Line(points = {{-17, 50}, {-2, 50}}, color = {0, 0, 127}));
  connect(fixedRotation1.frame_b, joint_2.frame_a) annotation(
    Line(points = {{-20, 10}, {0, 10}, {0, 10}, {0, 10}}));
  connect(joint_2.support, position1.support) annotation(
    Line(points = {{4, 20}, {4, 20}, {4, 40}, {10, 40}, {10, 40}}));
  connect(joint_2.axis, position1.flange) annotation(
    Line(points = {{10, 20}, {20, 20}, {20, 50}, {20, 50}}));
  connect(theta_2.y, from_deg1.u) annotation(
    Line(points = {{-58, 50}, {-42, 50}, {-42, 50}, {-40, 50}}, color = {0, 0, 127}));
  connect(theta_3.y, from_deg2.u) annotation(
    Line(points = {{61, 50}, {80, 50}}, color = {0, 0, 127}));
  connect(from_deg2.y, position2.phi_ref) annotation(
    Line(points = {{103, 50}, {118, 50}}, color = {0, 0, 127}));
  connect(link_2.frame_b, joint_3.frame_a) annotation(
    Line(points = {{80, 10}, {120, 10}, {120, 10}, {120, 10}}));
  connect(joint_3.support, position2.support) annotation(
    Line(points = {{124, 20}, {124, 20}, {124, 40}, {130, 40}, {130, 40}}));
  connect(joint_3.axis, position2.flange) annotation(
    Line(points = {{130, 20}, {140, 20}, {140, 50}, {140, 50}, {140, 50}}));
  connect(joint_2.frame_b, link_2.frame_a) annotation(
    Line(points = {{20, 10}, {60, 10}, {60, 10}, {60, 10}}, color = {95, 95, 95}));
  connect(joint_3.frame_b, link_3.frame_a) annotation(
    Line(points = {{140, 10}, {180, 10}, {180, 10}, {180, 10}}, color = {95, 95, 95}));
  connect(relativeSensor.frame_a, fixedRotation.frame_a) annotation(
    Line(points = {{180, -30}, {-160, -30}, {-160, 10}, {-160, 10}}));
  connect(relativeSensor.frame_b, link_3.frame_b) annotation(
    Line(points = {{200, -30}, {220, -30}, {220, 10}, {200, 10}, {200, 10}}, color = {95, 95, 95}));
  annotation(
    Diagram(coordinateSystem(extent = {{-300, -100}, {300, 100}})),
    Icon(coordinateSystem(extent = {{-300, -100}, {300, 100}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end manipulator;
