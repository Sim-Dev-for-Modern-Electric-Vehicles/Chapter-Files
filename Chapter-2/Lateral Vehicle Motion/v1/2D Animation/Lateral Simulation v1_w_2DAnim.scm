<?xml version="1.0" encoding="UTF-8"?>
<model name="Lateral Simulation v1">
  <header formatversion="2" hwxversion="2021.2" script="oml"/>
  <edition>
    <properties>
      <property name="creator" value="Acrome"/>
      <property name="creationdate" value="07/01/21 09:54:27"/>
      <property name="revision" value="0"/>
      <property name="lastmodifieddate" value="05/23/22 12:25:14"/>
      <property name="comments" value=""/>
    </properties>
  </edition>
  <initialization>a = 1.14;&#x9;&#x9;% distance of c.g. to front axle [m]&#xA;L = 2.54;&#x9;&#x9;% wheel base [m]&#xA;b=L-a;&#x9;&#x9;&#x9;% distance of c.g. to rear axle (m)&#xA;m = 1500;&#x9;&#x9;% mass [kg]&#xA;Iz = 2420.0;&#x9;% yaw moment of inertia [kg-m^2]&#xA;Caf = 44000*2;&#x9;% cornering stiffness--front axle [N/rad]&#xA;Car = 47000*2;&#x9;% cornering stiffness-- rear axle [N/rad]&#xA;g=9.81;&#x9;&#x9;&#x9;% Gravitational Constant [m/s^2]&#xA;u0=3.42;&#x9;&#x9;&#x9;% Forward Speed [m/s]&#xA;R=100;&#x9;&#x9;&#x9;% Turning radius (u/r) [m]&#xA;delSt=L/R;&#x9;&#x9;% Steering angle [radians]&#xA;&#xA;simtime=50;&#x9;&#x9;%Final time</initialization>
  <finalization/>
  <diagram>
    <block name="Lateral_v1" type="block">
      <diagram>
        <block name="SampleClock_1" type="block">
          <template name="system/ActivationOperations/SampleClock"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="top" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
            <background color="255,255,255,0"/>
            <position x="1101.8041381835938" y="-117.33203125"/>
            <size width="60" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.500000" y="0.250000" rotate="1" visible="1" font="Arial,12" align="center">1</text>
              <text name="text2" color="0,0,0,255" clip="1" x="0.500000" y="0.750000" rotate="0" visible="1" font="Arial,12" align="center">0</text>
            </texts>
            <images>
              <image name="image1" file="ActivationOperations/sampleClock.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="ActivationOperations/sampleClock.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="frequ" value="1"/>
              <parameter name="offset" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="2D Animation" type="block">
          <diagram>
            <block name="Anim2D" type="block">
              <template name="system/SignalViewers/Anim2D"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="2103.87548828125" y="-199.21130371093787"/>
                <size width="60" height="228"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,10" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="activation"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="activation"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="10"/>
                  <parameter name="types" value="[3;3;3;2;2;2;3;3;3;3]"/>
                  <parameter name="sz" value="[-10,-10,270,100]"/>
                  <parameter name="clrs" value="[1 0 0;1 1 1;1 0 0;0 0 0;0 0 0 ;0 0 0;0 0 0;0 0 0;0 0 0;0 0 0]"/>
                  <parameter name="zoom" value="4"/>
                  <parameter name="position" value="[300,300]"/>
                </section>
              </parameters>
            </block>
            <block name="SampleClock" type="block">
              <template name="system/ActivationOperations/SampleClock"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="top" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="2088.87548828125" y="-259.2113037109379"/>
                <size width="60" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.500000" y="0.250000" rotate="1" visible="1" font="Arial,12" align="center">.1</text>
                  <text name="text2" color="0,0,0,255" clip="1" x="0.500000" y="0.750000" rotate="0" visible="1" font="Arial,12" align="center">0</text>
                </texts>
                <images>
                  <image name="image1" file="ActivationOperations/sampleClock.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="ActivationOperations/sampleClock.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="frequ" value=".1"/>
                  <parameter name="offset" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="MatrixConcatenation_2" type="block">
              <template name="system/MatrixOperations/MatrixConcatenation"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1749.8510742187766" y="-139.10276520907877"/>
                <size width="100" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Vertical&#xA;Concatenation</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parameter name="method" value="&apos;Vertical&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="MatrixConcatenation_1_2" type="block">
              <template name="system/MatrixOperations/MatrixConcatenation"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1533.8767089843732" y="-149.1027526855526"/>
                <size width="100" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Horizontal&#xA;Concatenation</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parameter name="method" value="&apos;Horizontal&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="MatrixConcatenation_1_2_1" type="block">
              <template name="system/MatrixOperations/MatrixConcatenation"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1533.8767089843752" y="-84.334152221686"/>
                <size width="100" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Horizontal&#xA;Concatenation</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parameter name="method" value="&apos;Horizontal&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Demux" type="block">
              <template name="system/Routing/Demux"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1310.5748291015627" y="-169.67807769777596"/>
                <size width="10" height="60"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nout"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nout" value="3"/>
                  <parametertable name="outports">
                    <columns number="1">
                      <parameter name="size" value="1"/>
                    </columns>
                    <rows number="nout">
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Demux_1" type="block">
              <template name="system/Routing/Demux"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1311.8818359375" y="-39.7762260436461"/>
                <size width="10" height="60.000000000000014"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nout"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nout" value="3"/>
                  <parametertable name="outports">
                    <columns number="1">
                      <parameter name="size" value="1"/>
                    </columns>
                    <rows number="nout">
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="front" type="regular_in_port">
              <template name="system/Ports/Input"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1270.5748291015627" y="-149.67807769777596"/>
                <size width="20" height="20"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="1"/>
                  <parameter name="outsize" value="[-1;-2]"/>
                  <parameter name="outtyp" value="&apos;inherit&apos;"/>
                  <parameter name="dept" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="rear" type="regular_in_port">
              <template name="system/Ports/Input"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1271.8818359375" y="-19.776226043646094"/>
                <size width="20" height="20.000000000000004"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="2"/>
                  <parameter name="outsize" value="[-1;-2]"/>
                  <parameter name="outtyp" value="&apos;inherit&apos;"/>
                  <parameter name="dept" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Block_3" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1343.6899414062502" y="-74.1466407775751"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Sum_3" type="block">
              <template name="system/MathOperations/Sum"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1378.621093750027" y="43.21712303167469"/>
                <size width="12" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="&quot;+&quot; &quot;-&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parametertable name="in_ports">
                    <columns number="1">
                      <parameter name="sgn" value="&apos;+&apos;"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>&apos;+&apos;</value>
                      </row>
                      <row>
                        <value>&apos;-&apos;</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="satur" value="&apos;Nothing&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Sum_3_1" type="block">
              <template name="system/MathOperations/Sum"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1378.621093750027" y="-16.513185501041335"/>
                <size width="12" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="&quot;+&quot; &quot;-&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parametertable name="in_ports">
                    <columns number="1">
                      <parameter name="sgn" value="&apos;+&apos;"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>&apos;+&apos;</value>
                      </row>
                      <row>
                        <value>&apos;-&apos;</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="satur" value="&apos;Nothing&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Product" type="block">
              <template name="system/MathOperations/Product"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1410.621093750027" y="-28.78287696832531"/>
                <size width="12" height="120"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="&quot;*&quot; &quot;/&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parametertable name="in_ports">
                    <columns number="1">
                      <parameter name="sgn" value="&apos;*&apos;"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>&apos;*&apos;</value>
                      </row>
                      <row>
                        <value>&apos;/&apos;</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="overflow" value="&apos;Nothing&apos;"/>
                  <parameter name="rmethod" value="&apos;Floor&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="TrigFunc" type="block">
              <template name="system/MathOperations/TrigFunc"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1443.2789306640902" y="11.626882553227151"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">atan</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="func" value="&apos;atan&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="RotMatTrans" type="block">
              <diagram>
                <block name="Output" type="regular_out_port">
                  <template name="system/Ports/Output"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="551.8724517822266" y="319.99359130859375"/>
                    <size width="20" height="20"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="portNumber" value="1"/>
                      <parameter name="insize" value="[-1;-2]"/>
                      <parameter name="intyp" value="&apos;inherit&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="Input" type="regular_in_port">
                  <template name="system/Ports/Input"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="262.9796142578125" y="320.0378112792969"/>
                    <size width="20" height="20"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="portNumber" value="1"/>
                      <parameter name="outsize" value="[-1;-2]"/>
                      <parameter name="outtyp" value="&apos;inherit&apos;"/>
                      <parameter name="dept" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Sum" type="block">
                  <template name="system/MathOperations/Sum"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="439.87245178222656" y="299.99359130859375"/>
                    <size width="12" height="60"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nin"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nin" value="2"/>
                      <parametertable name="in_ports">
                        <columns number="1">
                          <parameter name="sgn" value="&apos;+&apos;"/>
                        </columns>
                        <rows number="nin">
                          <row>
                            <value>&apos;+&apos;</value>
                          </row>
                          <row>
                            <value>&apos;+&apos;</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="satur" value="&apos;Nothing&apos;"/>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Gain" type="block">
                  <template name="system/MathOperations/Gain"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="377.0920715332031" y="332.99359130859375"/>
                    <size width="48" height="24"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">eye(2)</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top" x="0.5" y="0.2"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="gain" value="eye(2)"/>
                      <parameter name="overflow" value="&apos;Nothing&apos;"/>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Gain_1" type="block">
                  <template name="system/MathOperations/Gain"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="378.9843444824219" y="302.99359130859375"/>
                    <size width="48" height="24"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">[0,1;-1,0]</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top" x="0.5" y="0.2"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="gain" value="[0,1;-1,0]"/>
                      <parameter name="overflow" value="&apos;Nothing&apos;"/>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="TrigFunc_1" type="block">
                  <template name="system/MathOperations/TrigFunc"/>
                  <properties>
                    <property name="masked" value="1"/>
                    <property name="inlinable" value="0"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="329.9429016113281" y="332.99359130859375"/>
                    <size width="24" height="24"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">cos</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="func" value="&apos;cos&apos;"/>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Block_2" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="303.15423583984375" y="330.0378112792969"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="TrigFunc" type="block">
                  <template name="system/MathOperations/TrigFunc"/>
                  <properties>
                    <property name="masked" value="1"/>
                    <property name="inlinable" value="0"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="328.0506286621094" y="302.99359130859375"/>
                    <size width="24" height="24"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">sin</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="func" value="&apos;sin&apos;"/>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Sum" port="1" iotype="out"/>
                  <to block="Output" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Gain" port="1" iotype="out"/>
                  <to block="Sum" port="2" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Gain_1" port="1" iotype="out"/>
                  <to block="Sum" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Input" port="1" iotype="out"/>
                  <to block="Block_2" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="TrigFunc_1" port="1" iotype="out"/>
                  <to block="Gain" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_2" port="1" iotype="out"/>
                  <to block="TrigFunc" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="303.15423583984375" y="314.99359130859375"/>
                  </points>
                </link>
                <link name="" type="explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="TrigFunc_1" port="1" iotype="in"/>
                  <to block="Block_2" port="3" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="303.15423583984375" y="344.99359130859375"/>
                  </points>
                </link>
                <link name="" type="explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="TrigFunc" port="1" iotype="out"/>
                  <to block="Gain_1" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <context/>
                <graphics>
                  <viewport width="800" height="800" topleftx="0" toplefty="0"/>
                  <window width="800" height="800" topleftx="0" toplefty="0"/>
                </graphics>
              </diagram>
              <properties>
                <property name="masked" value="0"/>
                <property name="inlinable" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1592.5198364257808" y="19.626882553160048"/>
                <size width="48" height="23.999999999999996"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters title="new block definition">
                <callback>
                  <pre/>
                  <post/>
                </callback>
              </parameters>
            </block>
            <block name="vehicle rod" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1578.1766967773428" y="-18.059244155887477"/>
                <size width="72" height="23.999999999999996"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">[0,-3.5;0,3.5]</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="[0,-3.5;0,3.5]"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="MatrixMultiplication_1_1_1" type="block">
              <template name="system/MatrixOperations/MatrixMultiplication"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1672.6264648437486" y="4.626882553158108"/>
                <size width="60" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Matrix&#xA;product</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="&quot;*&quot; &quot;*&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parametertable name="in_ports">
                    <columns number="1">
                      <parameter name="sgn" value="&apos;*&apos;"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>&apos;*&apos;</value>
                      </row>
                      <row>
                        <value>&apos;*&apos;</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="overflow" value="&apos;Nothing&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Sum_1_1_1" type="block">
              <template name="system/MathOperations/Sum"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1810.254150390625" y="-12.55652809143203"/>
                <size width="12" height="48"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parametertable name="in_ports">
                    <columns number="1">
                      <parameter name="sgn" value="&apos;+&apos;"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>&apos;+&apos;</value>
                      </row>
                      <row>
                        <value>&apos;+&apos;</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="satur" value="&apos;Nothing&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Sum_1_1_1_1" type="block">
              <template name="system/MathOperations/Sum"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1813.5430908203125" y="-64.20130157470842"/>
                <size width="12" height="48"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parametertable name="in_ports">
                    <columns number="1">
                      <parameter name="sgn" value="&apos;+&apos;"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>&apos;+&apos;</value>
                      </row>
                      <row>
                        <value>&apos;+&apos;</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="satur" value="&apos;Nothing&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Block_4" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1330.5748291015627" y="-139.67807769777596"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Split" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1692.72314453125" y="-129.10275268555333"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1735.0845947265623" y="-64.33415222168607"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="MatrixConcatenation_1_2_2" type="block">
              <template name="system/MatrixOperations/MatrixConcatenation"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1533.8767089843752" y="-201.50929260253906"/>
                <size width="100" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Horizontal&#xA;Concatenation</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="3"/>
                  <parameter name="method" value="&apos;Horizontal&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Block_1" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1484.0596923828084" y="-139.10275268555583"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block_15" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1499.3160400390652" y="-119.10275268555124"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="red dot size" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1440.107421875" y="-180.17595926920575"/>
                <size width="24" height="24"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">.6</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value=".6"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Block_6" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1368.6210937500255" y="10.223773956353888"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block_10" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1357.5415039062498" y="-9.776226043646094"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block_18" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1785.2890625" y="22.626882553158104"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="SuperBlock" type="block">
              <diagram>
                <block name="MatrixConcatenation_1_1_1_1_1_1" type="block">
                  <template name="system/MatrixOperations/MatrixConcatenation"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1988.7665100097656" y="219.3981812795006"/>
                    <size width="100" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Horizontal&#xA;Concatenation</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nin"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nin" value="3"/>
                      <parameter name="method" value="&apos;Horizontal&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="Block_2" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1978.7665100097674" y="252.6798152923585"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="MatrixConcatenation_1_1_1_1_1" type="block">
                  <template name="system/MatrixOperations/MatrixConcatenation"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1988.7665100097656" y="120.75777753194197"/>
                    <size width="100" height="40.00000000000003"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Horizontal&#xA;Concatenation</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nin"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nin" value="3"/>
                      <parameter name="method" value="&apos;Horizontal&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="MatrixConcatenation_1_1_1_1_1_2" type="block">
                  <template name="system/MatrixOperations/MatrixConcatenation"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1988.7665100097656" y="-75.95195929209368"/>
                    <size width="100" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Horizontal&#xA;Concatenation</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nin"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nin" value="3"/>
                      <parameter name="method" value="&apos;Horizontal&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="MatrixConcatenation_1_1_1_1_1_1_1" type="block">
                  <template name="system/MatrixOperations/MatrixConcatenation"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1988.7665100097656" y="16.548938115438066"/>
                    <size width="100" height="40.000000000000014"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Horizontal&#xA;Concatenation</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nin"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nin" value="3"/>
                      <parameter name="method" value="&apos;Horizontal&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="Constant_1_1_1" type="block">
                  <template name="system/SignalGenerators/Constant"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1936.9405517578127" y="294.5382595062261"/>
                    <size width="23.999999999999773" height="24"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">.5</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="C" value=".5"/>
                      <parameter name="typ" value="&apos;double&apos;"/>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Extractor_1_1" type="block">
                  <template name="system/Routing/Extractor"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1860.7549133300784" y="254.00387382507344"/>
                    <size width="60" height="40.00000000000003"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.3" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Extract</text>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;4&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nout"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nout" value="1"/>
                      <parametertable name="extractor">
                        <columns number="1">
                          <parameter name="index" value="1"/>
                        </columns>
                        <rows number="nout">
                          <row>
                            <value>4</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Extractor_2" type="block">
                  <template name="system/Routing/Extractor"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1860.7549133300784" y="206.0648479461672"/>
                    <size width="60" height="39.99999999999994"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.3" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Extract</text>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;2&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nout"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nout" value="1"/>
                      <parametertable name="extractor">
                        <columns number="1">
                          <parameter name="index" value="1"/>
                        </columns>
                        <rows number="nout">
                          <row>
                            <value>2</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Extractor_1" type="block">
                  <template name="system/Routing/Extractor"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1860.7549133300781" y="155.36347007751485"/>
                    <size width="60" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.3" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Extract</text>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;3&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nout"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nout" value="1"/>
                      <parametertable name="extractor">
                        <columns number="1">
                          <parameter name="index" value="1"/>
                        </columns>
                        <rows number="nout">
                          <row>
                            <value>3</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Extractor" type="block">
                  <template name="system/Routing/Extractor"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1860.7549133300781" y="107.42444419860858"/>
                    <size width="60" height="39.999999999999986"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.3" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Extract</text>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;1&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nout"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nout" value="1"/>
                      <parametertable name="extractor">
                        <columns number="1">
                          <parameter name="index" value="1"/>
                        </columns>
                        <rows number="nout">
                          <row>
                            <value>1</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Extractor_3" type="block">
                  <template name="system/Routing/Extractor"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1860.7549133300781" y="-89.28529262542706"/>
                    <size width="60" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.3" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Extract</text>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;1&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nout"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nout" value="1"/>
                      <parametertable name="extractor">
                        <columns number="1">
                          <parameter name="index" value="1"/>
                        </columns>
                        <rows number="nout">
                          <row>
                            <value>1</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Extractor_1_1_1" type="block">
                  <template name="system/Routing/Extractor"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1860.7549133300781" y="51.15463066101091"/>
                    <size width="60" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.3" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Extract</text>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;4&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nout"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nout" value="1"/>
                      <parametertable name="extractor">
                        <columns number="1">
                          <parameter name="index" value="1"/>
                        </columns>
                        <rows number="nout">
                          <row>
                            <value>4</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Extractor_1_2" type="block">
                  <template name="system/Routing/Extractor"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1860.7549133300781" y="-41.34626674652081"/>
                    <size width="60" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.3" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Extract</text>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;3&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nout"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nout" value="1"/>
                      <parametertable name="extractor">
                        <columns number="1">
                          <parameter name="index" value="1"/>
                        </columns>
                        <rows number="nout">
                          <row>
                            <value>3</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Extractor_2_1" type="block">
                  <template name="system/Routing/Extractor"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1860.7549133300781" y="3.2156047821046805"/>
                    <size width="60" height="40.000000000000014"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.3" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Extract</text>
                    </texts>
                    <images>
                      <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="&quot;2&quot;" type="variableport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="nout"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="variableport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Activation"/>
                        <property name="portnumber" value="externalActivation"/>
                      </properties>
                      <graphics>
                        <location position="top"/>
                        <label visible="1" font="Arial,11" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                        <background color="183,15,19,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="nout" value="1"/>
                      <parametertable name="extractor">
                        <columns number="1">
                          <parameter name="index" value="1"/>
                        </columns>
                        <rows number="nout">
                          <row>
                            <value>2</value>
                          </row>
                        </rows>
                      </parametertable>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="rl_wheel" type="regular_out_port">
                  <template name="system/Ports/Output"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="2188.7665100097656" y="229.3981812795006"/>
                    <size width="20" height="20"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">4</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="portNumber" value="4"/>
                      <parameter name="insize" value="[-1;-2]"/>
                      <parameter name="intyp" value="&apos;inherit&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="rr_wheel" type="regular_out_port">
                  <template name="system/Ports/Output"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="2188.7665100097656" y="130.757777531942"/>
                    <size width="20" height="20"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="portNumber" value="3"/>
                      <parameter name="insize" value="[-1;-2]"/>
                      <parameter name="intyp" value="&apos;inherit&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="fr_wheel" type="regular_out_port">
                  <template name="system/Ports/Output"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="2188.7665100097656" y="-65.95195929209368"/>
                    <size width="20" height="20"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="portNumber" value="1"/>
                      <parameter name="insize" value="[-1;-2]"/>
                      <parameter name="intyp" value="&apos;inherit&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="fl_wheel" type="regular_out_port">
                  <template name="system/Ports/Output"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="2188.7665100097656" y="26.548938115438077"/>
                    <size width="20" height="20"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="portNumber" value="2"/>
                      <parameter name="insize" value="[-1;-2]"/>
                      <parameter name="intyp" value="&apos;inherit&apos;"/>
                    </section>
                  </parameters>
                </block>
                <block name="front axle" type="regular_in_port">
                  <template name="system/Ports/Input"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1795.3991699218748" y="-5.258431829144145"/>
                    <size width="20" height="20"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="portNumber" value="1"/>
                      <parameter name="outsize" value="[-1;-2]"/>
                      <parameter name="outtyp" value="&apos;inherit&apos;"/>
                      <parameter name="dept" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="rear axle" type="regular_in_port">
                  <template name="system/Ports/Input"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="1795.3991699218748" y="194.77918243408146"/>
                    <size width="20" height="20"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                      <parameter name="portNumber" value="2"/>
                      <parameter name="outsize" value="[-1;-2]"/>
                      <parameter name="outtyp" value="&apos;inherit&apos;"/>
                      <parameter name="dept" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Block" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1843.2369384765625" y="204.77918243408132"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="Block_1" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1843.2369384765625" y="175.36347007751488"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="Block_3" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1843.2369384765625" y="226.06484794616716"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="Block_13" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1843.2369384765625" y="4.741570472717406"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="Block_9" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1843.2369384765625" y="23.054542541503842"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="Split" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1843.2369384765625" y="-21.34626674652108"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="Block_4" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1978.7665100097656" y="48.85398864746092"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <block name="Block_5" type="regular_split">
                  <template name="system/Links/Split"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                    <position x="1978.7665100097665" y="154.94454956054688"/>
                    <size width="0" height="0"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                    </texts>
                    <images>
                      <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                    </images>
                    <flip value="0">
                      <images>
                        <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                      </images>
                    </flip>
                  </graphics>
                  <ports>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="in"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="left"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="1"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="2"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                    <port name="" type="fixedport">
                      <properties>
                        <property name="iotype" value="out"/>
                        <property name="datatype" value="Explicit"/>
                        <property name="portnumber" value="3"/>
                      </properties>
                      <graphics>
                        <location position="right"/>
                        <label visible="1" font="Arial,10" color="255,255,255,255"/>
                        <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                        <background color="64,64,64,255"/>
                      </graphics>
                    </port>
                  </ports>
                  <parameters>
                    <section name="Parameters">
                    </section>
                  </parameters>
                </block>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_2" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1_1" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_1_1" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1_1" port="2" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1939.5630798339846" y="274.00387382507324"/>
                    <point x="1939.5630798339846" y="239.3981812795006"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_2" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1_1" port="3" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1976.938232421876" y="252.6798152924194"/>
                    <point x="1976.938232421876" y="252.73151461283322"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Constant_1_1_1" port="1" iotype="out"/>
                  <to block="Block_2" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1978.7665100097702" y="306.53825950622627"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_2" port="2" iotype="out"/>
                  <to block="Block_5" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_1" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1" port="2" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1939.5630798339846" y="175.36347007751465"/>
                    <point x="1939.5630798339844" y="140.757777531942"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_3" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1_2" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="MatrixConcatenation_1_1_1_1_1_2" port="2" iotype="in"/>
                  <to block="Extractor_1_2" port="1" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1939.5630798339844" y="-55.951959292093676"/>
                    <point x="1939.5630798339846" y="-21.346266746520996"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_2_1" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1_1_1" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_1_1_1" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1_1_1" port="2" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1939.5630798339844" y="71.15463066101074"/>
                    <point x="1939.5630798339844" y="36.54893811543808"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="MatrixConcatenation_1_1_1_1_1_1" port="1" iotype="out"/>
                  <to block="rl_wheel" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="MatrixConcatenation_1_1_1_1_1" port="1" iotype="out"/>
                  <to block="rr_wheel" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="MatrixConcatenation_1_1_1_1_1_2" port="1" iotype="out"/>
                  <to block="fr_wheel" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="MatrixConcatenation_1_1_1_1_1_1_1" port="1" iotype="out"/>
                  <to block="fl_wheel" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="rear axle" port="1" iotype="out"/>
                  <to block="Block" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor" port="1" iotype="in"/>
                  <to block="Block_1" port="1" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1843.236938476562" y="127.4244441986084"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block" port="1" iotype="out"/>
                  <to block="Block_3" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_1" port="1" iotype="in"/>
                  <to block="Block_1" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_1" port="1" iotype="in"/>
                  <to block="Block" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_2" port="1" iotype="in"/>
                  <to block="Block_3" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_3" port="1" iotype="out"/>
                  <to block="Extractor_1_1" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1843.2369384765625" y="274.00387382507597"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="front axle" port="1" iotype="out"/>
                  <to block="Block_13" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_1_1_1" port="1" iotype="in"/>
                  <to block="Block_9" port="1" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1843.2369384765623" y="71.15463066101064"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_2_1" port="1" iotype="in"/>
                  <to block="Block_9" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1843.2369384765673" y="23.21560478210512"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_9" port="1" iotype="in"/>
                  <to block="Block_13" port="1" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_1_2" port="1" iotype="in"/>
                  <to block="Split" port="1" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Extractor_3" port="1" iotype="in"/>
                  <to block="Split" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="1843.2369384765623" y="-69.28529262542735"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Split" port="1" iotype="in"/>
                  <to block="Block_13" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="MatrixConcatenation_1_1_1_1_1_2" port="3" iotype="in"/>
                  <to block="Block_4" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_4" port="1" iotype="out"/>
                  <to block="MatrixConcatenation_1_1_1_1_1_1_1" port="3" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="MatrixConcatenation_1_1_1_1_1" port="3" iotype="in"/>
                  <to block="Block_5" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_5" port="1" iotype="out"/>
                  <to block="Block_4" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <annotation name="Annotation_5" type="text">
                  <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                  <background color="0,0,0,0"/>
                  <position x="1917.0015869140625" y="317.7811279296875"/>
                  <size width="64" height="28"/>
                  <rotate angle="0"/>
                  <text font="Arial,10" color="0,0,0,255">wheel size</text>
                </annotation>
                <context/>
                <graphics>
                  <viewport width="800" height="800" topleftx="0" toplefty="0"/>
                  <window width="800" height="800" topleftx="0" toplefty="0"/>
                </graphics>
              </diagram>
              <properties>
                <property name="masked" value="0"/>
                <property name="inlinable" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="1879.5684814453125" y="-64.2013015747084"/>
                <size width="192" height="96"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="wheel.png" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="wheel.png" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="fr_wheel" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="fl_wheel" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="rr_wheel" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="rl_wheel" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="4"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="front axle" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="rear axle" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters title="new block definition">
                <callback>
                  <pre/>
                  <post/>
                </callback>
              </parameters>
            </block>
            <block name="Block_5" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1846.4638671875002" y="11.443471908567641"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block_2" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="1859.3123779296886" y="-40.20130157470828"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="road line" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1930.621337890625" y="-225.5640106201172"/>
                <size width="72" height="24"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">[0, 300, 300]</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <size width="4.5" height="4.500000000000002"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="[0, 300, 300]"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="thickness of the road line" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="1918.6473388671875" y="-187.1249847412111"/>
                <size width="96" height="24"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">[0, 300, 300-0.5]</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="[0, 300, 300-0.5]"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <link name="" type="activation">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Anim2D" port="1" iotype="in"/>
              <to block="SampleClock" port="1" iotype="out"/>
              <pen shape="line" color="183,15,19,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixConcatenation_1_2" port="1" iotype="out"/>
              <to block="Split" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixConcatenation_1_2_1" port="1" iotype="out"/>
              <to block="Block" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux" port="1" iotype="in"/>
              <to block="front" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="rear" port="1" iotype="out"/>
              <to block="Demux_1" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux_1" port="2" iotype="out"/>
              <to block="Block_10" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux" port="3" iotype="out"/>
              <to block="Block_3" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1343.6899414062495" y="-119.67807769777649"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixConcatenation_1_2_1" port="1" iotype="in"/>
              <to block="Block_3" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1343.6899414060076" y="-74.33415222168102"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_3" port="2" iotype="out"/>
              <to block="Sum_3" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1343.6899414062493" y="70.21712303166332"/>
              </points>
            </link>
            <link name="" type="explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="TrigFunc" port="1" iotype="out"/>
              <to block="RotMatTrans" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RotMatTrans" port="1" iotype="out"/>
              <to block="MatrixMultiplication_1_1_1" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Product" port="1" iotype="out"/>
              <to block="TrigFunc" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1433.2789306640814" y="31.217123031667366"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_1_1_1" port="1" iotype="out"/>
              <to block="Block_5" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux" port="2" iotype="out"/>
              <to block="Block_4" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_4" port="1" iotype="out"/>
              <to block="Block_1" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1330.5748291015482" y="-139.1027526855685"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_4" port="2" iotype="out"/>
              <to block="Sum_3" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1330.5748291015625" y="52.21712303163572"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_1_1_1_1" port="1" iotype="in"/>
              <to block="Split" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1692.72314453125" y="-52.20130157470868"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Split" port="1" iotype="out"/>
              <to block="MatrixConcatenation_2" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_1_1_1" port="1" iotype="in"/>
              <to block="Block" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1735.0845947265623" y="-0.5565280914324892"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block" port="1" iotype="out"/>
              <to block="MatrixConcatenation_2" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1735.0845947265605" y="-109.10276520907897"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_1_1_1_1" port="1" iotype="out"/>
              <to block="Block_2" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixConcatenation_1_2_2" port="1" iotype="in"/>
              <to block="Block_1" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1484.0596923828084" y="-194.84262593587275"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_1" port="1" iotype="out"/>
              <to block="MatrixConcatenation_1_2" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixConcatenation_1_2_2" port="2" iotype="in"/>
              <to block="Block_15" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1499.316040039064" y="-181.50929260253935"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_15" port="1" iotype="out"/>
              <to block="MatrixConcatenation_1_2" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="red dot size" port="1" iotype="out"/>
              <to block="MatrixConcatenation_1_2_2" port="3" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux_1" port="3" iotype="out"/>
              <to block="Block_6" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixConcatenation_2" port="1" iotype="out"/>
              <to block="Anim2D" port="4" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1859.8510742187066" y="-119.41130371093378"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_3_1" port="2" iotype="in"/>
              <to block="Block_6" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_6" port="1" iotype="out"/>
              <to block="MatrixConcatenation_1_2_1" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1368.1265869140625" y="10.223773956353888"/>
                <point x="1368.1265869140627" y="-54.33415222168599"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_3_1" port="1" iotype="in"/>
              <to block="Block_10" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1357.5415039062498" y="-7.513185501041335"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_10" port="1" iotype="out"/>
              <to block="Block_15" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1357.5415039062498" y="-119.10275268554841"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixMultiplication_1_1_1" port="1" iotype="out"/>
              <to block="Block_18" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixMultiplication_1_1_1" port="1" iotype="in"/>
              <to block="vehicle rod" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1660.1766967773428" y="13.6268825531581"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_1_1_1_1" port="2" iotype="in"/>
              <to block="Block_18" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1785.2890625000002" y="-28.201301574708584"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_18" port="1" iotype="out"/>
              <to block="Sum_1_1_1" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1800.2541503906327" y="22.626882553158318"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_3" port="1" iotype="out"/>
              <to block="Product" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Sum_3_1" port="1" iotype="out"/>
              <to block="Product" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SuperBlock" port="2" iotype="in"/>
              <to block="Block_5" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1869.5684814453125" y="11.443471908567748"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_5" port="1" iotype="out"/>
              <to block="Anim2D" port="6" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1846.4638671874998" y="-73.81130371093776"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SuperBlock" port="1" iotype="in"/>
              <to block="Block_2" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_2" port="1" iotype="out"/>
              <to block="Anim2D" port="5" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1859.3123779296882" y="-96.61130371093782"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SuperBlock" port="4" iotype="out"/>
              <to block="Anim2D" port="10" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="2082.7887573242188" y="19.79869842528893"/>
                <point x="2082.7887573242188" y="17.388696289062096"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SuperBlock" port="3" iotype="out"/>
              <to block="Anim2D" port="9" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="2082.788757324219" y="-4.201301574708471"/>
                <point x="2082.7887573242188" y="-5.4113037109378865"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SuperBlock" port="2" iotype="out"/>
              <to block="Anim2D" port="8" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="2082.7887573242188" y="-28.20130157470926"/>
                <point x="2082.7887573242188" y="-28.211303710937898"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SuperBlock" port="1" iotype="out"/>
              <to block="Anim2D" port="7" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="2082.7887573242333" y="-52.20130157470618"/>
                <point x="2082.7887573242188" y="-51.01130371093788"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="MatrixConcatenation_1_2_2" port="1" iotype="out"/>
              <to block="Anim2D" port="3" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="1884.8518066406255" y="-181.509292602539"/>
                <point x="1884.8518066406243" y="-142.21130371093784"/>
              </points>
            </link>
            <link name="" type="explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Anim2D" port="2" iotype="in"/>
              <to block="thickness of the road line" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="2039.48095703125" y="-165.0113037109292"/>
                <point x="2039.4809570312505" y="-175.12498474120915"/>
              </points>
            </link>
            <link name="" type="explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Anim2D" port="1" iotype="in"/>
              <to block="road line" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="2060.44970703125" y="-187.81130371093786"/>
                <point x="2060.4497070312495" y="-213.56401062011716"/>
              </points>
            </link>
            <annotation name="Annotation_1" type="text">
              <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
              <background color="0,0,0,0"/>
              <position x="1645.063232421875" y="-203.1706390380858"/>
              <size width="230" height="28"/>
              <rotate angle="0"/>
              <text font="Arial,10" color="0,0,0,255">red dot : located at the front of the vehicle</text>
            </annotation>
            <annotation name="Annotation" type="text">
              <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
              <background color="0,0,0,0"/>
              <position x="1915.9034423828125" y="-141.69436645507798"/>
              <size width="88" height="28"/>
              <rotate angle="0"/>
              <text font="Arial,10" color="0,0,0,255">wheelbase line</text>
            </annotation>
            <annotation name="Annotation_3" type="text">
              <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
              <background color="0,0,0,0"/>
              <position x="1915.9034423828125" y="-119.88616180419908"/>
              <size width="88" height="28"/>
              <rotate angle="0"/>
              <text font="Arial,10" color="0,0,0,255">front axle track</text>
            </annotation>
            <annotation name="Annotation_4" type="text">
              <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
              <background color="0,0,0,0"/>
              <position x="1917.9034423828125" y="-95.29715728759751"/>
              <size width="84" height="28"/>
              <rotate angle="0"/>
              <text font="Arial,10" color="0,0,0,255">rear axle track</text>
            </annotation>
            <annotation name="Annotation_1_1" type="text">
              <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
              <background color="0,0,0,0"/>
              <position x="1483.5167236328125" y="11.39593315124327"/>
              <size width="104" height="28"/>
              <rotate angle="0"/>
              <text font="Arial,10" color="0,0,0,255">vehicle yaw angle</text>
            </annotation>
            <annotation name="Annotation_2_1" type="text">
              <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
              <background color="0,0,0,0"/>
              <position x="1926.478271484375" y="-71.41828918457031"/>
              <size width="48" height="28"/>
              <rotate angle="0"/>
              <text font="Arial,10" color="0,0,0,255">DRAFT</text>
            </annotation>
            <context/>
            <graphics>
              <viewport width="800" height="800" topleftx="0" toplefty="0"/>
              <window width="800" height="800" topleftx="0" toplefty="0"/>
            </graphics>
          </diagram>
          <properties>
            <property name="masked" value="0"/>
            <property name="inlinable" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="0" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,0"/>
            <position x="1045.1669311523438" y="-293.06662368774414"/>
            <size width="204" height="144"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="altair.png" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="altair.png" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="front" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="rear" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters title="new block definition">
            <callback>
              <pre/>
              <post/>
            </callback>
          </parameters>
        </block>
        <block name="ScopeXY" type="block">
          <template name="system/SignalViewers/ScopeXY"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="1065.8041381835938" y="-57.33203125000001"/>
            <size width="132" height="132"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="SignalViewers/scopeXY.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="SignalViewers/scopeXY.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Main">
              <parameter name="externalActivation" value="1"/>
              <parameter name="winSize" value="[-1,-1]"/>
              <parameter name="winPos" value="[-1,-1]"/>
              <parameter name="winNam" value="&apos;&apos;"/>
              <parameter name="winHidden" value="1"/>
              <parameter name="showAtEnd" value="0"/>
              <parameter name="option" value="&apos;Reuse&apos;"/>
            </section>
            <section name="Advanced">
              <parameter name="plotTitle" value="&apos;&apos;"/>
              <parameter name="plotColor" value="0"/>
              <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xInterval" value="[NaN,NaN]"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
              <parameter name="curvesStyle" value="2"/>
            </section>
          </parameters>
        </block>
        <block name="Block_2" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="1004.4268798828125" y="-24.332031250000007"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_11" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="1019.4640197753906" y="41.66796874999999"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Mux" type="block">
          <template name="system/Routing/Mux"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="963.7650756835938" y="-54.33203125000001"/>
            <size width="10" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="3"/>
              <parametertable name="inports">
                <columns number="1">
                  <parameter name="size" value="1"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="Mux_1" type="block">
          <template name="system/Routing/Mux"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="963.7650756835938" y="11.252693176269524"/>
            <size width="10" height="60.00000000000001"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="3"/>
              <parametertable name="inports">
                <columns number="1">
                  <parameter name="size" value="1"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="Sum_1_1_1" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="866.8648681640625" y="132.86178588867188"/>
            <size width="12" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_1_1" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="866.8648681640625" y="70.98297119140605"/>
            <size width="12" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="866.8648681640625" y="-54.33203125000001"/>
            <size width="12" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_1" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="866.8648681640625" y="11.252693176269531"/>
            <size width="12" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Block_10" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="829.2274780273439" y="-147.01670837402398"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_6" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="829.2274780273439" y="-39.33203125"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_3" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="811.9158551581465" y="-76.86010972808859"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_8" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="812.8169555664057" y="26.252693176269595"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Gain_1_1_1" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="759.244384765625" y="157.86178588867188"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">b</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top" x="0.5" y="0.2"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="b"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain_1_1" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="759.244384765625" y="96.48179626464844"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">b</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top" x="0.5" y="0.2"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="b"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain_1" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="759.244384765625" y="36.252693176269524"/>
            <size width="40" height="40.00000000000001"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">a</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top" x="0.5" y="0.2"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="a"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Gain" type="block">
          <template name="system/MathOperations/Gain"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="759.244384765625" y="-29.332031249999993"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">a</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top" x="0.5" y="0.2"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="gain" value="a"/>
              <parameter name="overflow" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Scope" type="block">
          <template name="system/SignalViewers/Scope"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="872.6539001464844" y="-276.81648254394526"/>
            <size width="72" height="108"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;Center_X Pos of the vehicle[m] &quot; &quot;Center_Y Pos of the vehicle[m]&quot; &quot;Rate of change of yaw angle of the road&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Main">
              <parameter name="nin" value="3"/>
              <parameter name="externalActivation" value="0"/>
              <parameter name="winSize" value="[400,400]"/>
              <parameter name="winPos" value="[300,300]"/>
              <parameter name="winNam" value="&apos;&apos;"/>
              <parameter name="winHidden" value="1"/>
              <parameter name="showAtEnd" value="0"/>
              <parameter name="option" value="&apos;Reuse&apos;"/>
            </section>
            <section name="Advanced">
              <parameter name="useSubplot" value="0"/>
              <parametertable name="win_s">
                <columns number="7">
                  <parameter name="title" value="&apos;&apos;"/>
                  <parameter name="reverseColor" value="0"/>
                  <parameter name="grid" value="&apos;Coarse&apos;"/>
                  <parameter name="xScale" value="&apos;linear&apos;"/>
                  <parameter name="xRefresh" value="-1"/>
                  <parameter name="yScale" value="&apos;linear&apos;"/>
                  <parameter name="yInterval" value="[NaN,NaN]"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;&apos;</value>
                    <value>0</value>
                    <value>&apos;Fine&apos;</value>
                    <value>&apos;linear&apos;</value>
                    <value>-1</value>
                    <value>&apos;linear&apos;</value>
                    <value>[NaN,NaN]</value>
                  </row>
                  <row>
                    <value>&apos;&apos;</value>
                    <value>0</value>
                    <value>&apos;Fine&apos;</value>
                    <value>&apos;linear&apos;</value>
                    <value>-1</value>
                    <value>&apos;linear&apos;</value>
                    <value>[NaN,NaN]</value>
                  </row>
                  <row>
                    <value>&apos;&apos;</value>
                    <value>0</value>
                    <value>&apos;Fine&apos;</value>
                    <value>&apos;linear&apos;</value>
                    <value>-1</value>
                    <value>&apos;linear&apos;</value>
                    <value>[NaN,NaN]</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="plotTitle" value="&apos;Vehicle Position and rd&apos;"/>
              <parameter name="plotColor" value="0"/>
              <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
              <parametertable name="signals">
                <columns number="3">
                  <parameter name="name" value="&apos;&apos;"/>
                  <parameter name="color" value="0"/>
                  <parameter name="marker" value="0"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;Center_X Pos of the vehicle[m] &apos;</value>
                    <value>0</value>
                    <value>0</value>
                  </row>
                  <row>
                    <value>&apos;Center_Y Pos of the vehicle[m]&apos;</value>
                    <value>0</value>
                    <value>0</value>
                  </row>
                  <row>
                    <value>&apos;Rate of change of yaw angle of the road&apos;</value>
                    <value>0</value>
                    <value>0</value>
                  </row>
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="TrigFunc_1_1" type="block">
          <template name="system/MathOperations/TrigFunc"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="697.1035766601562" y="157.86178588867188"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">sin</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="func" value="&apos;sin&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="TrigFunc_2" type="block">
          <template name="system/MathOperations/TrigFunc"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="697.1035766601562" y="96.48179626464844"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">cos</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="func" value="&apos;cos&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="TrigFunc_1" type="block">
          <template name="system/MathOperations/TrigFunc"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="697.1035766601562" y="36.25269317626955"/>
            <size width="40" height="40.00000000000001"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">sin</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="func" value="&apos;sin&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="TrigFunc" type="block">
          <template name="system/MathOperations/TrigFunc"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="697.1035766601562" y="-29.332031249999993"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">cos</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="func" value="&apos;cos&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_2_1" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="665.1035766601562" y="147.89042282104492"/>
            <size width="12" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Sum_2" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="665.1035766601562" y="86.48179626464844"/>
            <size width="12" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;+&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Block_9" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="644.6092529296875" y="101.48179626464844"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_7" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="632.8267517089844" y="148.59869384765625"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_5" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="644.6092529296875" y="56.25269317626966"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_4" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="644.6092529296875" y="-10.92929077148438"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_1" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="643.6609497070312" y="-10.92929077148438"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="630.7979692566097" y="-76.91479740344981"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Split" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="613.609252929684" y="-147.0167083740315"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Constant_2" type="block">
          <template name="system/SignalGenerators/Constant"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="575.5499267578125" y="128.59869384765625"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">pi</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="C" value="pi"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Integral_2_1" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="556.1451586380562" y="-177.00659085921444"/>
            <size width="40" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1+saturationstatus*satur"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="0"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
              <parameter name="saturationstatus" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Integral_2" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="556.1451586380562" y="-106.91917325666516"/>
            <size width="40" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1+saturationstatus*satur"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="0"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
              <parameter name="saturationstatus" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Integral_3" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="556.1451586380562" y="-40.91917325666516"/>
            <size width="40" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1+saturationstatus*satur"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="0"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
              <parameter name="saturationstatus" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Constant_1" type="block">
          <template name="system/SignalGenerators/Constant"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="502.5006884232124" y="-167.00659085921444"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">u0</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="C" value="u0"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Integral" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="502.5006884232124" y="-106.91917325666516"/>
            <size width="40" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1+saturationstatus*satur"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="0"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
              <parameter name="saturationstatus" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Integral_1" type="block">
          <template name="system/Dynamical/Integral"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="502.5006884232124" y="-40.91917325666516"/>
            <size width="40" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1+saturationstatus*satur"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;x&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="reinit"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="x0" value="0"/>
              <parameter name="reinit" value="0"/>
              <parameter name="satur" value="0"/>
              <parametertable name="limit">
                <columns number="3">
                  <parameter name="max" value="[1]"/>
                  <parameter name="min" value="[-1]"/>
                  <parameter name="zcross" value="1"/>
                </columns>
                <rows number="satur">
                </rows>
              </parametertable>
              <parameter name="saturationstatus" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Demux" type="block">
          <template name="system/Routing/Demux"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="455.8633593216499" y="-109.91917325666516"/>
            <size width="6" height="132"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nout"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nout" value="2"/>
              <parametertable name="outports">
                <columns number="1">
                  <parameter name="size" value="1"/>
                </columns>
                <rows number="nout">
                  <row>
                    <value>1</value>
                  </row>
                  <row>
                    <value>1</value>
                  </row>
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="Veh. State-Space Model" type="block">
          <template name="system/Dynamical/ContStateSpace"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="327.8633593216499" y="-79.91917325666516"/>
            <size width="108" height="72"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">ẋ = Ax + Bu&#xA;y = Cx + Du</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="A" value="[-(Caf+Car)/m/u0, (b*Car-a*Caf)/m/u0-u0; (b-Car-a*Caf)/Iz/u0, -(a^2*Caf+b^2*Car)/Iz/u0]"/>
              <parameter name="B" value="[Caf/m; a*Caf/Iz]"/>
              <parameter name="C" value="eye(2)"/>
              <parameter name="D" value="[0;0]"/>
              <parameter name="x0" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="State Space Equation" type="block">
          <diagram>
            <context/>
            <graphics>
              <viewport width="800" height="800" topleftx="0" toplefty="0"/>
              <window width="800" height="800" topleftx="0" toplefty="0"/>
            </graphics>
          </diagram>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="0" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,0"/>
            <position x="515.8298645019531" y="-488.8181610107422"/>
            <size width="576" height="144"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="equation.PNG" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="equation.PNG" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports/>
          <parameters title="new block definition">
            <callback>
              <pre/>
              <post/>
            </callback>
          </parameters>
        </block>
        <block name="Steering Angle" type="block">
          <template name="system/SignalGenerators/Constant"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="221.32559204101562" y="-63.91917325666516"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">delSt</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="C" value="delSt"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <link name="" type="Activation">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="SampleClock_1" port="1" iotype="out"/>
          <to block="ScopeXY" port="1" iotype="in"/>
          <pen shape="line" color="183,15,19,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_2" port="2" iotype="out"/>
          <to block="2D Animation" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="1004.4268798828126" y="-257.06662368774414"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_11" port="1" iotype="out"/>
          <to block="2D Animation" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="1019.4640197753909" y="-185.06662368774394"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_2" port="1" iotype="out"/>
          <to block="ScopeXY" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="ScopeXY" port="2" iotype="in"/>
          <to block="Block_11" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux" port="1" iotype="out"/>
          <to block="Block_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux_1" port="1" iotype="out"/>
          <to block="Block_11" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="1019.4640197753906" y="41.25269317626953"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux" port="1" iotype="in"/>
          <to block="Block_10" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="953.7650756835938" y="-147.01670837402406"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux" port="2" iotype="in"/>
          <to block="Sum" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_1_1" port="1" iotype="out"/>
          <to block="Mux" port="3" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="934.0148925781249" y="100.98297119140584"/>
            <point x="934.014892578125" y="-4.332031250000015"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Mux_1" port="1" iotype="in"/>
          <to block="Block_3" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="944.3607177734376" y="21.25269317626953"/>
            <point x="944.3607177734374" y="-76.86010972808857"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_1" port="1" iotype="out"/>
          <to block="Mux_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_1_1_1" port="1" iotype="out"/>
          <to block="Mux_1" port="3" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="947.6520996093748" y="162.8617858886725"/>
            <point x="947.652099609375" y="61.252693176269474"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_1_1_1" port="1" iotype="in"/>
          <to block="Block_8" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="812.8169555664058" y="147.86178588867534"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain_1_1_1" port="1" iotype="out"/>
          <to block="Sum_1_1_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_6" port="1" iotype="out"/>
          <to block="Sum_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="829.2274780273438" y="85.98297119140608"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain_1_1" port="1" iotype="out"/>
          <to block="Sum_1_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="804.5498657226562" y="116.48179626464845"/>
            <point x="804.5498657226562" y="115.98297119140605"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum" port="1" iotype="in"/>
          <to block="Block_6" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain" port="1" iotype="out"/>
          <to block="Sum" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_1" port="1" iotype="in"/>
          <to block="Block_8" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Gain_1" port="1" iotype="out"/>
          <to block="Sum_1" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Split" port="1" iotype="out"/>
          <to block="Block_10" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_10" port="1" iotype="out"/>
          <to block="Block_6" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block" port="2" iotype="out"/>
          <to block="Block_3" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_3" port="1" iotype="out"/>
          <to block="Block_8" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="812.8174651994103" y="-76.85983749126895"/>
          </points>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="TrigFunc_1_1" port="1" iotype="out"/>
          <to block="Gain_1_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="TrigFunc_2" port="1" iotype="out"/>
          <to block="Gain_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="TrigFunc_1" port="1" iotype="out"/>
          <to block="Gain_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="TrigFunc" port="1" iotype="out"/>
          <to block="Gain" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Scope" port="1" iotype="in"/>
          <to block="Split" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="613.6092529296839" y="-258.81648254394514"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block" port="1" iotype="out"/>
          <to block="Scope" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="630.7979692566099" y="-222.81648254394526"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_4" port="1" iotype="out"/>
          <to block="Scope" port="3" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="644.6092529296874" y="-186.81648254394548"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_2_1" port="1" iotype="out"/>
          <to block="TrigFunc_1_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_2" port="1" iotype="out"/>
          <to block="TrigFunc_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="TrigFunc_1" port="1" iotype="in"/>
          <to block="Block_5" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="TrigFunc" port="1" iotype="in"/>
          <to block="Block_1" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="643.6609497070312" y="-9.332031249999986"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_2_1" port="1" iotype="in"/>
          <to block="Block_7" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="632.8267517089844" y="162.89042282104492"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_2_1" port="2" iotype="in"/>
          <to block="Block_9" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="644.6092529296875" y="192.89042282104492"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_2" port="1" iotype="in"/>
          <to block="Block_9" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum_2" port="2" iotype="in"/>
          <to block="Block_7" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="632.8267517089844" y="131.48179626464844"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_9" port="1" iotype="in"/>
          <to block="Block_5" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_7" port="1" iotype="in"/>
          <to block="Constant_2" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_5" port="1" iotype="in"/>
          <to block="Block_4" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_1" port="1" iotype="out"/>
          <to block="Block_4" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral_3" port="1" iotype="out"/>
          <to block="Block_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral_2" port="1" iotype="out"/>
          <to block="Block" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral_2_1" port="1" iotype="out"/>
          <to block="Split" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="606.1451586380555" y="-147.01670837403273"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Constant_1" port="1" iotype="out"/>
          <to block="Integral_2_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral" port="1" iotype="out"/>
          <to block="Integral_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Integral_1" port="1" iotype="out"/>
          <to block="Integral_3" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Demux" port="1" iotype="out"/>
          <to block="Integral" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Demux" port="2" iotype="out"/>
          <to block="Integral_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Veh. State-Space Model" port="1" iotype="out"/>
          <to block="Demux" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Steering Angle" port="1" iotype="out"/>
          <to block="Veh. State-Space Model" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <annotation name="Annotation_1" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="881.4270629882812" y="22.16361427307129"/>
          <size width="46" height="28"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">front_y</text>
        </annotation>
        <annotation name="Annotation_1_1" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="882.0419311523438" y="-45.09151268005371"/>
          <size width="46" height="28"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">front_x</text>
        </annotation>
        <annotation name="Annotation_2" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="882.7109985351562" y="76.0228328704834"/>
          <size width="42" height="28"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">rear_x</text>
        </annotation>
        <annotation name="Annotation" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="885.4197387695312" y="141.28156852722168"/>
          <size width="42" height="28"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">rear_y</text>
        </annotation>
        <annotation name="Annotation_1_1_1" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="768.585205078125" y="-282.6887664794922"/>
          <size width="96" height="28"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">vehicle center_x</text>
        </annotation>
        <annotation name="Annotation_4" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="768.585205078125" y="-247.4418716430664"/>
          <size width="96" height="28"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">vehicle center_y</text>
        </annotation>
        <annotation name="Annotation_5" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="642.585205078125" y="-210.72743225097656"/>
          <size width="222" height="28"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">Rate of change of yaw angle of the road</text>
        </annotation>
        <annotation name="Annotation_6" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="1057.65673828125" y="119.33950328826904"/>
          <size width="160" height="50"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">Red    : Front of the vehicle&#xA;Blue   : Center of the vehicle&#xA;Green : Rear of vehicle</text>
        </annotation>
        <annotation name="Annotation_7" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="973.65673828125" y="92.2235107421875"/>
          <size width="328" height="28"/>
          <rotate angle="0"/>
          <text font="Arial,10" color="0,0,0,255">This scope shows the position and orientation of the vehicle.</text>
        </annotation>
        <context/>
        <graphics>
          <viewport width="800" height="800" topleftx="0" toplefty="0"/>
          <window width="800" height="800" topleftx="0" toplefty="0"/>
        </graphics>
      </diagram>
      <properties>
        <property name="masked" value="0"/>
        <property name="inlinable" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="0" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,0"/>
        <position x="437.8115539550781" y="-133.86404514312744"/>
        <size width="444" height="252"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="gt-500_turn.png" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="steering.PNG" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports/>
      <parameters title="new block definition">
        <callback>
          <pre/>
          <post/>
        </callback>
      </parameters>
    </block>
    <annotation name="Annotation_1" type="text">
      <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
      <background color="0,0,0,0"/>
      <position x="467.8115539550781" y="-245.6796875"/>
      <size width="356" height="34"/>
      <rotate angle="0"/>
      <text font="Calibri,18" color="0,0,0,255">Vehicle Dynamics – Lateral Simulation #1</text>
    </annotation>
    <annotation name="Annotation" type="text">
      <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
      <background color="0,0,0,0"/>
      <position x="459.8115539550781" y="-207.94911193847656"/>
      <size width="402" height="64"/>
      <rotate angle="0"/>
      <text font="Arial,10" color="0,0,0,255">This model calculates the front and rear positions of the vehicle according &#xA;to the Ackermann angle and visualizes it as a 2D animation.&#xA;&#xA;Refer Chapter 2.3 in the E-Book for detailed explanation of this model.</text>
    </annotation>
    <context/>
    <graphics>
      <viewport width="800" height="800" topleftx="0" toplefty="0"/>
      <window width="800" height="800" topleftx="0" toplefty="0"/>
    </graphics>
  </diagram>
  <simulation>
    <properties>
      <property name="InitialTime" value="0"/>
      <property name="FinalTime" value="simtime"/>
      <property name="RealTimeScale" value="0.2"/>
      <property name="AbsoluteErrorTolerance" value="0.000001"/>
      <property name="RelativeErrorTolerance" value="0.000001"/>
      <property name="MaxTimeInterval" value="-1"/>
      <property name="TimeTolerance" value="-1"/>
      <property name="Solver" value="lsodar"/>
      <property name="MaxStepSize" value="-1"/>
      <property name="InitialStepSize" value="-1"/>
      <property name="MinimalStepSize" value="-1"/>
      <property name="ZeroCrossingThreshold" value="-1"/>
      <property name="NumberOfConsecutiveZeroCrossing" value="-1"/>
      <property name="TimeToleranceZeroCrossing" value="-1"/>
      <property name="AlgebraicSolver" value="idacalc"/>
      <property name="JacobianMethod" value="1"/>
    </properties>
  </simulation>
</model>
