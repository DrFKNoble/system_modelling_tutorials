model scara_1_joint_control
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {270, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = -90, n = {1, 0, 0})  annotation(
    Placement(visible = true, transformation(origin = {310, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute( useAxisFlange = true)  annotation(
    Placement(visible = true, transformation(origin = {350, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(height = 0.020, length = 0.250, lengthDirection = {1, 0, 0}, r = {0.250, 0, 0}, width = 0.050, widthDirection = {0, 1, 0})  annotation(
    Placement(visible = true, transformation(origin = {390, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Potentiometer potentiometer(R = 10e3, useRinput = true)  annotation(
    Placement(visible = true, transformation(origin = {-60, -80}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {330, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage(Vns = 0, Vps = +5)  annotation(
    Placement(visible = true, transformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-30, -140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensorS annotation(
    Placement(visible = true, transformation(origin = {-30, -110}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain gain(k = 1 / (2 *3.14))  annotation(
    Placement(visible = true, transformation(origin = {298, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp annotation(
    Placement(visible = true, transformation(origin = {-300, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor RD1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-350, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor RD2(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-350, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor RD3(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-300, 108}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor RD4(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-310, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(visible = true, transformation(origin = {-380, 32}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage1 annotation(
    Placement(visible = true, transformation(origin = {-440, 70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {-326, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 2.5)  annotation(
    Placement(visible = true, transformation(origin = {-410, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensorD annotation(
    Placement(visible = true, transformation(origin = {-230, 40}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp1 annotation(
    Placement(visible = true, transformation(origin = {-130, -100}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
    Placement(visible = true, transformation(origin = {-130, -140}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensorF annotation(
    Placement(visible = true, transformation(origin = {-170, -110}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor RP2(R = 2e3) annotation(
    Placement(visible = true, transformation(origin = {-130, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensorP annotation(
    Placement(visible = true, transformation(origin = {40, 50}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted idealizedOpAmpLimted1 annotation(
    Placement(visible = true, transformation(origin = {-130, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage3 annotation(
    Placement(visible = true, transformation(origin = {-200, 80}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor RP4(R = 1e3) annotation(
    Placement(visible = true, transformation(origin = {-50, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor RP3(R = 1e3) annotation(
    Placement(visible = true, transformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor RP1(R = 1e3) annotation(
    Placement(visible = true, transformation(origin = {-168, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground3 annotation(
    Placement(visible = true, transformation(origin = {-100, 20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted idealizedOpAmpLimted2 annotation(
    Placement(visible = true, transformation(origin = {-50, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage2 annotation(
    Placement(visible = true, transformation(origin = { -100, -90}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor RA(R = 1.2)  annotation(
    Placement(visible = true, transformation(origin = {110, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor IA(L = 0.020)  annotation(
    Placement(visible = true, transformation(origin = {70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.EMF emf(k = 0.06)  annotation(
    Placement(visible = true, transformation(origin = {150, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground4 annotation(
    Placement(visible = true, transformation(origin = {100, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 6.2e-4, phi(start = 0), w(start = 0))  annotation(
    Placement(visible = true, transformation(origin = {190, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1e-4)  annotation(
    Placement(visible = true, transformation(origin = {170, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear(ratio = 10, useSupport = true)  annotation(
    Placement(visible = true, transformation(origin = {230, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = 2 *3.14 * time)  annotation(
    Placement(visible = true, transformation(origin = {310, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position annotation(
    Placement(visible = true, transformation(origin = {344, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp2 annotation(
    Placement(visible = true, transformation(origin = {-260, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted opAmp3 annotation(
    Placement(visible = true, transformation(origin = {0, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(world.frame_b, fixedRotation.frame_a) annotation(
    Line(points = {{280, 0}, {300, 0}}, color = {95, 95, 95}));
  connect(fixedRotation.frame_b, revolute.frame_a) annotation(
    Line(points = {{320, 0}, {340, 0}}, color = {95, 95, 95}));
  connect(revolute.frame_b, bodyBox.frame_a) annotation(
    Line(points = {{360, 0}, {380, 0}}, color = {95, 95, 95}));
  connect(RD4.p, opAmp.in_p) annotation(
    Line(points = {{-310, 50}, {-310, 64}}, color = {0, 0, 255}));
  connect(RD3.p, opAmp.in_n) annotation(
    Line(points = {{-310, 108}, {-310, 76}}, color = {0, 0, 255}));
  connect(RD2.n, opAmp.in_p) annotation(
    Line(points = {{-340, 50}, {-340, 64}, {-310, 64}}, color = {0, 0, 255}));
  connect(RD1.n, opAmp.in_n) annotation(
    Line(points = {{-340, 90}, {-340, 76}, {-310, 76}}, color = {0, 0, 255}));
  connect(supplyVoltage1.pin_p, opAmp.s_p) annotation(
    Line(points = {{-440, 80}, {-440, 130}, {-300, 130}, {-300, 80}}, color = {0, 0, 255}));
  connect(supplyVoltage1.pin_n, ground1.p) annotation(
    Line(points = {{-440, 60}, {-440, 10}, {-326, 10}}, color = {0, 0, 255}));
  connect(opAmp.s_n, ground1.p) annotation(
    Line(points = {{-300, 60}, {-300, 10}, {-326, 10}}, color = {0, 0, 255}));
  connect(RD4.n, ground1.p) annotation(
    Line(points = {{-310, 30}, {-310, 10}, {-326, 10}}, color = {0, 0, 255}));
  connect(signalVoltage.n, ground1.p) annotation(
    Line(points = {{-380, 22}, {-380, 10}, {-326, 10}}, color = {0, 0, 255}));
  connect(signalVoltage.v, const.y) annotation(
    Line(points = {{-392, 32}, {-399, 32}}, color = {0, 0, 127}));
  connect(opAmp.out, RD3.n) annotation(
    Line(points = {{-290, 70}, {-290, 108}}, color = {0, 0, 255}));
  connect(opAmp1.s_n, ground2.p) annotation(
    Line(points = {{-130, -110}, {-130, -130}}, color = {0, 0, 255}));
  connect(potentiometer.pin_n, ground.p) annotation(
    Line(points = {{-60, -90}, {-60, -130}, {-30, -130}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_n, ground.p) annotation(
    Line(points = {{0, -100}, {0, -130}, {-30, -130}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_p, potentiometer.pin_p) annotation(
    Line(points = {{0, -80}, {0, -50}, {-60, -50}, {-60, -70}}, color = {0, 0, 255}));
  connect(angleSensor.phi, gain.u) annotation(
    Line(points = {{319, -40}, {310, -40}}, color = {0, 0, 127}));
  connect(gain.y, potentiometer.r) annotation(
    Line(points = {{287, -40}, {-48, -40}, {-48, -70}}, color = {0, 0, 127}));
  connect(supplyVoltage2.pin_n, ground2.p) annotation(
    Line(points = {{-100, -100}, {-100, -130}, {-130, -130}}, color = {0, 0, 255}));
  connect(supplyVoltage2.pin_p, opAmp1.s_p) annotation(
    Line(points = {{-100, -80}, {-100, -50}, {-130, -50}, {-130, -90}}, color = {0, 0, 255}));
  connect(opAmp1.in_p, potentiometer.contact) annotation(
    Line(points = {{-120, -106}, {-50, -106}, {-50, -90}}, color = {0, 0, 255}));
  connect(opAmp1.out, opAmp1.in_n) annotation(
    Line(points = {{-140, -100}, {-148, -100}, {-148, -80}, {-110, -80}, {-110, -94}, {-120, -94}}, color = {0, 0, 255}));
  connect(potentiometer.contact, voltageSensorS.p) annotation(
    Line(points = {{-50, -90}, {-30, -90}, {-30, -100}}, color = {0, 0, 255}));
  connect(voltageSensorS.n, ground.p) annotation(
    Line(points = {{-30, -120}, {-30, -130}}, color = {0, 0, 255}));
  connect(voltageSensorF.n, ground2.p) annotation(
    Line(points = {{-170, -120}, {-170, -130}, {-130, -130}}, color = {0, 0, 255}));
  connect(voltageSensorF.p, opAmp1.out) annotation(
    Line(points = {{-170, -100}, {-140, -100}}, color = {0, 0, 255}));
  connect(voltageSensorD.n, ground1.p) annotation(
    Line(points = {{-230, 30}, {-230, 10}, {-326, 10}}, color = {0, 0, 255}));
  connect(supplyVoltage3.pin_n, ground3.p) annotation(
    Line(points = {{-200, 70}, {-200, 30}, {-100, 30}}, color = {0, 0, 255}));
  connect(ground3.p, voltageSensorP.n) annotation(
    Line(points = {{-100, 30}, {40, 30}, {40, 40}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted2.in_p, ground3.p) annotation(
    Line(points = {{-60, 58}, {-70, 58}, {-70, 30}, {-100, 30}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted2.s_n, ground3.p) annotation(
    Line(points = {{-50, 54}, {-50, 30}, {-100, 30}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted1.s_n, ground3.p) annotation(
    Line(points = {{-130, 60}, {-120.5, 60}, {-120.5, 30}, {-100, 30}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted1.out, RP3.p) annotation(
    Line(points = {{-120, 70}, {-100, 70}}, color = {0, 0, 255}));
  connect(RP3.n, idealizedOpAmpLimted2.in_n) annotation(
    Line(points = {{-80, 70}, {-60, 70}}, color = {0, 0, 255}));
  connect(RP2.n, idealizedOpAmpLimted1.out) annotation(
    Line(points = {{-120, 110}, {-110, 110}, {-110, 70}, {-120, 70}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted1.in_p, ground3.p) annotation(
    Line(points = {{-140, 64}, {-150, 64}, {-150, 30}, {-100, 30}}, color = {0, 0, 255}));
  connect(RP1.n, idealizedOpAmpLimted1.in_n) annotation(
    Line(points = {{-158, 76}, {-140, 76}}, color = {0, 0, 255}));
  connect(supplyVoltage3.pin_p, idealizedOpAmpLimted1.s_p) annotation(
    Line(points = {{-200, 90}, {-200, 130}, {-130, 130}, {-130, 80}}, color = {0, 0, 255}));
  connect(idealizedOpAmpLimted2.s_p, supplyVoltage3.pin_p) annotation(
    Line(points = {{-50, 74}, {-50, 130}, {-200, 130}, {-200, 90}}, color = {0, 0, 255}));
  connect(RP2.p, idealizedOpAmpLimted1.in_n) annotation(
    Line(points = {{-140, 110}, {-150, 110}, {-150, 76}, {-140, 76}}, color = {0, 0, 255}));
  connect(RP4.p, idealizedOpAmpLimted2.in_n) annotation(
    Line(points = {{-60, 100}, {-70, 100}, {-70, 70}, {-60, 70}}, color = {0, 0, 255}));
  connect(RP4.n, idealizedOpAmpLimted2.out) annotation(
    Line(points = {{-40, 100}, {-30, 100}, {-30, 64}, {-40, 64}}, color = {0, 0, 255}));
  connect(ground4.p, emf.n) annotation(
    Line(points = {{100, 0}, {100, 0}, {100, 20}, {150, 20}, {150, 30}, {150, 30}}, color = {0, 0, 255}));
  connect(emf.p, RA.n) annotation(
    Line(points = {{150, 50}, {150, 50}, {150, 70}, {120, 70}, {120, 70}}, color = {0, 0, 255}));
  connect(RA.p, IA.n) annotation(
    Line(points = {{100, 70}, {80, 70}, {80, 70}, {80, 70}}, color = {0, 0, 255}));
  connect(emf.flange, inertia.flange_a) annotation(
    Line(points = {{160, 40}, {178, 40}, {178, 40}, {180, 40}}));
  connect(inertia.flange_b, idealGear.flange_a) annotation(
    Line(points = {{200, 40}, {220, 40}, {220, 40}, {220, 40}}));
  connect(damper.flange_b, inertia.flange_b) annotation(
    Line(points = {{180, 10}, {210, 10}, {210, 40}, {200, 40}}));
  connect(damper.flange_a, emf.support) annotation(
    Line(points = {{160, 10}, {140, 10}, {140, 40}}));
  connect(angleSensor.flange, revolute.axis) annotation(
    Line(points = {{340, -40}, {350, -40}, {350, 10}}));
  connect(realExpression.y, position.phi_ref) annotation(
    Line(points = {{321, 50}, {332, 50}}, color = {0, 0, 127}));
  connect(revolute.support, idealGear.support) annotation(
    Line(points = {{344, 10}, {344, 30}, {230, 30}}));
  connect(position.support, revolute.support) annotation(
    Line(points = {{344, 40}, {344, 10}}));
  connect(RD2.p, signalVoltage.p) annotation(
    Line(points = {{-360, 50}, {-380, 50}, {-380, 42}, {-380, 42}}, color = {0, 0, 255}));
  connect(opAmp1.out, RD1.p) annotation(
    Line(points = {{-140, -100}, {-370, -100}, {-370, 90}, {-360, 90}, {-360, 90}}, color = {0, 0, 255}));
  connect(opAmp2.in_p, opAmp.out) annotation(
    Line(points = {{-270, 70}, {-290, 70}, {-290, 70}, {-290, 70}}, color = {0, 0, 255}));
  connect(opAmp2.out, RP1.p) annotation(
    Line(points = {{-250, 76}, {-178, 76}, {-178, 76}, {-178, 76}}, color = {0, 0, 255}));
  connect(voltageSensorD.p, opAmp2.out) annotation(
    Line(points = {{-230, 50}, {-230, 50}, {-230, 76}, {-250, 76}, {-250, 76}}, color = {0, 0, 255}));
  connect(opAmp2.out, opAmp2.in_n) annotation(
    Line(points = {{-250, 76}, {-240, 76}, {-240, 100}, {-280, 100}, {-280, 82}, {-270, 82}, {-270, 82}}, color = {0, 0, 255}));
  connect(opAmp2.s_n, ground1.p) annotation(
    Line(points = {{-260, 66}, {-260, 66}, {-260, 10}, {-326, 10}, {-326, 10}}, color = {0, 0, 255}));
  connect(opAmp2.s_p, supplyVoltage1.pin_p) annotation(
    Line(points = {{-260, 86}, {-260, 86}, {-260, 130}, {-440, 130}, {-440, 80}, {-440, 80}}, color = {0, 0, 255}));
  connect(opAmp3.in_p, idealizedOpAmpLimted2.out) annotation(
    Line(points = {{-10, 64}, {-40, 64}, {-40, 64}, {-40, 64}}, color = {0, 0, 255}));
  connect(opAmp3.out, IA.p) annotation(
    Line(points = {{10, 70}, {60, 70}, {60, 70}, {60, 70}}, color = {0, 0, 255}));
  connect(voltageSensorP.p, opAmp3.out) annotation(
    Line(points = {{40, 60}, {40, 60}, {40, 70}, {10, 70}, {10, 70}}, color = {0, 0, 255}));
  connect(opAmp3.s_n, ground3.p) annotation(
    Line(points = {{0, 60}, {0, 60}, {0, 30}, {-100, 30}, {-100, 30}}, color = {0, 0, 255}));
  connect(opAmp3.s_p, supplyVoltage3.pin_p) annotation(
    Line(points = {{0, 80}, {0, 80}, {0, 130}, {-200, 130}, {-200, 90}, {-200, 90}}, color = {0, 0, 255}));
  connect(opAmp3.in_n, opAmp3.out) annotation(
    Line(points = {{-10, 76}, {-20, 76}, {-20, 100}, {20, 100}, {20, 70}, {10, 70}, {10, 70}}, color = {0, 0, 255}));
  connect(idealGear.flange_b, revolute.axis) annotation(
    Line(points = {{240, 40}, {350, 40}, {350, 10}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-500, -200}, {500, 200}})),
    Icon(coordinateSystem(extent = {{-500, -200}, {500, 200}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end scara_1_joint_control;
