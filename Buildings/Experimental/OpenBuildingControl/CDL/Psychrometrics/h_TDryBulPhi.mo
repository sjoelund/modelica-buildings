within Buildings.Experimental.OpenBuildingControl.CDL.Psychrometrics;
block h_TDryBulPhi
  "Model to compute the specific enthalpy based on relative humidity"
  extends Modelica.Blocks.Icons.Block;

  Modelica.Blocks.Interfaces.RealInput TDryBul(
    start=Buildings.Media.Air.T_default,
    final quantity="ThermodynamicTemperature",
    final unit="K",
    min=0) "Dry bulb temperature"
    annotation (Placement(transformation(extent={{-120,70},{-100,90}})));

  Modelica.Blocks.Interfaces.RealInput phi(min=0, max=1)
    "Relative air humidity"
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));

  Modelica.Blocks.Interfaces.RealInput p(final quantity="Pressure",
                                         final unit="Pa",
                                         min = 0) "Pressure"
    annotation (Placement(transformation(extent={{-120,-90},{-100,-70}})));

  Modelica.Blocks.Interfaces.RealOutput h(
    final quantity="SpecificEnergy",
    final unit="J/kg") "Specific enthalpy"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));

equation
  assert(false,
    "fixme: this block is not yet implemented. See https://github.com/lbl-srg/modelica-buildings/issues/591");
    annotation (
    defaultComponentName="dewPoi",
    Documentation(info="<html>
<p>
Dew point temperature calculation for moist air above freezing temperature.
</p>
<p>
The correlation used in this model is valid for dew point temperatures between
<i>0</i>&deg;C and <i>200</i>&deg;C. It is the correlation from 2005
ASHRAE Handbook, p. 6.2. In an earlier version of this model, the equation from
Peppers has been used, but this equation yielded about <i>15</i> Kelvin lower dew point
temperatures.
</p>
</html>", revisions="<html>
<ul>
<li>
September 4, 2008 by Michael Wetter:<br/>
Changed from causal to acausal ports, needed, for example, for
<a href=\"modelica://Buildings.Fluid.Examples.MixingVolumeMoistAir\">
Buildings.Fluid.Examples.MixingVolumeMoistAir</a>.
</li>
<li>
August 7, 2008 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-124,50},{-86,4}},
          lineColor={0,0,255},
          textString="p_w"),
        Text(
          extent={{102,46},{140,0}},
          lineColor={0,0,255},
          textString="TDP"),
        Line(points={{-68,86},{-68,-72}}),
        Line(points={{82,-72},{-66,-72}}),
        Line(points={{-68,-46},{-54,-42},{-24,-30},{8,-2},{20,22},{28,54},{32,
              74}}),
        Line(
          points={{42,-32},{-28,-32}},
          color={255,0,0},
          thickness=0.5),
        Polygon(
          points={{-28,-32},{-14,-30},{-14,-34},{-28,-32}},
          lineColor={255,0,0},
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{84,-72},{74,-70},{74,-74},{84,-72}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-68,88},{-66,74},{-70,74},{-68,88}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-64,84},{-42,66}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          textString="X"),
        Text(
          extent={{82,-80},{92,-96}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          textString="T"),
        Line(points={{68,-44},{-62,-44}}, color={175,175,175}),
        Line(points={{68,-18},{-10,-18}}, color={175,175,175}),
        Line(points={{70,6},{12,6}}, color={175,175,175}),
        Line(points={{68,32},{22,32}}, color={175,175,175})}));
end h_TDryBulPhi;
