<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" simplifyAlgorithm="0" simplifyDrawingTol="1" readOnly="0" labelsEnabled="0" version="3.10.4-A Coruña" minScale="1e+08" simplifyDrawingHints="0" maxScale="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" forceraster="0" symbollevels="0" enableorderby="0">
    <symbols>
      <symbol clip_to_extent="1" alpha="1" type="marker" force_rhr="0" name="0">
        <layer enabled="1" class="SvgMarker" locked="0" pass="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="254,0,225,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="arrows/NorthArrow_06.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0.4"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.333333"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>name</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory lineSizeType="MM" diagramOrientation="Up" rotationOffset="270" opacity="1" width="15" backgroundColor="#ffffff" scaleBasedVisibility="0" penWidth="0" minimumSize="0" minScaleDenominator="0" enabled="0" labelPlacementMethod="XHeight" scaleDependency="Area" lineSizeScale="3x:0,0,0,0,0,0" sizeType="MM" backgroundAlpha="255" maxScaleDenominator="1e+08" penColor="#000000" sizeScale="3x:0,0,0,0,0,0" barWidth="5" penAlpha="255" height="15">
      <fontProperties description="Ubuntu,10,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" showAll="1" placement="0" obstacle="0" dist="0" priority="0" zIndex="0">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="name">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="type">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="prefab">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="worldX">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="worldY">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="terrainX">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="terrainY">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="locationID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="name" index="0" name=""/>
    <alias field="type" index="1" name=""/>
    <alias field="prefab" index="2" name=""/>
    <alias field="worldX" index="3" name=""/>
    <alias field="worldY" index="4" name=""/>
    <alias field="terrainX" index="5" name=""/>
    <alias field="terrainY" index="6" name=""/>
    <alias field="locationID" index="7" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="name" applyOnUpdate="0" expression=""/>
    <default field="type" applyOnUpdate="0" expression=""/>
    <default field="prefab" applyOnUpdate="0" expression=""/>
    <default field="worldX" applyOnUpdate="0" expression=""/>
    <default field="worldY" applyOnUpdate="0" expression=""/>
    <default field="terrainX" applyOnUpdate="0" expression=""/>
    <default field="terrainY" applyOnUpdate="0" expression=""/>
    <default field="locationID" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" field="name" unique_strength="0" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" field="type" unique_strength="0" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" field="prefab" unique_strength="0" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" field="worldX" unique_strength="0" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" field="worldY" unique_strength="0" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" field="terrainX" unique_strength="0" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" field="terrainY" unique_strength="0" exp_strength="0" constraints="0"/>
    <constraint notnull_strength="0" field="locationID" unique_strength="0" exp_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="name" exp=""/>
    <constraint desc="" field="type" exp=""/>
    <constraint desc="" field="prefab" exp=""/>
    <constraint desc="" field="worldX" exp=""/>
    <constraint desc="" field="worldY" exp=""/>
    <constraint desc="" field="terrainX" exp=""/>
    <constraint desc="" field="terrainY" exp=""/>
    <constraint desc="" field="locationID" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field comment="" type="2" precision="0" subType="0" typeName="integer" expression="floor($x)" length="10" name="worldX"/>
    <field comment="" type="2" precision="0" subType="0" typeName="integer" expression="-ceil($Y)" length="10" name="worldY"/>
    <field comment="" type="2" precision="0" subType="0" typeName="integer" expression="100*(round($x - floor($x),2))" length="10" name="terrainX"/>
    <field comment="" type="2" precision="0" subType="0" typeName="integer" expression="100*(round($y - floor($y),2))" length="10" name="terrainY"/>
    <field comment="" type="10" precision="0" subType="0" typeName="string" expression="concat(if(worldx&lt;10,concat(0,worldX),worldX),if(terrainX&lt;10,concat(0,terrainX),terrainX),if(worldY&lt;10,concat(0,worldY), worldY),if(terrainY&lt;10,concat(0,terrainY),terrainY))" length="0" name="locationID"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;name&quot;">
    <columns>
      <column type="field" hidden="0" name="name" width="-1"/>
      <column type="field" hidden="0" name="type" width="-1"/>
      <column type="field" hidden="0" name="prefab" width="-1"/>
      <column type="field" hidden="0" name="worldX" width="-1"/>
      <column type="field" hidden="0" name="worldY" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
      <column type="field" hidden="0" name="terrainX" width="-1"/>
      <column type="field" hidden="0" name="terrainY" width="-1"/>
      <column type="field" hidden="0" name="locationID" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="0" name="locationID"/>
    <field editable="1" name="name"/>
    <field editable="1" name="prefab"/>
    <field editable="0" name="terrainX"/>
    <field editable="0" name="terrainY"/>
    <field editable="1" name="type"/>
    <field editable="0" name="worldX"/>
    <field editable="0" name="worldY"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="locationID"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="prefab"/>
    <field labelOnTop="0" name="terrainX"/>
    <field labelOnTop="0" name="terrainY"/>
    <field labelOnTop="0" name="type"/>
    <field labelOnTop="0" name="worldX"/>
    <field labelOnTop="0" name="worldY"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>name</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
