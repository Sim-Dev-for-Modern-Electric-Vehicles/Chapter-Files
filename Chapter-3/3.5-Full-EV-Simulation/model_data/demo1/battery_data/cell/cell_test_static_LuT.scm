<?xml version="1.0" encoding="UTF-8"?>
<model name="cell_test_static_LuT">
  <header formatversion="2" hwxversion="2021.1" script="oml"/>
  <edition>
    <properties>
      <property name="creator" value="adyer"/>
      <property name="creationdate" value="06/30/21 15:29:11"/>
      <property name="revision" value="0"/>
      <property name="lastmodifieddate" value="06/30/21 18:21:14"/>
      <property name="comments" value=""/>
    </properties>
  </edition>
  <initialization>%used to get the path to the model to load files&#xA;model_path=bdeGetModelFilePath(bdeGetCurrentModel());&#xA;[current_dir,model_name,model_ext]=fileparts(model_path);&#xA;&#xA;%subystem parameters, data to be set by the file&#xA;%NOTE FOR LINUX, need to use forward slashes instead of back slashes &#xA;&#xA;%VEHICLE&#xA;data_file = strcat(current_dir,&apos;/&apos;,&apos;battery_data_cell_LFP_demo1.oml&apos;)&#xA;run(data_file);&#xA;&#xA;&#xA;cell_name = LFP_A; &#xA;battery_cell_capacity = cell_name.capacity ;</initialization>
  <finalization/>
  <diagram>
    <block name="Cell Voltage LuT, Coulomb Counting" type="block">
      <diagram>
        <block name="Battery Cell Model" type="block">
          <diagram>
            <block name="SetSignal" type="block">
              <template name="system/Routing/SetSignal"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-564.8683624267578" y="1045.5384521484375"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">temp</text>
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
                  <parameter name="tag" value="&apos;temp&apos;"/>
                  <parameter name="tagvis" value="&apos;Local&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="SetSignal_1_5" type="block">
              <template name="system/Routing/SetSignal"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-469.6658020019531" y="825.8829956054688"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Q</text>
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
                  <parameter name="tag" value="&apos;Q&apos;"/>
                  <parameter name="tagvis" value="&apos;Local&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Q Scope" type="block">
              <template name="system/SignalViewers/Scope"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-554.6512145996094" y="871.1241455078125"/>
                <size width="40" height="40"/>
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
                <port name="&quot;&quot;" type="variableport">
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
                  <parameter name="nin" value="1"/>
                  <parameter name="externalActivation" value="0"/>
                  <parameter name="winSize" value="[400,400]"/>
                  <parameter name="winPos" value="[300,300]"/>
                  <parameter name="winNam" value="&apos;&apos;"/>
                  <parameter name="winHidden" value="0"/>
                  <parameter name="showAtEnd" value="0"/>
                  <parameter name="option" value="&apos;Reuse&apos;"/>
                </section>
                <section name="Advanced">
                  <parameter name="useSubplot" value="1"/>
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
                        <value>&apos;Coarse&apos;</value>
                        <value>&apos;linear&apos;</value>
                        <value>-1</value>
                        <value>&apos;linear&apos;</value>
                        <value>[NaN,NaN]</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="plotTitle" value="&apos;&apos;"/>
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
                        <value>&apos;&apos;</value>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Check Load Type_1" type="block">
              <diagram>
                <block name="Ok -good" type="block">
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
                    <position x="-1468.1552734375" y="-200.4503173828125"/>
                    <size width="40" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">0</text>
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
                      <parameter name="C" value="0"/>
                      <parameter name="typ" value="&apos;double&apos;"/>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Error - bad" type="block">
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
                    <position x="-1443.6627197265625" y="-125.81793212890625"/>
                    <size width="40" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">-1</text>
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
                      <parameter name="C" value="-1"/>
                      <parameter name="typ" value="&apos;double&apos;"/>
                      <parameter name="externalActivation" value="0"/>
                    </section>
                  </parameters>
                </block>
                <block name="Bias" type="block">
                  <template name="system/MathOperations/Bias"/>
                  <properties>
                    <property name="masked" value="1"/>
                    <property name="inlinable" value="0"/>
                    <property name="atomic" value="0"/>
                    <property name="status" value="1"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="-1389.5927734375" y="-249.89981079101563"/>
                    <size width="40" height="40"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Bias&#xA;1</text>
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
                      <parameter name="b" value="1"/>
                      <parameter name="over" value="&apos;Nothing&apos;"/>
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
                    <position x="-1371.3643798828125" y="-120.4503173828125"/>
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
                    <position x="-1371.3643798828125" y="-160.4503173828125"/>
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
                <block name="ConditionalNSelect" type="block">
                  <template name="system/Routing/ConditionalNSelect"/>
                  <properties>
                    <property name="inlinable" value="0"/>
                    <property name="masked" value="1"/>
                    <property name="atomic" value="0"/>
                  </properties>
                  <graphics>
                    <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                    <position x="-1327.61083984375" y="-230.45031738281236"/>
                    <size width="96" height="120"/>
                    <rotate angle="0"/>
                    <texts>
                      <text name="text1" color="0,0,0,255" clip="1" x="0.55" y="0.55" rotate="1" visible="1" font="Arial,12" align="center"/>
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
                    <port name="y" type="fixedport">
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
                    <port name="switch u1" type="fixedport">
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
                    <port name="&quot;case 1:y=u2&quot; &quot;case 2:y=u3&quot; &quot;case 3:y=u4&quot; &quot;case 4:y=u5&quot; &quot;case 5:y=u6&quot;" type="variableport">
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
                      <parameter name="nin" value="5"/>
                      <parameter name="base" value="1"/>
                      <parameter name="rule" value="&apos;int&apos;"/>
                      <parameter name="externalActivation" value="0"/>
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
                    <position x="-1371.3643798828125" y="-140.4503173828125"/>
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
                <block name="Load type" type="regular_in_port">
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
                    <position x="-1509.5927734375" y="-239.89981079101563"/>
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
                <block name="Status" type="regular_out_port">
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
                    <position x="-1131.61083984375" y="-180.45031738281236"/>
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
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Load type" port="1" iotype="out"/>
                  <to block="Bias" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Error - bad" port="1" iotype="out"/>
                  <to block="Block_2" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="-1371.3643798828125" y="-105.81793212890625"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_2" port="1" iotype="out"/>
                  <to block="Split" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="ConditionalNSelect" port="6" iotype="in"/>
                  <to block="Block_2" port="3" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Block_1" port="1" iotype="out"/>
                  <to block="ConditionalNSelect" port="2" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="-1371.3643798828114" y="-200.45031738281278"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="ConditionalNSelect" port="4" iotype="in"/>
                  <to block="Block_1" port="3" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Bias" port="1" iotype="out"/>
                  <to block="ConditionalNSelect" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points>
                    <point x="-1338.601806640625" y="-229.89981079101563"/>
                    <point x="-1338.601806640625" y="-220.45031738281236"/>
                  </points>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="ConditionalNSelect" port="1" iotype="out"/>
                  <to block="Status" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Ok -good" port="1" iotype="out"/>
                  <to block="ConditionalNSelect" port="3" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="ConditionalNSelect" port="5" iotype="in"/>
                  <to block="Split" port="2" iotype="out"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <link name="" type="Explicit">
                  <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                  <from block="Split" port="1" iotype="out"/>
                  <to block="Block_1" port="1" iotype="in"/>
                  <pen shape="line" color="64,64,64,255" thickness="1.5"/>
                  <points/>
                </link>
                <annotation name="Annotation" type="text">
                  <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                  <background color="0,0,0,0"/>
                  <position x="-1403.8349609375" y="-311.1817092895508"/>
                  <size width="264" height="28"/>
                  <rotate angle="0"/>
                  <text font="Arial,10" color="0,0,0,255">Only supports input load = current, load type = 1</text>
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
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-558.0283508300829" y="961.9785003662109"/>
                <size width="40" height="40"/>
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
                <port name="Load type" type="fixedport">
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
                <port name="Status" type="fixedport">
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
              <parameters title="new block definition">
                <callback>
                  <pre/>
                  <post/>
                </callback>
              </parameters>
            </block>
            <block name="SOC_1" type="block">
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
                <position x="76.81469726562511" y="841.1320037841706"/>
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
                <port name="&quot;x&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="reinit"/>
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
                    <property name="portnumber" value="reinit"/>
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
                  <parameter name="x0" value="SOC_initial"/>
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
                </section>
              </parameters>
            </block>
            <block name="normalize to capacity" type="block">
              <template name="system/MathOperations/MathExpression"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-252.135467529297" y="835.1320037841733"/>
                <size width="300" height="72"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">-current/(battery_cell_capacity*3600)</text>
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
                <port name="&quot;current&quot; &quot;Q&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
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
                <section name="Parameters">
                  <parameter name="nin" value="2"/>
                  <parameter name="work" value="getcurrentenv()"/>
                  <parameter name="exx" value="&apos;-current/(battery_cell_capacity*3600)&apos;"/>
                  <parameter name="zc" value="0"/>
                  <parameter name="useinputnames" value="1"/>
                  <parametertable name="inputnames">
                    <columns number="1">
                      <parameter name="inputname" value="&apos;u&apos;"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>&apos;current&apos;</value>
                      </row>
                      <row>
                        <value>&apos;Q&apos;</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="GetSignal_1_1_1_1" type="block">
              <template name="system/Routing/GetSignal"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-333.9763946533203" y="913.8829956054688"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Q</text>
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
                  <parameter name="tag" value="&apos;Q&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Saturation_1_2" type="block">
              <template name="system/Hybrid/Saturation"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="146.9139633178711" y="851.1320037841749"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="Hybrid/saturation.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Hybrid/saturation.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
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
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="upper" value="2"/>
                  <parameter name="lower" value="-1"/>
                  <parameter name="zc" value="0"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Constant" type="block">
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
                <position x="-718.6512145996094" y="833.8829956054688"/>
                <size width="144" height="24"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">battery_cell_capacity</text>
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
                  <parameter name="C" value="battery_cell_capacity"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="GetSignal" type="block">
              <template name="system/Routing/GetSignal"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-488.10723876953125" y="1046.0140380859375"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">temp</text>
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
                  <parameter name="tag" value="&apos;temp&apos;"/>
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
                <position x="-564.6512145996094" y="845.8829956054688"/>
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
            <block name="LookupTableND" type="block">
              <template name="system/LookupTables/LookupTableND"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-152.40432739257813" y="717.7247924804688"/>
                <size width="84" height="72"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="LookupTables/lookupTableND.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="LookupTables/lookupTableND.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
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
                <port name="pd" type="variableport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="derivative"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="&quot;&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nDims"/>
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
                <section name="Parameters">
                  <parameter name="nDims" value="2"/>
                  <parametertable name="dims">
                    <columns number="1">
                      <parameter name="dimi" value="[1,2]"/>
                    </columns>
                    <rows number="nDims">
                      <row>
                        <value>cell_name.LuT.cell_current</value>
                      </row>
                      <row>
                        <value>cell_name.LuT.cell_SOC</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parameter name="ff" value="cell_name.LuT.cell_V"/>
                  <parameter name="Method" value="&apos;Akima&apos;"/>
                  <parameter name="DoOutside" value="&apos;Hold&apos;"/>
                  <parameter name="derivative" value="0"/>
                  <parameter name="externalActivation" value="0"/>
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
                <position x="228.486572265625" y="871.1320037841749"/>
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
                <position x="-282.0232849121108" y="847.5508880615173"/>
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
            <block name="Temperature" type="regular_in_port">
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
                <position x="-623.2461547851563" y="1055.5384521484375"/>
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
                  <parameter name="portNumber" value="3"/>
                  <parameter name="outsize" value="[-1;-2]"/>
                  <parameter name="outtyp" value="&apos;inherit&apos;"/>
                  <parameter name="dept" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="SOC" type="regular_out_port">
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
                <position x="268.68255615234375" y="859.2454517439627"/>
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
            <block name="Cell Voltage" type="regular_out_port">
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
                <position x="9.117050170898438" y="743.7247924804686"/>
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
            <block name="Input Current" type="regular_in_port">
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
                <position x="-327.53147888183594" y="837.5508880615171"/>
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
            <block name="Load_type" type="regular_in_port">
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
                <position x="-622.4622802734327" y="971.9785003662109"/>
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
            <block name="status" type="regular_out_port">
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
                <position x="-468.8764038085985" y="971.9785003662109"/>
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
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SetSignal" port="1" iotype="in"/>
              <to block="Temperature" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Load_type" port="1" iotype="out"/>
              <to block="Check Load Type_1" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Check Load Type_1" port="1" iotype="out"/>
              <to block="status" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="normalize to capacity" port="1" iotype="out"/>
              <to block="SOC_1" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SOC_1" port="1" iotype="out"/>
              <to block="Saturation_1_2" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Saturation_1_2" port="1" iotype="out"/>
              <to block="Block" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Input Current" port="1" iotype="out"/>
              <to block="Block_1" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="GetSignal_1_1_1_1" port="1" iotype="out"/>
              <to block="normalize to capacity" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-273.05593109130865" y="933.8829956054688"/>
                <point x="-273.05593109130865" y="889.1320037841733"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SetSignal_1_5" port="1" iotype="in"/>
              <to block="Split" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Q Scope" port="1" iotype="in"/>
              <to block="Split" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Split" port="1" iotype="in"/>
              <to block="Constant" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="LookupTableND" port="1" iotype="out"/>
              <to block="Cell Voltage" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="LookupTableND" port="2" iotype="in"/>
              <to block="Block" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-162.40432739257813" y="806.0003662109375"/>
                <point x="228.48657226562517" y="806.0003662109375"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block" port="1" iotype="out"/>
              <to block="SOC" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="227.79825973510742" y="871.1320037841749"/>
                <point x="227.79825973510742" y="869.2454517439627"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="LookupTableND" port="1" iotype="in"/>
              <to block="Block_1" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-282.0232849121108" y="735.7247924804688"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_1" port="1" iotype="out"/>
              <to block="normalize to capacity" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-279.8334732055664" y="847.5508880615173"/>
                <point x="-279.83347320556646" y="853.1320037841733"/>
              </points>
            </link>
            <annotation name="Annotation_3_2" type="text">
              <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
              <background color="0,0,0,0"/>
              <position x="-15.822830200194971" y="805.0212249755882"/>
              <size width="108" height="28"/>
              <rotate angle="0"/>
              <text font="Arial,10" color="0,0,0,255">Coulomb Counting</text>
            </annotation>
            <context/>
            <graphics>
              <viewport width="800" height="800" topleftx="0" toplefty="0"/>
              <window width="800" height="800" topleftx="0" toplefty="0"/>
            </graphics>
          </diagram>
          <properties>
            <property name="masked" value="0"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="112,48,160,255"/>
            <position x="885.5101385116577" y="-684.2728652954102"/>
            <size width="252" height="228"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,24" align="center">Battery Cell</text>
            </texts>
            <images>
              <image name="image1" file="images/medium-percent-1926832_1280.png" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="images/medium-percent-1926832_1280.png" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="Cell Voltage" type="fixedport">
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
            <port name="SOC" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="status" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Input Current" type="fixedport">
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
            <port name="Load_type" type="fixedport">
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
            <port name="Temperature" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="left"/>
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
            <section name="Parameters">
              <parameter name="R0Param" value="R0Param" widget="lineedit" type="matrix" callback="" displayname="R0Param" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="temp_idx" value="temp_idx" widget="lineedit" type="matrix" callback="" displayname="temp_idx" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="GParam" value="GParam" widget="lineedit" type="matrix" callback="" displayname="GParam" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="RParam" value="RParam" widget="lineedit" type="matrix" callback="" displayname="RParam" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="QParam" value="QParam" widget="lineedit" type="matrix" callback="" displayname="QParam" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="etaParam" value="etaParam" widget="lineedit" type="matrix" callback="" displayname="etaParam" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="MParam" value="MParam" widget="lineedit" type="matrix" callback="" displayname="MParam" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="sample_time" value="sample_time" widget="lineedit" type="matrix" callback="" displayname="sample_time" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="RCParam" value="RCParam" widget="lineedit" type="matrix" callback="" displayname="RCParam" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="M0Param" value="M0Param" widget="lineedit" type="matrix" callback="" displayname="M0Param" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="SOC" value="SOC" widget="lineedit" type="matrix" callback="" displayname="SOC" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="OCV0" value="OCV0" widget="lineedit" type="matrix" callback="" displayname="OCV0" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
              <parameter name="OCVrel" value="OCVrel" widget="lineedit" type="matrix" callback="" displayname="OCVrel" tooltip="" unit="" dimensions="[-1;-2]" visible="1" enabled="1"/>
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
            <position x="755.7081604003906" y="-627.272865295409"/>
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
        <block name="Heat not available" type="block">
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
            <position x="1243.834716796875" y="-536.1473388671875"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">0</text>
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
              <parameter name="C" value="0"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Cell Temp" type="regular_in_port">
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
            <position x="778.216552734375" y="-504.2728652954099"/>
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
              <parameter name="portNumber" value="3"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="SOC" type="regular_out_port">
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
            <position x="1193.2869262695315" y="-580.2728652954102"/>
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
        <block name="I_cell" type="regular_out_port">
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
            <position x="1189.2584838867278" y="-742.7234497070305"/>
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
        <block name="v_cell" type="regular_out_port">
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
            <position x="1190.9745483398435" y="-656.2728652954121"/>
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
        <block name="Load" type="regular_in_port">
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
            <position x="731.0182495116635" y="-637.2728652954092"/>
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
        <block name="Load_type" type="regular_in_port">
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
            <position x="777.5867309570314" y="-580.2728652954098"/>
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
        <block name="Heat cell" type="regular_out_port">
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
            <position x="1340.463134765625" y="-526.1473388671875"/>
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
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Split" port="1" iotype="out"/>
          <to block="Battery Cell Model" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="875.5101385116604" y="-627.2728652954095"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Cell Temp" port="1" iotype="out"/>
          <to block="Battery Cell Model" port="3" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Load" port="1" iotype="out"/>
          <to block="Split" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Split" port="3" iotype="out"/>
          <to block="I_cell" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="824.5975952148444" y="-627.2728652954086"/>
            <point x="824.5975952148439" y="-732.7234497070328"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Battery Cell Model" port="2" iotype="out"/>
          <to block="SOC" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Battery Cell Model" port="1" iotype="out"/>
          <to block="v_cell" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Load_type" port="1" iotype="out"/>
          <to block="Battery Cell Model" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Heat not available" port="1" iotype="out"/>
          <to block="Heat cell" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <annotation name="Annotation_3" type="text">
          <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
          <background color="0,0,0,0"/>
          <position x="619.5899963378906" y="-825.0678482055664"/>
          <size width="690" height="38"/>
          <rotate angle="0"/>
          <text font="Arial,22,B" color="0,0,0,255">Battery Cell Modeling - Voltage LuT, Coulomb Counting</text>
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
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,0,255"/>
        <position x="725.4913940429688" y="1269.9693603515625"/>
        <size width="204" height="120"/>
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
        <port name="I_cell" type="fixedport">
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
        <port name="v_cell" type="fixedport">
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
        <port name="SOC" type="fixedport">
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
        <port name="Heat cell" type="fixedport">
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
        <port name="Load" type="fixedport">
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
        <port name="Load_type" type="fixedport">
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
        <port name="Cell Temp" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
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
    <block name="Load" type="block">
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
        <position x="564.4375" y="1231.9853515625"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">200</text>
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
          <parameter name="C" value="200"/>
          <parameter name="typ" value="&apos;double&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Load type (1= current)" type="block">
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
        <position x="562.7861938476563" y="1309.9693603515625"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
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
          <parameter name="C" value="1"/>
          <parameter name="typ" value="&apos;double&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Temp (unused)" type="block">
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
        <position x="579.7685546875" y="1381.8736572265625"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">25</text>
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
          <parameter name="C" value="25"/>
          <parameter name="typ" value="&apos;double&apos;"/>
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
        <position x="1004.3282470703125" y="1269.9693603515625"/>
        <size width="48" height="120"/>
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
        <port name="&quot;&quot; &quot;&quot; &quot;&quot; &quot;&quot;" type="variableport">
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
          <parameter name="nin" value="4"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[400,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="1"/>
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
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;&apos;"/>
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
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Load" port="1" iotype="out"/>
      <to block="Cell Voltage LuT, Coulomb Counting" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="676.9519653320311" y="1251.9853515625"/>
        <point x="676.951965332032" y="1289.9693603515625"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Load type (1= current)" port="1" iotype="out"/>
      <to block="Cell Voltage LuT, Coulomb Counting" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Temp (unused)" port="1" iotype="out"/>
      <to block="Cell Voltage LuT, Coulomb Counting" port="3" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="691.6102600097656" y="1401.8736572265625"/>
        <point x="691.6102600097656" y="1369.9693603515623"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Cell Voltage LuT, Coulomb Counting" port="1" iotype="out"/>
      <to block="Scope" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Cell Voltage LuT, Coulomb Counting" port="2" iotype="out"/>
      <to block="Scope" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Cell Voltage LuT, Coulomb Counting" port="3" iotype="out"/>
      <to block="Scope" port="3" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Cell Voltage LuT, Coulomb Counting" port="4" iotype="out"/>
      <to block="Scope" port="4" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <context>SOC_initial = 1.0</context>
    <graphics>
      <viewport width="800" height="800" topleftx="0" toplefty="0"/>
      <window width="800" height="800" topleftx="0" toplefty="0"/>
    </graphics>
  </diagram>
  <simulation>
    <properties>
      <property name="InitialTime" value="0"/>
      <property name="FinalTime" value="3600"/>
      <property name="RealTimeScale" value="0"/>
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
