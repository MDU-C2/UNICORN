<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Project Documentation" Type="Folder">
			<Item Name="Documentation Images" Type="Folder">
				<Item Name="roboRIO_Project_Diagram.png" Type="Document" URL="../documentation/roboRIO_Project_Diagram.png"/>
			</Item>
			<Item Name="roboRIO Project Documentation.html" Type="Document" URL="../documentation/roboRIO Project Documentation.html"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="UnicornRIO1" Type="RT roboRIO">
		<Property Name="alias.name" Type="Str">UnicornRIO1</Property>
		<Property Name="alias.value" Type="Str">10.0.0.4</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,76F2;FPGAPersonality,roboRIO_FP_Custom;</Property>
		<Property Name="crio.ControllerPID" Type="Str">76F2</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/home/lvuser/natinst/bin/unicornMainStartup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">true</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="LED Control" Type="Folder">
			<Item Name="Add reset.vi" Type="VI" URL="../LED Control/Add reset.vi"/>
			<Item Name="fade.vi" Type="VI" URL="../LED Control/fade.vi"/>
			<Item Name="LED Main.vi" Type="VI" URL="../LED Control/LED Main.vi"/>
		</Item>
		<Item Name="Messages" Type="Folder">
			<Item Name="msgsBuilder_LaserScan.vi" Type="VI" URL="../msgsBuilder_LaserScan.vi"/>
			<Item Name="msgsBuilder_MasterMessage.vi" Type="VI" URL="../msgsBuilder_MasterMessage.vi"/>
		</Item>
		<Item Name="ROS for LabVIEW Software" Type="Folder">
			<Item Name="Devices" Type="Folder">
				<Item Name="Baxter" Type="Folder">
					<Item Name="Baxter Examples" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/Baxter Examples/.DS_Store"/>
						<Item Name="AllThingsBaxter_ROS.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/Baxter Examples/AllThingsBaxter_ROS.vi"/>
						<Item Name="JS_ArraytoCluster.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/Baxter Examples/JS_ArraytoCluster.vi"/>
						<Item Name="MainBaxterDemo.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/Baxter Examples/MainBaxterDemo.vi"/>
						<Item Name="Simple Playback Controller.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/Baxter Examples/Simple Playback Controller.vi"/>
					</Item>
					<Item Name="BaxterVIs" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/.DS_Store"/>
						<Item Name="ArmControl.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/ArmControl.vi"/>
						<Item Name="AssemblyState.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/AssemblyState.vi"/>
						<Item Name="BothArmsEffort.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/BothArmsEffort.vi"/>
						<Item Name="BothArmsPosition.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/BothArmsPosition.vi"/>
						<Item Name="BothArmsVelocity.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/BothArmsVelocity.vi"/>
						<Item Name="Calibrate Gripper.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Calibrate Gripper.vi"/>
						<Item Name="CameraList.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/CameraList.vi"/>
						<Item Name="CheckBaxterEnabled.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/CheckBaxterEnabled.vi"/>
						<Item Name="Close_Baxter.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Close_Baxter.vi"/>
						<Item Name="CloseBaxterCamera.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/CloseBaxterCamera.vi"/>
						<Item Name="Command_Goto.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Command_Goto.vi"/>
						<Item Name="Command_Joint_Angles.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Command_Joint_Angles.vi"/>
						<Item Name="CuffGraspButtons.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/CuffGraspButtons.vi"/>
						<Item Name="DigitalIORead.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/DigitalIORead.vi"/>
						<Item Name="DigitalIOWrapper.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/DigitalIOWrapper.vi"/>
						<Item Name="DigitalOutCommand.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/DigitalOutCommand.vi"/>
						<Item Name="Enable_Baxter.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Enable_Baxter.vi"/>
						<Item Name="GripperPosition.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/GripperPosition.vi"/>
						<Item Name="HeadPan.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/HeadPan.vi"/>
						<Item Name="KillCamera.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/KillCamera.vi"/>
						<Item Name="leds_on_off.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/leds_on_off.vi"/>
						<Item Name="LeftArmEffort.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/LeftArmEffort.vi"/>
						<Item Name="LeftArmPosition.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/LeftArmPosition.vi"/>
						<Item Name="LeftArmVelocity.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/LeftArmVelocity.vi"/>
						<Item Name="LeftGripper.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/LeftGripper.vi"/>
						<Item Name="LowerCuffButton.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/LowerCuffButton.vi"/>
						<Item Name="MoveBaxterArms.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/MoveBaxterArms.vi"/>
						<Item Name="MovePosition_Primitive.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/MovePosition_Primitive.vi"/>
						<Item Name="MoveVelocity.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/MoveVelocity.vi"/>
						<Item Name="NavigatorInputPrimitive.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/NavigatorInputPrimitive.vi"/>
						<Item Name="Nod_Head.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Nod_Head.vi"/>
						<Item Name="openCamera.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/openCamera.vi"/>
						<Item Name="Read_Camera.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Read_Camera.vi"/>
						<Item Name="Read_Endpoint_State.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Read_Endpoint_State.vi"/>
						<Item Name="read_green_level.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/read_green_level.vi"/>
						<Item Name="Read_Gripper_State.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Read_Gripper_State.vi"/>
						<Item Name="read_halo_level.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/read_halo_level.vi"/>
						<Item Name="Read_IR.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Read_IR.vi"/>
						<Item Name="Read_Joint_States.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Read_Joint_States.vi"/>
						<Item Name="read_red_level.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/read_red_level.vi"/>
						<Item Name="Read_Sonar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Read_Sonar.vi"/>
						<Item Name="RightArmEffort.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/RightArmEffort.vi"/>
						<Item Name="RightArmPosition.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/RightArmPosition.vi"/>
						<Item Name="RightArmVelocity.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/RightArmVelocity.vi"/>
						<Item Name="RightGripper.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/RightGripper.vi"/>
						<Item Name="SetGreenLevel.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SetGreenLevel.vi"/>
						<Item Name="SetIndividualJointEffort.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SetIndividualJointEffort.vi"/>
						<Item Name="SetIndividualJointPositions.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SetIndividualJointPositions.vi"/>
						<Item Name="SetIndividualJoints.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SetIndividualJoints.vi"/>
						<Item Name="SetIndividualJointVelocity.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SetIndividualJointVelocity.vi"/>
						<Item Name="SetRedLevel.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SetRedLevel.vi"/>
						<Item Name="SetSonars.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SetSonars.vi"/>
						<Item Name="SimpleEndpointController.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SimpleEndpointController.vi"/>
						<Item Name="SolveIKPosition.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/SolveIKPosition.vi"/>
						<Item Name="Sonar_Control.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/Sonar_Control.vi"/>
						<Item Name="sonarSetLights.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/BaxterVIs/sonarSetLights.vi"/>
					</Item>
					<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/.DS_Store"/>
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Baxter/dir.mnu"/>
				</Item>
				<Item Name="NAO" Type="Folder">
					<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/NAO/.DS_Store"/>
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/NAO/dir.mnu"/>
					<Item Name="move_nao.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/NAO/move_nao.vi"/>
					<Item Name="nao_sonar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/NAO/nao_sonar.vi"/>
				</Item>
				<Item Name="ROSRIO" Type="Folder">
					<Item Name="documentation" Type="Folder">
						<Item Name="myRIO Project Documentation.html" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/documentation/myRIO Project Documentation.html"/>
						<Item Name="myRIO_Project_Diagram.gif" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/documentation/myRIO_Project_Diagram.gif"/>
						<Item Name="noloc_note.gif" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/documentation/noloc_note.gif"/>
					</Item>
					<Item Name="ROSRIO Examples" Type="Folder">
						<Item Name="SampleClient.vi alias" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ROSRIO Examples/SampleClient.vi alias"/>
						<Item Name="SampleMaster for myRIO.vi alias" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ROSRIO Examples/SampleMaster for myRIO.vi alias"/>
						<Item Name="SampleMaster.vi alias" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ROSRIO Examples/SampleMaster.vi alias"/>
						<Item Name="SuperSampleMaster.vi alias" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ROSRIO Examples/SuperSampleMaster.vi alias"/>
					</Item>
					<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/.DS_Store"/>
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/dir.mnu"/>
					<Item Name="GetIPAddress.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/GetIPAddress.vi"/>
					<Item Name="Publish.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/Publish.vi"/>
					<Item Name="ROSRIOv2.aliases" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ROSRIOv2.aliases"/>
					<Item Name="ROSRIOv2.lvlps" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ROSRIOv2.lvlps"/>
					<Item Name="ROSRIOv2.lvproj" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ROSRIOv2.lvproj"/>
					<Item Name="ServiceClient.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ServiceClient.vi"/>
					<Item Name="ServiceHostReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ServiceHostReply.vi"/>
					<Item Name="ServiceHostWait.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/ServiceHostWait.vi"/>
					<Item Name="Subscribe.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/ROSRIO/Subscribe.vi"/>
				</Item>
				<Item Name="Turtlebot" Type="Folder">
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Turtlebot/dir.mnu"/>
					<Item Name="Odometry.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Turtlebot/Odometry.vi"/>
					<Item Name="Teleop.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/Turtlebot/Teleop.vi"/>
				</Item>
				<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/.DS_Store"/>
				<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Devices/dir.mnu"/>
			</Item>
			<Item Name="Examples" Type="Folder">
				<Item Name="Baxter Examples" Type="Folder">
					<Item Name="Buttons Example.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/Baxter Examples/Buttons Example.vi"/>
					<Item Name="Camera Example.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/Baxter Examples/Camera Example.vi"/>
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/Baxter Examples/dir.mnu"/>
					<Item Name="Grippers Example.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/Baxter Examples/Grippers Example.vi"/>
					<Item Name="Head Nod Example.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/Baxter Examples/Head Nod Example.vi"/>
					<Item Name="Joints Example.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/Baxter Examples/Joints Example.vi"/>
				</Item>
				<Item Name="ROS Examples" Type="Folder">
					<Item Name="PublisherExample.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROS Examples/PublisherExample.vi"/>
					<Item Name="ROS_Master_Example.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROS Examples/ROS_Master_Example.vi"/>
					<Item Name="ServiceClientExample.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROS Examples/ServiceClientExample.vi"/>
					<Item Name="ServiceProviderExample.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROS Examples/ServiceProviderExample.vi"/>
					<Item Name="SubscriberExample.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROS Examples/SubscriberExample.vi"/>
					<Item Name="Turtlesim Publish.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROS Examples/Turtlesim Publish.vi"/>
					<Item Name="Turtlesim Subscribe.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROS Examples/Turtlesim Subscribe.vi"/>
				</Item>
				<Item Name="ROSRIO Examples" Type="Folder">
					<Item Name="myRIO" Type="Folder">
						<Item Name="documentation" Type="Folder">
							<Item Name="myRIO and roboRIO Help.pdf" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/myRIO/documentation/myRIO and roboRIO Help.pdf"/>
						</Item>
						<Item Name="PublishToTopic.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/myRIO/PublishToTopic.vi"/>
						<Item Name="ROSforLabVIEWSoftware_myRIO.aliases" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/myRIO/ROSforLabVIEWSoftware_myRIO.aliases"/>
						<Item Name="ROSforLabVIEWSoftware_myRIO.lvlps" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/myRIO/ROSforLabVIEWSoftware_myRIO.lvlps"/>
						<Item Name="ROSforLabVIEWSoftware_myRIO.lvproj" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/myRIO/ROSforLabVIEWSoftware_myRIO.lvproj"/>
						<Item Name="SubscribeToTopic.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/myRIO/SubscribeToTopic.vi"/>
					</Item>
					<Item Name="roboRIO" Type="Folder">
						<Item Name="documentation" Type="Folder">
							<Item Name="myRIO and roboRIO Help.pdf" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/roboRIO/documentation/myRIO and roboRIO Help.pdf"/>
						</Item>
						<Item Name="PublishToTopic.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/roboRIO/PublishToTopic.vi"/>
						<Item Name="ROSforLabVIEWSoftware_roboRIO.aliases" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/roboRIO/ROSforLabVIEWSoftware_roboRIO.aliases"/>
						<Item Name="ROSforLabVIEWSoftware_roboRIO.lvlps" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/roboRIO/ROSforLabVIEWSoftware_roboRIO.lvlps"/>
						<Item Name="ROSforLabVIEWSoftware_roboRIO.lvproj" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/roboRIO/ROSforLabVIEWSoftware_roboRIO.lvproj"/>
						<Item Name="SubscribeToTopic.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/roboRIO/SubscribeToTopic.vi"/>
					</Item>
					<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/.DS_Store"/>
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/dir.mnu"/>
					<Item Name="SampleClient.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/SampleClient.vi"/>
					<Item Name="SampleMaster.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/SampleMaster.vi"/>
					<Item Name="SuperSampleMaster.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/ROSRIO Examples/SuperSampleMaster.vi"/>
				</Item>
				<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/.DS_Store"/>
				<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/Examples/dir.mnu"/>
			</Item>
			<Item Name="ROS" Type="Folder">
				<Item Name="Code" Type="Folder">
					<Item Name="Console" Type="Folder">
						<Item Name="HTTPServer" Type="Folder">
							<Item Name="CloseTCPIP.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/CloseTCPIP.vi"/>
							<Item Name="CreateWriteChunks.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/CreateWriteChunks.vi"/>
							<Item Name="EndOfLine_CRLF.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/EndOfLine_CRLF.vi"/>
							<Item Name="GetContentType.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/GetContentType.vi"/>
							<Item Name="GetMimeType.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/GetMimeType.vi"/>
							<Item Name="GetResponse.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/GetResponse.vi"/>
							<Item Name="ParseRequest.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/ParseRequest.vi"/>
							<Item Name="ReadHTMLFile.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/ReadHTMLFile.vi"/>
							<Item Name="ReadTCPIP.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/ReadTCPIP.vi"/>
							<Item Name="WriteChunk.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/WriteChunk.vi"/>
							<Item Name="WriteErrorCheck.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/WriteErrorCheck.vi"/>
							<Item Name="WriteTCPIP.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/HTTPServer/WriteTCPIP.vi"/>
						</Item>
						<Item Name="Servers" Type="Folder">
							<Item Name="ServerSubs" Type="Folder">
								<Item Name="images" Type="Folder">
									<Item Name="Connected.png" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/images/Connected.png"/>
									<Item Name="NotConnected.png" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/images/NotConnected.png"/>
									<Item Name="Nothing.png" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/images/Nothing.png"/>
									<Item Name="Registered.png" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/images/Registered.png"/>
								</Item>
								<Item Name="BuildDescription.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/BuildDescription.vi"/>
								<Item Name="DrawTopics.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/DrawTopics.vi"/>
								<Item Name="GetClickSelection.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/GetClickSelection.vi"/>
								<Item Name="GetStatusLine.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/GetStatusLine.vi"/>
								<Item Name="MyState.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/MyState.ctl"/>
								<Item Name="QueueToCommand.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/QueueToCommand.vi"/>
								<Item Name="ReadWriteTopicData.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/ReadWriteTopicData.vi"/>
								<Item Name="ReadXML_TCP.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/ReadXML_TCP.vi"/>
								<Item Name="ROSLog.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/ROSLog.ctl"/>
								<Item Name="ROSToQueue.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/ROSToQueue.vi"/>
								<Item Name="ServerRunCheck.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/ServerRunCheck.vi"/>
								<Item Name="ServoInfo.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/ServoInfo.ctl"/>
								<Item Name="TopicDef.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/ServerSubs/TopicDef.ctl"/>
							</Item>
							<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/Servers/.DS_Store"/>
						</Item>
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/.DS_Store"/>
						<Item Name="ConnToMasterErr.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/ConnToMasterErr.vi"/>
						<Item Name="GetAllPaths.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/GetAllPaths.vi"/>
						<Item Name="UpdateFPReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Console/UpdateFPReply.vi"/>
					</Item>
					<Item Name="ErrorHandling" Type="Folder">
						<Item Name="GetRunningServerErrors.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ErrorHandling/GetRunningServerErrors.vi"/>
					</Item>
					<Item Name="NewROS" Type="Folder">
						<Item Name="ROSNode.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/NewROS/ROSNode.vi"/>
						<Item Name="ROSPublisher.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/NewROS/ROSPublisher.vi"/>
						<Item Name="ROSServiceClient.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/NewROS/ROSServiceClient.vi"/>
						<Item Name="ROSServiceProvider.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/NewROS/ROSServiceProvider.vi"/>
						<Item Name="ROSSubscriber.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/NewROS/ROSSubscriber.vi"/>
					</Item>
					<Item Name="ROS_Cmds" Type="Folder">
						<Item Name="SlaveAPI" Type="Folder">
							<Item Name="Build" Type="Folder">
								<Item Name="getTopics_Reply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/SlaveAPI/Build/getTopics_Reply.vi"/>
								<Item Name="TopicRequest_Reply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/SlaveAPI/Build/TopicRequest_Reply.vi"/>
								<Item Name="TopicRequest_Request.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/SlaveAPI/Build/TopicRequest_Request.vi"/>
							</Item>
							<Item Name="Decode" Type="Folder">
								<Item Name="registerPublisherReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/SlaveAPI/Decode/registerPublisherReply.vi"/>
								<Item Name="topicRequest.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/SlaveAPI/Decode/topicRequest.vi"/>
								<Item Name="topicRequest_Reply_Decode.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/SlaveAPI/Decode/topicRequest_Reply_Decode.vi"/>
							</Item>
							<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/SlaveAPI/.DS_Store"/>
							<Item Name="RegisterSubPub.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/SlaveAPI/RegisterSubPub.vi"/>
						</Item>
						<Item Name="XMLCodes" Type="Folder">
							<Item Name="ArrayToTags.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/ArrayToTags.vi"/>
							<Item Name="BuildTag.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/BuildTag.vi"/>
							<Item Name="BuildTagArray.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/BuildTagArray.vi"/>
							<Item Name="CreateHeader.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/CreateHeader.vi"/>
							<Item Name="GetInnerXMLTag.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/GetInnerXMLTag.vi"/>
							<Item Name="GetXMLArrayTags.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/GetXMLArrayTags.vi"/>
							<Item Name="GetXMLTag.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/GetXMLTag.vi"/>
							<Item Name="GetXMLTagRobust.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/GetXMLTagRobust.vi"/>
							<Item Name="SendXML.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/SendXML.vi"/>
							<Item Name="TagsToArray.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/XMLCodes/TagsToArray.vi"/>
						</Item>
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/.DS_Store"/>
						<Item Name="DecodeLookupService.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/DecodeLookupService.vi"/>
						<Item Name="DecodeRegisterReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/DecodeRegisterReply.vi"/>
						<Item Name="ROS_lookupService.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/ROS_lookupService.vi"/>
						<Item Name="ROS_Register.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/ROS_Register.vi"/>
						<Item Name="TCPServiceInit.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Cmds/TCPServiceInit.vi"/>
					</Item>
					<Item Name="ROS_Master" Type="Folder">
						<Item Name="LoadAndRunMaster.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/LoadAndRunMaster.vi"/>
						<Item Name="ROS_Master.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master.ctl"/>
						<Item Name="ROS_Master_addPubSub.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_addPubSub.vi"/>
						<Item Name="ROS_Master_AddService.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_AddService.vi"/>
						<Item Name="ROS_Master_addToQueue.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_addToQueue.vi"/>
						<Item Name="ROS_Master_CantDoThat.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_CantDoThat.vi"/>
						<Item Name="ROS_Master_checkNode.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_checkNode.vi"/>
						<Item Name="ROS_Master_CleanNodes.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_CleanNodes.vi"/>
						<Item Name="ROS_Master_CloseAllNodes.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_CloseAllNodes.vi"/>
						<Item Name="ROS_Master_CloseAllServiceProviders.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_CloseAllServiceProviders.vi"/>
						<Item Name="ROS_Master_getPublishedTopicsReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_getPublishedTopicsReply.vi"/>
						<Item Name="ROS_Master_GetPubSubUnsubscribe.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_GetPubSubUnsubscribe.vi"/>
						<Item Name="ROS_Master_GetSubInfo.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_GetSubInfo.vi"/>
						<Item Name="ROS_Master_getSystemStateReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_getSystemStateReply.vi"/>
						<Item Name="ROS_Master_getTopicTypesReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_getTopicTypesReply.vi"/>
						<Item Name="ROS_Master_InventPID.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_InventPID.vi"/>
						<Item Name="ROS_Master_lookupNodeReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_lookupNodeReply.vi"/>
						<Item Name="ROS_Master_lookupServiceReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_lookupServiceReply.vi"/>
						<Item Name="ROS_Master_Main.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_Main.vi"/>
						<Item Name="ROS_Master_registerPublisherReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_registerPublisherReply.vi"/>
						<Item Name="ROS_MasteR_registerServiceReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_MasteR_registerServiceReply.vi"/>
						<Item Name="ROS_Master_registerSubscriberReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_registerSubscriberReply.vi"/>
						<Item Name="ROS_Master_removePubSub.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_removePubSub.vi"/>
						<Item Name="ROS_Master_removeService.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_removeService.vi"/>
						<Item Name="ROS_Master_setMasterPort.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_setMasterPort.vi"/>
						<Item Name="ROS_Master_unregisterPubSubReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_unregisterPubSubReply.vi"/>
						<Item Name="ROS_Master_UnregisterServiceText.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_UnregisterServiceText.vi"/>
						<Item Name="ROS_Master_unregServiceReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_unregServiceReply.vi"/>
						<Item Name="ROS_Master_updateNode.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_updateNode.vi"/>
						<Item Name="ROS_Master_WebPageServer.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Master_WebPageServer.vi"/>
						<Item Name="ROS_MasterSaveHTML.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_MasterSaveHTML.vi"/>
						<Item Name="ROS_Node.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Node.ctl"/>
						<Item Name="ROS_Service.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Service.ctl"/>
						<Item Name="ROS_Topic.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Master/ROS_Topic.ctl"/>
					</Item>
					<Item Name="ROS_Tools" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Tools/.DS_Store"/>
						<Item Name="CheckForErrors.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Tools/CheckForErrors.vi"/>
						<Item Name="CloseMaster.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Tools/CloseMaster.vi"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Tools/dir.mnu"/>
						<Item Name="OpenMasterWebPages.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Tools/OpenMasterWebPages.vi"/>
						<Item Name="OpenNodes.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Tools/OpenNodes.vi"/>
						<Item Name="WaitForMaster.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Tools/WaitForMaster.vi"/>
					</Item>
					<Item Name="SubVIs" Type="Folder">
						<Item Name="LogFileCodes" Type="Folder">
							<Item Name="BuildServerTitleText.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/LogFileCodes/BuildServerTitleText.vi"/>
							<Item Name="BuildTitleString.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/LogFileCodes/BuildTitleString.vi"/>
							<Item Name="ExtractLogTokens.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/LogFileCodes/ExtractLogTokens.vi"/>
							<Item Name="GetLogFilePath.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/LogFileCodes/GetLogFilePath.vi"/>
							<Item Name="GetOldData.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/LogFileCodes/GetOldData.vi"/>
							<Item Name="RogersLog.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/LogFileCodes/RogersLog.vi"/>
						</Item>
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/.DS_Store"/>
						<Item Name="_ROSControl.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/_ROSControl.ctl"/>
						<Item Name="_ROSDirection.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/_ROSDirection.ctl"/>
						<Item Name="AddToOldMasters.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/AddToOldMasters.vi"/>
						<Item Name="AddToQueue.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/AddToQueue.vi"/>
						<Item Name="AddToTopicsGlobal.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/AddToTopicsGlobal.vi"/>
						<Item Name="BaxterArmsSmall.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/BaxterArmsSmall.ctl"/>
						<Item Name="BaxterButtons.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/BaxterButtons.ctl"/>
						<Item Name="BaxterCamera.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/BaxterCamera.ctl"/>
						<Item Name="BaxterSide.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/BaxterSide.ctl"/>
						<Item Name="BuildParamsMsg.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/BuildParamsMsg.vi"/>
						<Item Name="BuildUpdatePublisherText.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/BuildUpdatePublisherText.vi"/>
						<Item Name="CheckBuildFolder.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckBuildFolder.vi"/>
						<Item Name="CheckForAlreadyRegistered.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckForAlreadyRegistered.vi"/>
						<Item Name="CheckforLiveConnections.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckforLiveConnections.vi"/>
						<Item Name="CheckForNewTopic.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckForNewTopic.vi"/>
						<Item Name="CheckMasterConnection.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckMasterConnection.vi"/>
						<Item Name="CheckMouseClicks.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckMouseClicks.vi"/>
						<Item Name="CheckNodeName.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckNodeName.vi"/>
						<Item Name="CheckReplyError.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckReplyError.vi"/>
						<Item Name="CheckServerRunningStatus.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckServerRunningStatus.vi"/>
						<Item Name="CheckValueChange.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckValueChange.vi"/>
						<Item Name="CheckWatchdogTimer.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CheckWatchdogTimer.vi"/>
						<Item Name="CleanupString.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CleanupString.vi"/>
						<Item Name="ClearOldNodeHTMLFiles.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ClearOldNodeHTMLFiles.vi"/>
						<Item Name="ClearPortList.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ClearPortList.vi"/>
						<Item Name="CombineQueueText.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CombineQueueText.vi"/>
						<Item Name="ConnectionHeaderParse.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ConnectionHeaderParse.vi"/>
						<Item Name="ConnectionHeaderReply.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ConnectionHeaderReply.vi"/>
						<Item Name="ConnectToPub.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ConnectToPub.vi"/>
						<Item Name="ConvertErrToString.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ConvertErrToString.vi"/>
						<Item Name="ConvertStringtoROS.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ConvertStringtoROS.vi"/>
						<Item Name="ConvertVItoHTML.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ConvertVItoHTML.vi"/>
						<Item Name="CreateShutdownXML.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/CreateShutdownXML.vi"/>
						<Item Name="DigitalIOComponents.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/DigitalIOComponents.ctl"/>
						<Item Name="ErrListing.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ErrListing.ctl"/>
						<Item Name="GetErrCodes.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetErrCodes.vi"/>
						<Item Name="GetFIFOQueue.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetFIFOQueue.vi"/>
						<Item Name="GetMessageFile.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetMessageFile.vi"/>
						<Item Name="GetMyIPAddress.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetMyIPAddress.vi"/>
						<Item Name="getOpenPort.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/getOpenPort.vi"/>
						<Item Name="GetPubSubListing.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetPubSubListing.vi"/>
						<Item Name="GetPubUpdates.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetPubUpdates.vi"/>
						<Item Name="GetQueueValue.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetQueueValue.vi"/>
						<Item Name="GetRequestInfoForLog.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetRequestInfoForLog.vi"/>
						<Item Name="GetRidOf56.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetRidOf56.vi"/>
						<Item Name="GetRidOf66.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetRidOf66.vi"/>
						<Item Name="GetROSfromTopic.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetROSfromTopic.vi"/>
						<Item Name="GetRunningServerInfo.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetRunningServerInfo.vi"/>
						<Item Name="GetServerNamesAndContents.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetServerNamesAndContents.vi"/>
						<Item Name="GetServerNiceName.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetServerNiceName.vi"/>
						<Item Name="GetServerVIName.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetServerVIName.vi"/>
						<Item Name="GetServiceProviderXML.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetServiceProviderXML.vi"/>
						<Item Name="GetTagsForPreferences.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetTagsForPreferences.vi"/>
						<Item Name="getTime.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/getTime.vi"/>
						<Item Name="GetTopicNode_etc.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetTopicNode_etc.vi"/>
						<Item Name="GetURI&amp;Port.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetURI&amp;Port.vi"/>
						<Item Name="GetWriteQueue.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/GetWriteQueue.vi"/>
						<Item Name="hexStringLength.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/hexStringLength.vi"/>
						<Item Name="isPrimitiveType.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/isPrimitiveType.vi"/>
						<Item Name="JointMode.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/JointMode.ctl"/>
						<Item Name="ListenForSubscriber.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ListenForSubscriber.vi"/>
						<Item Name="messageDefinitionParse.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/messageDefinitionParse.vi"/>
						<Item Name="NewIP.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/NewIP.vi"/>
						<Item Name="NodifyROS.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/NodifyROS.vi"/>
						<Item Name="ParseClients.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ParseClients.vi"/>
						<Item Name="ParseColor.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ParseColor.vi"/>
						<Item Name="ParseColorDisp.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ParseColorDisp.vi"/>
						<Item Name="ParsedivClick.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ParsedivClick.vi"/>
						<Item Name="ParsedivID.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ParsedivID.vi"/>
						<Item Name="ParseLogHTML.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ParseLogHTML.vi"/>
						<Item Name="RedefineMasterIP.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/RedefineMasterIP.vi"/>
						<Item Name="RedOrGreen.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/RedOrGreen.vi"/>
						<Item Name="RegisterPubSub.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/RegisterPubSub.vi"/>
						<Item Name="removeComments.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/removeComments.vi"/>
						<Item Name="ReplyNoErr.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ReplyNoErr.vi"/>
						<Item Name="resolveEmbeddedTypes.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/resolveEmbeddedTypes.vi"/>
						<Item Name="ROS_UDP Server.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/ROS_UDP Server.vi"/>
						<Item Name="SaveReadPrefs.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/SaveReadPrefs.vi"/>
						<Item Name="searchROSMsg.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/searchROSMsg.vi"/>
						<Item Name="showrunningvis.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/showrunningvis.vi"/>
						<Item Name="StartSeparateServer.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/StartSeparateServer.vi"/>
						<Item Name="StartService.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/StartService.vi"/>
						<Item Name="SubscriberRequestTopic.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/SubscriberRequestTopic.vi"/>
						<Item Name="TCPROSSubscriberInit.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/TCPROSSubscriberInit.vi"/>
						<Item Name="TranslateRequestTopic.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/TranslateRequestTopic.vi"/>
						<Item Name="UnRegisterPubSub.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/UnRegisterPubSub.vi"/>
						<Item Name="UpdatePortHTMLPage.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/UpdatePortHTMLPage.vi"/>
						<Item Name="UpdatePublishers.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/UpdatePublishers.vi"/>
						<Item Name="UpdateStatusOnNode.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/UpdateStatusOnNode.vi"/>
						<Item Name="WaitForGoodIPAddress.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/WaitForGoodIPAddress.vi"/>
						<Item Name="WaitForPubSetup.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/WaitForPubSetup.vi"/>
						<Item Name="WaitforServerToStart.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/WaitforServerToStart.vi"/>
						<Item Name="WaitForStartup.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/SubVIs/WaitForStartup.vi"/>
					</Item>
					<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/.DS_Store"/>
					<Item Name="_ROSDefinition.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/_ROSDefinition.vi"/>
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/dir.mnu"/>
					<Item Name="JointPositions.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/JointPositions.ctl"/>
					<Item Name="ROS_Loop_Rate.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Loop_Rate.vi"/>
					<Item Name="ROS_Topic_Close.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Close.vi"/>
					<Item Name="ROS_Topic_Close_Primitive.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Close_Primitive.vi"/>
					<Item Name="ROS_Topic_Init.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Init.vi"/>
					<Item Name="ROS_Topic_Read.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Read.vi"/>
					<Item Name="ROS_Topic_Read_Primative.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Read_Primative.vi"/>
					<Item Name="ROS_Topic_Repeat.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Repeat.vi"/>
					<Item Name="ROS_Topic_Write.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Write.vi"/>
					<Item Name="ROS_Topic_Write_Continuous_Primitive.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Write_Continuous_Primitive.vi"/>
					<Item Name="ROS_Topic_Write_Primitive.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Write_Primitive.vi"/>
					<Item Name="ROS_Topic_Write_Stop_Continuous_Primitive.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Topic_Write_Stop_Continuous_Primitive.vi"/>
					<Item Name="ROS_Wait.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Wait.vi"/>
					<Item Name="ROSErrorCheck.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROSErrorCheck.vi"/>
					<Item Name="Slider.ctl" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/Slider.ctl"/>
				</Item>
				<Item Name="MessageBuilding" Type="Folder">
					<Item Name="baxter_core_msgs" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/.DS_Store"/>
						<Item Name="add_CameraControl.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/add_CameraControl.vi"/>
						<Item Name="add_CameraOpen.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/add_CameraOpen.vi"/>
						<Item Name="add_CameraSettings.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/add_CameraSettings.vi"/>
						<Item Name="add_DigitalOutputCommand.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/add_DigitalOutputCommand.vi"/>
						<Item Name="add_EndEffectorCommand.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/add_EndEffectorCommand.vi"/>
						<Item Name="add_HeadPan.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/add_HeadPan.vi"/>
						<Item Name="add_JointCommand.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/add_JointCommand.vi"/>
						<Item Name="add_SetSonarLights.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/add_SetSonarLights.vi"/>
						<Item Name="AnalogOutputCommand.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/AnalogOutputCommand.vi"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/baxter_core_msgs/dir.mnu"/>
					</Item>
					<Item Name="geometry_msgs" Type="Folder">
						<Item Name="stamped" Type="Folder">
							<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/.DS_Store"/>
							<Item Name="add_AccelStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_AccelStamped.vi"/>
							<Item Name="add_AccelWithCovarianceStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_AccelWithCovarianceStamped.vi"/>
							<Item Name="add_InertiaStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_InertiaStamped.vi"/>
							<Item Name="add_PointStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_PointStamped.vi"/>
							<Item Name="add_pose_stamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_pose_stamped.vi"/>
							<Item Name="add_PoseWithCovarianceStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_PoseWithCovarianceStamped.vi"/>
							<Item Name="add_QuaternionStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_QuaternionStamped.vi"/>
							<Item Name="add_TransformStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_TransformStamped.vi"/>
							<Item Name="add_TwistStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_TwistStamped.vi"/>
							<Item Name="add_Vector3Stamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_Vector3Stamped.vi"/>
							<Item Name="add_WrenchStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/add_WrenchStamped.vi"/>
							<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/stamped/dir.mnu"/>
						</Item>
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/.DS_Store"/>
						<Item Name="add_Accel.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_Accel.vi"/>
						<Item Name="add_AccelWithCovariance.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_AccelWithCovariance.vi"/>
						<Item Name="add_Inertia.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_Inertia.vi"/>
						<Item Name="add_point.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_point.vi"/>
						<Item Name="add_point32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_point32.vi"/>
						<Item Name="add_pose.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_pose.vi"/>
						<Item Name="add_Pose2D.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_Pose2D.vi"/>
						<Item Name="add_PoseWithCovariance.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_PoseWithCovariance.vi"/>
						<Item Name="add_quaternion.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_quaternion.vi"/>
						<Item Name="add_Transform.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_Transform.vi"/>
						<Item Name="add_twist.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_twist.vi"/>
						<Item Name="add_vector3.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_vector3.vi"/>
						<Item Name="add_Wrench.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/add_Wrench.vi"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/geometry_msgs/dir.mnu"/>
					</Item>
					<Item Name="sensor_msgs" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/sensor_msgs/.DS_Store"/>
						<Item Name="add_Image.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/sensor_msgs/add_Image.vi"/>
						<Item Name="add_range.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/sensor_msgs/add_range.vi"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/sensor_msgs/dir.mnu"/>
					</Item>
					<Item Name="std_msgs" Type="Folder">
						<Item Name="subs" Type="Folder">
							<Item Name="boolArray.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/boolArray.vi"/>
							<Item Name="boolScalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/boolScalar.vi"/>
							<Item Name="durationArray.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/durationArray.vi"/>
							<Item Name="durationScalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/durationScalar.vi"/>
							<Item Name="float32Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/float32Array.vi"/>
							<Item Name="float32Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/float32Scalar.vi"/>
							<Item Name="float64Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/float64Array.vi"/>
							<Item Name="float64Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/float64Scalar.vi"/>
							<Item Name="i8Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/i8Array.vi"/>
							<Item Name="i8Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/i8Scalar.vi"/>
							<Item Name="i16Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/i16Array.vi"/>
							<Item Name="i16Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/i16Scalar.vi"/>
							<Item Name="i32Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/i32Array.vi"/>
							<Item Name="i32Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/i32Scalar.vi"/>
							<Item Name="i64Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/i64Array.vi"/>
							<Item Name="i64Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/i64Scalar.vi"/>
							<Item Name="stringArray.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/stringArray.vi"/>
							<Item Name="stringScalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/stringScalar.vi"/>
							<Item Name="timeArray.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/timeArray.vi"/>
							<Item Name="timeScalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/timeScalar.vi"/>
							<Item Name="u8Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/u8Array.vi"/>
							<Item Name="u8Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/u8Scalar.vi"/>
							<Item Name="u16Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/u16Array.vi"/>
							<Item Name="u16Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/u16Scalar.vi"/>
							<Item Name="u32Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/u32Array.vi"/>
							<Item Name="u32Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/u32Scalar.vi"/>
							<Item Name="u64Array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/u64Array.vi"/>
							<Item Name="u64Scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/subs/u64Scalar.vi"/>
						</Item>
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/.DS_Store"/>
						<Item Name="add_bool.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_bool.vi"/>
						<Item Name="add_colorRGBA.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_colorRGBA.vi"/>
						<Item Name="add_duration.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_duration.vi"/>
						<Item Name="add_float32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_float32.vi"/>
						<Item Name="add_float64.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_float64.vi"/>
						<Item Name="add_Header.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_Header.vi"/>
						<Item Name="add_int8.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_int8.vi"/>
						<Item Name="add_int16.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_int16.vi"/>
						<Item Name="add_int32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_int32.vi"/>
						<Item Name="add_int64.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_int64.vi"/>
						<Item Name="add_MultiArrayDimension.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_MultiArrayDimension.vi"/>
						<Item Name="add_MultiArrayLayout.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_MultiArrayLayout.vi"/>
						<Item Name="add_string.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_string.vi"/>
						<Item Name="add_time.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_time.vi"/>
						<Item Name="add_uint8.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_uint8.vi"/>
						<Item Name="add_uint16.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_uint16.vi"/>
						<Item Name="add_uint32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_uint32.vi"/>
						<Item Name="add_uint64.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/add_uint64.vi"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/std_msgs/dir.mnu"/>
					</Item>
					<Item Name="subs" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/subs/.DS_Store"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/subs/dir.mnu"/>
						<Item Name="wrap_DigitalOut.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/subs/wrap_DigitalOut.vi"/>
						<Item Name="wrap_JointPositions.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/subs/wrap_JointPositions.vi"/>
					</Item>
					<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/.DS_Store"/>
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/dir.mnu"/>
					<Item Name="getTimeStamp.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/getTimeStamp.vi"/>
					<Item Name="prependLength.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/prependLength.vi"/>
					<Item Name="README.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageBuilding/README.txt"/>
				</Item>
				<Item Name="MessageParsing" Type="Folder">
					<Item Name="_old revs" Type="Folder">
						<Item Name="pathtest.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/_old revs/pathtest.vi"/>
						<Item Name="ROS_ParseMsg.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/_old revs/ROS_ParseMsg.vi"/>
						<Item Name="ROS_ParseMsg_r2.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/_old revs/ROS_ParseMsg_r2.vi"/>
					</Item>
					<Item Name="baxter_core_messages" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/.DS_Store"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/dir.mnu"/>
						<Item Name="head_state_parse.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/head_state_parse.vi"/>
						<Item Name="parse_analog_output_state.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_analog_output_state.vi"/>
						<Item Name="parse_assembly_state.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_assembly_state.vi"/>
						<Item Name="parse_digital_io_command.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_digital_io_command.vi"/>
						<Item Name="parse_digital_io_state.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_digital_io_state.vi"/>
						<Item Name="parse_EndEffectorState.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_EndEffectorState.vi"/>
						<Item Name="parse_endpoint_state.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_endpoint_state.vi"/>
						<Item Name="parse_gripper_state.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_gripper_state.vi"/>
						<Item Name="parse_itb.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_itb.vi"/>
						<Item Name="parse_list_cameras.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_list_cameras.vi"/>
						<Item Name="parse_solve_position_ik_resp.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/baxter_core_messages/parse_solve_position_ik_resp.vi"/>
					</Item>
					<Item Name="conversions" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/conversions/.DS_Store"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/conversions/dir.mnu"/>
						<Item Name="PRY_to_Quat.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/conversions/PRY_to_Quat.vi"/>
						<Item Name="Quat_to_PRY.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/conversions/Quat_to_PRY.vi"/>
					</Item>
					<Item Name="geometry_msgs" Type="Folder">
						<Item Name="stamped" Type="Folder">
							<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/.DS_Store"/>
							<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/dir.mnu"/>
							<Item Name="parse_AccelStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_AccelStamped.vi"/>
							<Item Name="parse_AccelWithCovarianceStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_AccelWithCovarianceStamped.vi"/>
							<Item Name="parse_InertiaStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_InertiaStamped.vi"/>
							<Item Name="parse_PointStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_PointStamped.vi"/>
							<Item Name="parse_PoseStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_PoseStamped.vi"/>
							<Item Name="parse_QuaternionStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_QuaternionStamped.vi"/>
							<Item Name="parse_TransformStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_TransformStamped.vi"/>
							<Item Name="parse_TwistStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_TwistStamped.vi"/>
							<Item Name="parse_Vector3Stamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_Vector3Stamped.vi"/>
							<Item Name="parse_WrenchStamped.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/stamped/parse_WrenchStamped.vi"/>
						</Item>
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/.DS_Store"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/dir.mnu"/>
						<Item Name="parse_accel.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_accel.vi"/>
						<Item Name="parse_AccelWithCovariance.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_AccelWithCovariance.vi"/>
						<Item Name="parse_Inertia.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_Inertia.vi"/>
						<Item Name="parse_point.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_point.vi"/>
						<Item Name="parse_point32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_point32.vi"/>
						<Item Name="parse_pose.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_pose.vi"/>
						<Item Name="parse_Pose2D.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_Pose2D.vi"/>
						<Item Name="parse_poseWithCovariance.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_poseWithCovariance.vi"/>
						<Item Name="parse_quaternion.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_quaternion.vi"/>
						<Item Name="parse_Transform.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_Transform.vi"/>
						<Item Name="parse_twist.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_twist.vi"/>
						<Item Name="parse_twistWithCovariance.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_twistWithCovariance.vi"/>
						<Item Name="parse_vector3.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_vector3.vi"/>
						<Item Name="parse_wrench.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/geometry_msgs/parse_wrench.vi"/>
					</Item>
					<Item Name="nav_msgs" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/nav_msgs/.DS_Store"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/nav_msgs/dir.mnu"/>
						<Item Name="parse_Odometry.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/nav_msgs/parse_Odometry.vi"/>
					</Item>
					<Item Name="sensor_msgs" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/.DS_Store"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/dir.mnu"/>
						<Item Name="parse_channel_float32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/parse_channel_float32.vi"/>
						<Item Name="parse_image.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/parse_image.vi"/>
						<Item Name="parse_joint_state.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/parse_joint_state.vi"/>
						<Item Name="parse_point_cloud.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/parse_point_cloud.vi"/>
						<Item Name="parse_point_cloud2.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/parse_point_cloud2.vi"/>
						<Item Name="parse_point_field.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/parse_point_field.vi"/>
						<Item Name="parse_range.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/sensor_msgs/parse_range.vi"/>
					</Item>
					<Item Name="std_msgs" Type="Folder">
						<Item Name="subs" Type="Folder">
							<Item Name="parse_bool_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_bool_array.vi"/>
							<Item Name="parse_bool_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_bool_scalar.vi"/>
							<Item Name="parse_duration_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_duration_array.vi"/>
							<Item Name="parse_duration_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_duration_scalar.vi"/>
							<Item Name="parse_float32_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_float32_array.vi"/>
							<Item Name="parse_float32_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_float32_scalar.vi"/>
							<Item Name="parse_float64_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_float64_array.vi"/>
							<Item Name="parse_float64_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_float64_scalar.vi"/>
							<Item Name="parse_i8_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_i8_array.vi"/>
							<Item Name="parse_i8_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_i8_scalar.vi"/>
							<Item Name="parse_i16_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_i16_array.vi"/>
							<Item Name="parse_i16_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_i16_scalar.vi"/>
							<Item Name="parse_i32_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_i32_array.vi"/>
							<Item Name="parse_i32_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_i32_scalar.vi"/>
							<Item Name="parse_i64_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_i64_array.vi"/>
							<Item Name="parse_i64_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_i64_scalar.vi"/>
							<Item Name="parse_string_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_string_array.vi"/>
							<Item Name="parse_string_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_string_scalar.vi"/>
							<Item Name="parse_time_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_time_array.vi"/>
							<Item Name="parse_time_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_time_scalar.vi"/>
							<Item Name="parse_u8_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_u8_array.vi"/>
							<Item Name="parse_u8_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_u8_scalar.vi"/>
							<Item Name="parse_u16_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_u16_array.vi"/>
							<Item Name="parse_u16_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_u16_scalar.vi"/>
							<Item Name="parse_u32_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_u32_array.vi"/>
							<Item Name="parse_u32_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_u32_scalar.vi"/>
							<Item Name="parse_u64_array.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_u64_array.vi"/>
							<Item Name="parse_u64_scalar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/subs/parse_u64_scalar.vi"/>
						</Item>
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/.DS_Store"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/dir.mnu"/>
						<Item Name="parse_bool.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_bool.vi"/>
						<Item Name="parse_colorRGBA.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_colorRGBA.vi"/>
						<Item Name="parse_duration.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_duration.vi"/>
						<Item Name="parse_float32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_float32.vi"/>
						<Item Name="parse_float64.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_float64.vi"/>
						<Item Name="parse_header.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_header.vi"/>
						<Item Name="parse_int8.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_int8.vi"/>
						<Item Name="parse_int16.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_int16.vi"/>
						<Item Name="parse_int32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_int32.vi"/>
						<Item Name="parse_int64.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_int64.vi"/>
						<Item Name="parse_MultiArrayDimension.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_MultiArrayDimension.vi"/>
						<Item Name="parse_MultiArrayLayout.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_MultiArrayLayout.vi"/>
						<Item Name="parse_primitive.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_primitive.vi"/>
						<Item Name="parse_string.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_string.vi"/>
						<Item Name="parse_time.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_time.vi"/>
						<Item Name="parse_uint8.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_uint8.vi"/>
						<Item Name="parse_uint16.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_uint16.vi"/>
						<Item Name="parse_uint32.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_uint32.vi"/>
						<Item Name="parse_uint64.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/std_msgs/parse_uint64.vi"/>
					</Item>
					<Item Name="subs" Type="Folder">
						<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/subs/.DS_Store"/>
						<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/subs/dir.mnu"/>
						<Item Name="getArrayLength.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/subs/getArrayLength.vi"/>
						<Item Name="jointStatesUnits.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/subs/jointStatesUnits.vi"/>
						<Item Name="MsgExists.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/subs/MsgExists.vi"/>
						<Item Name="parseErrorCheck.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/subs/parseErrorCheck.vi"/>
						<Item Name="service_error_parse.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/subs/service_error_parse.vi"/>
					</Item>
					<Item Name="test_msgs" Type="Folder">
						<Item Name="parse_Bar.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/test_msgs/parse_Bar.vi"/>
						<Item Name="parse_Foo.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/test_msgs/parse_Foo.vi"/>
						<Item Name="parse_Testmsg.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/test_msgs/parse_Testmsg.vi"/>
					</Item>
					<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/.DS_Store"/>
					<Item Name="AssignToConPane.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/AssignToConPane.vi"/>
					<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/dir.mnu"/>
					<Item Name="GetUnwiredOutputs.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/GetUnwiredOutputs.vi"/>
					<Item Name="ROS_msgParse_builder.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROS_msgParse_builder.vi"/>
					<Item Name="ROSmsg_connectParserTerms.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_connectParserTerms.vi"/>
					<Item Name="ROSmsg_createAndWireClust.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_createAndWireClust.vi"/>
					<Item Name="ROSmsg_createCtl.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_createCtl.vi"/>
					<Item Name="ROSmsg_createInd.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_createInd.vi"/>
					<Item Name="ROSmsg_GetDataTypes.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_GetDataTypes.vi"/>
					<Item Name="ROSmsg_getParser.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_getParser.vi"/>
					<Item Name="ROSmsg_getTermRef.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_getTermRef.vi"/>
					<Item Name="ROSmsg_IsArray.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_IsArray.vi"/>
					<Item Name="ROSmsg_isStd.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/MessageParsing/ROSmsg_isStd.vi"/>
				</Item>
				<Item Name="RosMessages" Type="Folder">
					<Item Name="baxter_msgs" Type="Folder">
						<Item Name="CameraControl.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/CameraControl.txt"/>
						<Item Name="CameraSettings.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/CameraSettings.txt"/>
						<Item Name="DigitalIOState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/DigitalIOState.txt"/>
						<Item Name="DigitalOutputCommand.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/DigitalOutputCommand.txt"/>
						<Item Name="EndpointState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/EndpointState.txt"/>
						<Item Name="GripperIdentity.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/GripperIdentity.txt"/>
						<Item Name="GripperState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/GripperState.txt"/>
						<Item Name="HeadPanCommand.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/HeadPanCommand.txt"/>
						<Item Name="ITB.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/ITB.txt"/>
						<Item Name="JointCommandMode.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/JointCommandMode.txt"/>
						<Item Name="JointPositions.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/JointPositions.txt"/>
						<Item Name="JointVelocities.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/baxter_msgs/JointVelocities.txt"/>
					</Item>
					<Item Name="diagnostic_msgs" Type="Folder">
						<Item Name="DiagnosticArray.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/diagnostic_msgs/DiagnosticArray.txt"/>
						<Item Name="DiagnosticStatus.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/diagnostic_msgs/DiagnosticStatus.txt"/>
						<Item Name="KeyValue.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/diagnostic_msgs/KeyValue.txt"/>
					</Item>
					<Item Name="gazebo_msgs" Type="Folder">
						<Item Name="ContactsState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/ContactsState.txt"/>
						<Item Name="ContactState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/ContactState.txt"/>
						<Item Name="LinkState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/LinkState.txt"/>
						<Item Name="LinkStates.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/LinkStates.txt"/>
						<Item Name="ModelState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/ModelState.txt"/>
						<Item Name="ModelStates.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/ModelStates.txt"/>
						<Item Name="ODEJointProperties.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/ODEJointProperties.txt"/>
						<Item Name="ODEPhysics.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/ODEPhysics.txt"/>
						<Item Name="WorldState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/gazebo_msgs/WorldState.txt"/>
					</Item>
					<Item Name="geometry_msgs" Type="Folder">
						<Item Name="Point.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/geometry_msgs/Point.txt"/>
						<Item Name="Point32.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/geometry_msgs/Point32.txt"/>
						<Item Name="Pose.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/geometry_msgs/Pose.txt"/>
						<Item Name="PoseStamped.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/geometry_msgs/PoseStamped.txt"/>
						<Item Name="Quaternion.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/geometry_msgs/Quaternion.txt"/>
						<Item Name="Twist.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/geometry_msgs/Twist.txt"/>
						<Item Name="Vector3.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/geometry_msgs/Vector3.txt"/>
						<Item Name="Wrench.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/geometry_msgs/Wrench.txt"/>
					</Item>
					<Item Name="nao_msgs" Type="Folder">
						<Item Name="Bumper.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/nao_msgs/Bumper.txt"/>
						<Item Name="FadeRGB.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/nao_msgs/FadeRGB.txt"/>
						<Item Name="JointAnglesWithSpeed.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/nao_msgs/JointAnglesWithSpeed.txt"/>
						<Item Name="JointAngleTrajectory.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/nao_msgs/JointAngleTrajectory.txt"/>
						<Item Name="TactileTouch.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/nao_msgs/TactileTouch.txt"/>
						<Item Name="WordRecognized.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/nao_msgs/WordRecognized.txt"/>
					</Item>
					<Item Name="sensor_msgs" Type="Folder">
						<Item Name="ChannelFloat32.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/sensor_msgs/ChannelFloat32.txt"/>
						<Item Name="Image.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/sensor_msgs/Image.txt"/>
						<Item Name="Imu.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/sensor_msgs/Imu.txt"/>
						<Item Name="JointState.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/sensor_msgs/JointState.txt"/>
						<Item Name="PointCloud.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/sensor_msgs/PointCloud.txt"/>
						<Item Name="Range.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/sensor_msgs/Range.txt"/>
					</Item>
					<Item Name="std_msgs" Type="Folder">
						<Item Name="Bool.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/std_msgs/Bool.txt"/>
						<Item Name="Float32.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/std_msgs/Float32.txt"/>
						<Item Name="Header.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/std_msgs/Header.txt"/>
						<Item Name="UInt16.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/std_msgs/UInt16.txt"/>
					</Item>
					<Item Name="test_msgs" Type="Folder">
						<Item Name="Bar.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/test_msgs/Bar.txt"/>
						<Item Name="Foo.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/test_msgs/Foo.txt"/>
						<Item Name="Testmsg.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/test_msgs/Testmsg.txt"/>
					</Item>
					<Item Name="turtlesim" Type="Folder">
						<Item Name="Velocity.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosMessages/turtlesim/Velocity.txt"/>
					</Item>
				</Item>
				<Item Name="RosServices" Type="Folder">
					<Item Name="baxter_msgs" Type="Folder">
						<Item Name="CloseCamera.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/baxter_msgs/CloseCamera.txt"/>
						<Item Name="ListCameras.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/baxter_msgs/ListCameras.txt"/>
						<Item Name="OpenCamera.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/baxter_msgs/OpenCamera.txt"/>
						<Item Name="SolvePositionIK.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/baxter_msgs/SolvePositionIK.txt"/>
					</Item>
					<Item Name="gazebo_msgs" Type="Folder">
						<Item Name="ApplyBodyWrench.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/ApplyBodyWrench.srv"/>
						<Item Name="ApplyJointEffort.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/ApplyJointEffort.srv"/>
						<Item Name="BodyRequest.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/BodyRequest.srv"/>
						<Item Name="DeleteModel.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/DeleteModel.srv"/>
						<Item Name="GetJointProperties.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/GetJointProperties.srv"/>
						<Item Name="GetLinkProperties.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/GetLinkProperties.srv"/>
						<Item Name="GetLinkState.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/GetLinkState.srv"/>
						<Item Name="GetModelProperties.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/GetModelProperties.srv"/>
						<Item Name="GetModelState.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/GetModelState.srv"/>
						<Item Name="GetPhysicsProperties.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/GetPhysicsProperties.srv"/>
						<Item Name="GetWorldProperties.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/GetWorldProperties.srv"/>
						<Item Name="JointRequest.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/JointRequest.srv"/>
						<Item Name="SetJointProperties.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/SetJointProperties.srv"/>
						<Item Name="SetJointTrajectory.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/SetJointTrajectory.srv"/>
						<Item Name="SetLinkProperties.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/SetLinkProperties.srv"/>
						<Item Name="SetLinkState.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/SetLinkState.srv"/>
						<Item Name="SetModelConfiguration.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/SetModelConfiguration.srv"/>
						<Item Name="SetModelState.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/SetModelState.srv"/>
						<Item Name="SetPhysicsProperties.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/SetPhysicsProperties.srv"/>
						<Item Name="SpawnModel.srv" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/RosServices/gazebo_msgs/SpawnModel.srv"/>
					</Item>
				</Item>
				<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/.DS_Store"/>
				<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/dir.mnu"/>
				<Item Name="Errors.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Errors.txt"/>
			</Item>
			<Item Name=".DS_Store" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/.DS_Store"/>
			<Item Name="dir.mnu" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/dir.mnu"/>
			<Item Name="GNU General Public License.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/GNU General Public License.txt"/>
			<Item Name="README.md" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/README.md"/>
			<Item Name="README.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/README.txt"/>
			<Item Name="ROS for LabVIEW Software License.txt" Type="Document" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS for LabVIEW Software License.txt"/>
		</Item>
		<Item Name="TestVIs" Type="Folder">
			<Item Name="Bumper_Controller.vi" Type="VI" URL="../Bumper_Controller.vi"/>
			<Item Name="Inductive_Sensor_Test.vi" Type="VI" URL="../TestVI/Inductive_Sensor_Test.vi"/>
			<Item Name="LED_Test.vi" Type="VI" URL="../TestVI/LED_Test.vi"/>
			<Item Name="Manual_Motor_Test.vi" Type="VI" URL="../Manual_Motor_Test.vi"/>
			<Item Name="ROS_Dummy_Test.vi" Type="VI" URL="../ROS_Dummy_Test.vi"/>
			<Item Name="waitTest.vi" Type="VI" URL="../TestVI/waitTest.vi"/>
		</Item>
		<Item Name="Chassis" Type="roboRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">roboRIO</Property>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{04542511-B64D-4D6D-B48C-5A401E2EC4F0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{098FA0E9-2455-430C-A2BF-785F491708F6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{0F708EC0-18CA-485A-9C4E-1C455677EADC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{13699C41-A37C-424D-B948-19E288B4D664}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{15966C29-9ADB-41A7-BFB7-3D9D23701284}resource=/MXP/AO1;0;WriteMethodType=U16{1A109F08-62D9-4643-8D6B-D2B36A4DBA4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{1E5CC575-D494-4968-8C80-72C3A5EE4929}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{2080DA18-F096-4846-8670-97C6A9D39523}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{25599393-212E-4C2C-AB0A-FA0ED9197B9F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{258D5F35-3B8C-418E-A0E2-F519C6B427D2}resource=/AnalogIn1;0;ReadMethodType=U16{28A3AFB0-C4ED-4B88-86C6-37353972AF0B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{2AE7C557-23E3-4359-8B05-D6418C9BB626}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{2E2BD409-5E78-42A8-8616-B8F9CDE34E55}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{2F92AD76-54DB-47CE-92BC-FF53C12BCB9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{30FBBB86-1848-4450-B08D-28A3E363000F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{32B3D1D0-D3A0-4013-8601-E280950ACCC9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{33127422-0011-4257-91E5-0A74AB8D78EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{34EF8C13-FBDD-42C0-A9E5-930F9CAC9910}resource=/MXP/AI3;0;ReadMethodType=U16{38577C70-06C5-46FC-89FF-2384F678CAA3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{38D6C458-6537-4055-BFBB-329049E709DD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{399F1141-1165-48D4-9589-BEA98F1E7023}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{39AAFAA7-F9CF-4933-A90B-37DD1D5D45BC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3AF95D75-C5CC-42D3-A7CC-62DED9B43C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{3EBD652B-683F-45B1-93FB-6A31F35406C9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{410127B5-46A2-4DDA-889D-94E10095EAE6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{4600ECE7-B83A-4338-A048-FD602715C32F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{4835D3E1-0714-4E2E-A581-5FCEBE5C83E9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{492E9344-17E4-440F-B74B-09136E585EFF}resource=/MXP/AI0;0;ReadMethodType=U16{4B5809DF-0132-4BA7-A5A9-EC5D77A94903}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{53009B38-6F7B-4D43-A964-2829154F91F9}resource=/MXP/AI2;0;ReadMethodType=U16{578D3E0D-4A78-4421-B0FB-1C65A7CB329F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{57DE3E0C-1669-43D0-9768-7DFA49B3D214}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{59253D7F-775F-423D-B394-6A13AFC62DEE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{5C564907-1DB9-446D-84DC-0C30772E9201}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{5FB67FF4-508F-4ED2-97F0-C36B64D05B1C}resource=/MXP/AO0;0;WriteMethodType=U16{616949DA-FBC9-452B-91B7-52FB0FD6B2E2}resource=/AccelerationZ;0;ReadMethodType=I16{621985B0-E84C-4B51-8417-39D454C2E22E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{632EAB74-7716-46D8-BDF4-A1B3F4EEDF43}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6A60BDD1-BF08-4A66-9737-23893E90D6AE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{6AB87B1D-C149-4848-AC7A-12AC84E023D8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{6B6AA10C-24EE-4054-9F52-9E42DAA05E0F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{6CBD9B80-1B4B-47EC-8D64-D08484A48B07}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{6CEA7583-D3F1-43C7-B237-C630C750CE0C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{717F8612-DE11-40ED-9117-5AAC925DE1EB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{73D72E42-2C72-4EE9-8318-FCA06C1BC197}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{772B89DF-1C8C-4273-B0B3-D705725C06A7}resource=/AccelerationY;0;ReadMethodType=I16{7D2B15C1-DA40-4AA2-8E7C-7B31C9F1218C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{93533BB1-FA74-4171-822F-CBDAF4C0664F}resource=/MXP/AI1;0;ReadMethodType=U16{94EF86EB-7516-4B3F-B40E-C4FFB51F0E58}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{9BDDCB63-1C93-4A9C-ACEC-4D472C5E02D4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{9C673D83-2B70-4AA8-A31A-C55963AAFB9B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A5FD2401-22C0-4CD8-B473-400B34678C81}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{A886672A-E89F-4FF0-8C12-7039CF545FC8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{AC257830-36B4-4CCD-9CD3-C9263EA866A8}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{B38AD194-3D9A-4DE9-B4F9-49733278E5C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{B4683BDA-44A2-4B86-AA34-3264CB042EF4}resource=/AnalogIn3;0;ReadMethodType=U16{B4D0ED36-17D3-4D9B-BDA1-AF603ED1F55A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{B693BE10-0348-40E5-920F-3E165E633A48}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{B9D491A6-1FBD-46EF-93A6-C928328474D8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C4393713-847D-43B0-A886-4F098570E691}resource=/AccelerationX;0;ReadMethodType=I16{C637B8AC-675F-4856-BED8-70811F7BC172}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{C7010976-3973-4CF8-8DE8-40CD4C13CC98}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{C9639F22-400D-4F68-8C58-705EE0A24FEE}resource=/AnalogIn2;0;ReadMethodType=U16{D31B18EB-7B81-4294-A738-7B9D873C8424}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{D4D25F77-1779-465C-8410-FFA20A907DD9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{D825EA0D-86E2-4C29-8E48-0E5250A707CA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{D8EC2736-AD86-4C4C-9152-1A6FA0C3F14D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{D93E67F4-5254-41B6-8036-A1E09B65C407}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{DBF17F54-37DC-4B4E-BB2A-3079A1030FD4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{DEB0EEA8-288A-4172-86E4-122DC7A1057D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{E005C6DF-A4DB-4AC5-B5B6-8CFF35F3EFC7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{E0309C6A-36C0-4A93-970F-C8A9F3DA41AF}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{E538BB3A-354C-48D4-9C33-AE50853F75A7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{E706BD30-61E4-4613-83A5-7707DCF0EAE9}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{E7FBA125-B0C9-45A5-A464-DB96DF54F5B9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{F2429454-E90F-41AC-BC59-DE9D107DEF00}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{F6968167-F025-4B8F-84D7-A076C8181872}resource=/AnalogIn0;0;ReadMethodType=U16{FD1E1EA3-EEBD-4054-BC7F-D70830837B00}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{FE827DCF-202F-4C0B-B7E1-F1904EC41D9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolLED data to FPGA FIFO"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Mode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">roboRIO</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Analog" Type="Folder">
					<Item Name="AnalogIn0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AnalogIn0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F6968167-F025-4B8F-84D7-A076C8181872}</Property>
					</Item>
					<Item Name="AnalogIn1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AnalogIn1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{258D5F35-3B8C-418E-A0E2-F519C6B427D2}</Property>
					</Item>
					<Item Name="AnalogIn2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AnalogIn2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C9639F22-400D-4F68-8C58-705EE0A24FEE}</Property>
					</Item>
					<Item Name="AnalogIn3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AnalogIn3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B4683BDA-44A2-4B86-AA34-3264CB042EF4}</Property>
					</Item>
				</Item>
				<Item Name="DIO" Type="Folder">
					<Item Name="DIO/DIO0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B38AD194-3D9A-4DE9-B4F9-49733278E5C4}</Property>
					</Item>
					<Item Name="DIO/DIO1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2E2BD409-5E78-42A8-8616-B8F9CDE34E55}</Property>
					</Item>
					<Item Name="DIO/DIO2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{59253D7F-775F-423D-B394-6A13AFC62DEE}</Property>
					</Item>
					<Item Name="DIO/DIO3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C7010976-3973-4CF8-8DE8-40CD4C13CC98}</Property>
					</Item>
					<Item Name="DIO/DIO4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5C564907-1DB9-446D-84DC-0C30772E9201}</Property>
					</Item>
					<Item Name="DIO/DIO5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{33127422-0011-4257-91E5-0A74AB8D78EE}</Property>
					</Item>
					<Item Name="DIO/DIO6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D93E67F4-5254-41B6-8036-A1E09B65C407}</Property>
					</Item>
					<Item Name="DIO/DIO7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{30FBBB86-1848-4450-B08D-28A3E363000F}</Property>
					</Item>
					<Item Name="DIO/DIO8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{410127B5-46A2-4DDA-889D-94E10095EAE6}</Property>
					</Item>
					<Item Name="DIO/DIO9" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO9</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{39AAFAA7-F9CF-4933-A90B-37DD1D5D45BC}</Property>
					</Item>
				</Item>
				<Item Name="I2C" Type="Folder">
					<Item Name="I2C SCL" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/I2C SCL</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B4D0ED36-17D3-4D9B-BDA1-AF603ED1F55A}</Property>
					</Item>
					<Item Name="I2C SDA" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/I2C SDA</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6AB87B1D-C149-4848-AC7A-12AC84E023D8}</Property>
					</Item>
				</Item>
				<Item Name="MXP" Type="Folder">
					<Item Name="Analog" Type="Folder">
						<Item Name="MXP/AI0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{492E9344-17E4-440F-B74B-09136E585EFF}</Property>
						</Item>
						<Item Name="MXP/AI1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{93533BB1-FA74-4171-822F-CBDAF4C0664F}</Property>
						</Item>
						<Item Name="MXP/AI2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AI2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{53009B38-6F7B-4D43-A964-2829154F91F9}</Property>
						</Item>
						<Item Name="MXP/AI3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AI3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{34EF8C13-FBDD-42C0-A9E5-930F9CAC9910}</Property>
						</Item>
						<Item Name="MXP/AO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{5FB67FF4-508F-4ED2-97F0-C36B64D05B1C}</Property>
						</Item>
						<Item Name="MXP/AO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{15966C29-9ADB-41A7-BFB7-3D9D23701284}</Property>
						</Item>
					</Item>
					<Item Name="DIO7:0" Type="Folder">
						<Item Name="MXP/DIO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{38D6C458-6537-4055-BFBB-329049E709DD}</Property>
						</Item>
						<Item Name="MXP/DIO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B693BE10-0348-40E5-920F-3E165E633A48}</Property>
						</Item>
						<Item Name="MXP/DIO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{FE827DCF-202F-4C0B-B7E1-F1904EC41D9E}</Property>
						</Item>
						<Item Name="MXP/DIO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6CBD9B80-1B4B-47EC-8D64-D08484A48B07}</Property>
						</Item>
						<Item Name="MXP/DIO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{F2429454-E90F-41AC-BC59-DE9D107DEF00}</Property>
						</Item>
						<Item Name="MXP/DIO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4B5809DF-0132-4BA7-A5A9-EC5D77A94903}</Property>
						</Item>
						<Item Name="MXP/DIO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{717F8612-DE11-40ED-9117-5AAC925DE1EB}</Property>
						</Item>
						<Item Name="MXP/DIO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3AF95D75-C5CC-42D3-A7CC-62DED9B43C5B}</Property>
						</Item>
						<Item Name="MXP/DIO7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{57DE3E0C-1669-43D0-9768-7DFA49B3D214}</Property>
						</Item>
					</Item>
					<Item Name="DIO15:8" Type="Folder">
						<Item Name="MXP/DIO8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{098FA0E9-2455-430C-A2BF-785F491708F6}</Property>
						</Item>
						<Item Name="MXP/DIO9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9C673D83-2B70-4AA8-A31A-C55963AAFB9B}</Property>
						</Item>
						<Item Name="MXP/DIO10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{399F1141-1165-48D4-9589-BEA98F1E7023}</Property>
						</Item>
						<Item Name="MXP/DIO11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{25599393-212E-4C2C-AB0A-FA0ED9197B9F}</Property>
						</Item>
						<Item Name="MXP/DIO12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D4D25F77-1779-465C-8410-FFA20A907DD9}</Property>
						</Item>
						<Item Name="MXP/DIO13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{2AE7C557-23E3-4359-8B05-D6418C9BB626}</Property>
						</Item>
						<Item Name="MXP/DIO14" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO14</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{28A3AFB0-C4ED-4B88-86C6-37353972AF0B}</Property>
						</Item>
						<Item Name="MXP/DIO15" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO15</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3EBD652B-683F-45B1-93FB-6A31F35406C9}</Property>
						</Item>
						<Item Name="MXP/DIO15:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO15:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{73D72E42-2C72-4EE9-8318-FCA06C1BC197}</Property>
						</Item>
					</Item>
				</Item>
				<Item Name="Onboard I/O" Type="Folder">
					<Item Name="LED" Type="Folder">
						<Item Name="Comm LED Green" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Comm LED Green</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D825EA0D-86E2-4C29-8E48-0E5250A707CA}</Property>
						</Item>
						<Item Name="Comm LED Red" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Comm LED Red</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4835D3E1-0714-4E2E-A581-5FCEBE5C83E9}</Property>
						</Item>
						<Item Name="Mode LED Green" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Mode LED Green</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E538BB3A-354C-48D4-9C33-AE50853F75A7}</Property>
						</Item>
						<Item Name="Mode LED Red" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Mode LED Red</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E0309C6A-36C0-4A93-970F-C8A9F3DA41AF}</Property>
						</Item>
						<Item Name="Radio LED Green" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Radio LED Green</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B9D491A6-1FBD-46EF-93A6-C928328474D8}</Property>
						</Item>
						<Item Name="Radio LED Red" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Radio LED Red</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C637B8AC-675F-4856-BED8-70811F7BC172}</Property>
						</Item>
					</Item>
					<Item Name="AccelerationX" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationX</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C4393713-847D-43B0-A886-4F098570E691}</Property>
					</Item>
					<Item Name="AccelerationY" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationY</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{772B89DF-1C8C-4273-B0B3-D705725C06A7}</Property>
					</Item>
					<Item Name="AccelerationZ" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationZ</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{616949DA-FBC9-452B-91B7-52FB0FD6B2E2}</Property>
					</Item>
					<Item Name="RSL" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RSL</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0F708EC0-18CA-485A-9C4E-1C455677EADC}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{AC257830-36B4-4CCD-9CD3-C9263EA866A8}</Property>
					</Item>
					<Item Name="User Button" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/User Button</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{94EF86EB-7516-4B3F-B40E-C4FFB51F0E58}</Property>
					</Item>
				</Item>
				<Item Name="PWM" Type="Folder">
					<Item Name="PWM/PWM0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{9BDDCB63-1C93-4A9C-ACEC-4D472C5E02D4}</Property>
					</Item>
					<Item Name="PWM/PWM1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4600ECE7-B83A-4338-A048-FD602715C32F}</Property>
					</Item>
					<Item Name="PWM/PWM2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6A60BDD1-BF08-4A66-9737-23893E90D6AE}</Property>
					</Item>
					<Item Name="PWM/PWM3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DEB0EEA8-288A-4172-86E4-122DC7A1057D}</Property>
					</Item>
					<Item Name="PWM/PWM4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{32B3D1D0-D3A0-4013-8601-E280950ACCC9}</Property>
					</Item>
					<Item Name="PWM/PWM5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1E5CC575-D494-4968-8C80-72C3A5EE4929}</Property>
					</Item>
					<Item Name="PWM/PWM6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{621985B0-E84C-4B51-8417-39D454C2E22E}</Property>
					</Item>
					<Item Name="PWM/PWM7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{04542511-B64D-4D6D-B48C-5A401E2EC4F0}</Property>
					</Item>
					<Item Name="PWM/PWM8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2080DA18-F096-4846-8670-97C6A9D39523}</Property>
					</Item>
					<Item Name="PWM/PWM9" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM9</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A5FD2401-22C0-4CD8-B473-400B34678C81}</Property>
					</Item>
				</Item>
				<Item Name="Relay" Type="Folder">
					<Item Name="RelayFwd0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayFwd0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{FD1E1EA3-EEBD-4054-BC7F-D70830837B00}</Property>
					</Item>
					<Item Name="RelayFwd1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayFwd1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E005C6DF-A4DB-4AC5-B5B6-8CFF35F3EFC7}</Property>
					</Item>
					<Item Name="RelayFwd2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayFwd2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A886672A-E89F-4FF0-8C12-7039CF545FC8}</Property>
					</Item>
					<Item Name="RelayFwd3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayFwd3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E7FBA125-B0C9-45A5-A464-DB96DF54F5B9}</Property>
					</Item>
					<Item Name="RelayRev0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayRev0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{13699C41-A37C-424D-B948-19E288B4D664}</Property>
					</Item>
					<Item Name="RelayRev1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayRev1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{578D3E0D-4A78-4421-B0FB-1C65A7CB329F}</Property>
					</Item>
					<Item Name="RelayRev2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayRev2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6CEA7583-D3F1-43C7-B237-C630C750CE0C}</Property>
					</Item>
					<Item Name="RelayRev3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayRev3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D8EC2736-AD86-4C4C-9152-1A6FA0C3F14D}</Property>
					</Item>
				</Item>
				<Item Name="SPI" Type="Folder">
					<Item Name="SPI CLK" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CLK</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2F92AD76-54DB-47CE-92BC-FF53C12BCB9E}</Property>
					</Item>
					<Item Name="SPI CS0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CS0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1A109F08-62D9-4643-8D6B-D2B36A4DBA4F}</Property>
					</Item>
					<Item Name="SPI CS1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CS1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{632EAB74-7716-46D8-BDF4-A1B3F4EEDF43}</Property>
					</Item>
					<Item Name="SPI CS2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CS2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{38577C70-06C5-46FC-89FF-2384F678CAA3}</Property>
					</Item>
					<Item Name="SPI CS3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CS3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6B6AA10C-24EE-4054-9F52-9E42DAA05E0F}</Property>
					</Item>
					<Item Name="SPI MISO" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI MISO</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DBF17F54-37DC-4B4E-BB2A-3079A1030FD4}</Property>
					</Item>
					<Item Name="SPI MOSI" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI MOSI</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{7D2B15C1-DA40-4AA2-8E7C-7B31C9F1218C}</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{E706BD30-61E4-4613-83A5-7707DCF0EAE9}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="FPGA Control of one WS2812 string.vi" Type="VI" URL="../LED Control/FPGA Control of one WS2812 string.vi">
					<Property Name="configString.guid" Type="Str">{04542511-B64D-4D6D-B48C-5A401E2EC4F0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{098FA0E9-2455-430C-A2BF-785F491708F6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{0F708EC0-18CA-485A-9C4E-1C455677EADC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{13699C41-A37C-424D-B948-19E288B4D664}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{15966C29-9ADB-41A7-BFB7-3D9D23701284}resource=/MXP/AO1;0;WriteMethodType=U16{1A109F08-62D9-4643-8D6B-D2B36A4DBA4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{1E5CC575-D494-4968-8C80-72C3A5EE4929}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{2080DA18-F096-4846-8670-97C6A9D39523}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{25599393-212E-4C2C-AB0A-FA0ED9197B9F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{258D5F35-3B8C-418E-A0E2-F519C6B427D2}resource=/AnalogIn1;0;ReadMethodType=U16{28A3AFB0-C4ED-4B88-86C6-37353972AF0B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{2AE7C557-23E3-4359-8B05-D6418C9BB626}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{2E2BD409-5E78-42A8-8616-B8F9CDE34E55}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{2F92AD76-54DB-47CE-92BC-FF53C12BCB9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{30FBBB86-1848-4450-B08D-28A3E363000F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{32B3D1D0-D3A0-4013-8601-E280950ACCC9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{33127422-0011-4257-91E5-0A74AB8D78EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{34EF8C13-FBDD-42C0-A9E5-930F9CAC9910}resource=/MXP/AI3;0;ReadMethodType=U16{38577C70-06C5-46FC-89FF-2384F678CAA3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{38D6C458-6537-4055-BFBB-329049E709DD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{399F1141-1165-48D4-9589-BEA98F1E7023}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{39AAFAA7-F9CF-4933-A90B-37DD1D5D45BC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3AF95D75-C5CC-42D3-A7CC-62DED9B43C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{3EBD652B-683F-45B1-93FB-6A31F35406C9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{410127B5-46A2-4DDA-889D-94E10095EAE6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{4600ECE7-B83A-4338-A048-FD602715C32F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{4835D3E1-0714-4E2E-A581-5FCEBE5C83E9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{492E9344-17E4-440F-B74B-09136E585EFF}resource=/MXP/AI0;0;ReadMethodType=U16{4B5809DF-0132-4BA7-A5A9-EC5D77A94903}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{53009B38-6F7B-4D43-A964-2829154F91F9}resource=/MXP/AI2;0;ReadMethodType=U16{578D3E0D-4A78-4421-B0FB-1C65A7CB329F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{57DE3E0C-1669-43D0-9768-7DFA49B3D214}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{59253D7F-775F-423D-B394-6A13AFC62DEE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{5C564907-1DB9-446D-84DC-0C30772E9201}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{5FB67FF4-508F-4ED2-97F0-C36B64D05B1C}resource=/MXP/AO0;0;WriteMethodType=U16{616949DA-FBC9-452B-91B7-52FB0FD6B2E2}resource=/AccelerationZ;0;ReadMethodType=I16{621985B0-E84C-4B51-8417-39D454C2E22E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{632EAB74-7716-46D8-BDF4-A1B3F4EEDF43}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6A60BDD1-BF08-4A66-9737-23893E90D6AE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{6AB87B1D-C149-4848-AC7A-12AC84E023D8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{6B6AA10C-24EE-4054-9F52-9E42DAA05E0F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{6CBD9B80-1B4B-47EC-8D64-D08484A48B07}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{6CEA7583-D3F1-43C7-B237-C630C750CE0C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{717F8612-DE11-40ED-9117-5AAC925DE1EB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{73D72E42-2C72-4EE9-8318-FCA06C1BC197}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{772B89DF-1C8C-4273-B0B3-D705725C06A7}resource=/AccelerationY;0;ReadMethodType=I16{7D2B15C1-DA40-4AA2-8E7C-7B31C9F1218C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{93533BB1-FA74-4171-822F-CBDAF4C0664F}resource=/MXP/AI1;0;ReadMethodType=U16{94EF86EB-7516-4B3F-B40E-C4FFB51F0E58}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{9BDDCB63-1C93-4A9C-ACEC-4D472C5E02D4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{9C673D83-2B70-4AA8-A31A-C55963AAFB9B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A5FD2401-22C0-4CD8-B473-400B34678C81}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{A886672A-E89F-4FF0-8C12-7039CF545FC8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{AC257830-36B4-4CCD-9CD3-C9263EA866A8}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{B38AD194-3D9A-4DE9-B4F9-49733278E5C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{B4683BDA-44A2-4B86-AA34-3264CB042EF4}resource=/AnalogIn3;0;ReadMethodType=U16{B4D0ED36-17D3-4D9B-BDA1-AF603ED1F55A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{B693BE10-0348-40E5-920F-3E165E633A48}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{B9D491A6-1FBD-46EF-93A6-C928328474D8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C4393713-847D-43B0-A886-4F098570E691}resource=/AccelerationX;0;ReadMethodType=I16{C637B8AC-675F-4856-BED8-70811F7BC172}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{C7010976-3973-4CF8-8DE8-40CD4C13CC98}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{C9639F22-400D-4F68-8C58-705EE0A24FEE}resource=/AnalogIn2;0;ReadMethodType=U16{D31B18EB-7B81-4294-A738-7B9D873C8424}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{D4D25F77-1779-465C-8410-FFA20A907DD9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{D825EA0D-86E2-4C29-8E48-0E5250A707CA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{D8EC2736-AD86-4C4C-9152-1A6FA0C3F14D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{D93E67F4-5254-41B6-8036-A1E09B65C407}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{DBF17F54-37DC-4B4E-BB2A-3079A1030FD4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{DEB0EEA8-288A-4172-86E4-122DC7A1057D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{E005C6DF-A4DB-4AC5-B5B6-8CFF35F3EFC7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{E0309C6A-36C0-4A93-970F-C8A9F3DA41AF}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{E538BB3A-354C-48D4-9C33-AE50853F75A7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{E706BD30-61E4-4613-83A5-7707DCF0EAE9}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{E7FBA125-B0C9-45A5-A464-DB96DF54F5B9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{F2429454-E90F-41AC-BC59-DE9D107DEF00}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{F6968167-F025-4B8F-84D7-A076C8181872}resource=/AnalogIn0;0;ReadMethodType=U16{FD1E1EA3-EEBD-4054-BC7F-D70830837B00}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{FE827DCF-202F-4C0B-B7E1-F1904EC41D9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolLED data to FPGA FIFO"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Mode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
				</Item>
				<Item Name="FPGA typedef.ctl" Type="VI" URL="../LED Control/FPGA typedef.ctl">
					<Property Name="configString.guid" Type="Str">{04542511-B64D-4D6D-B48C-5A401E2EC4F0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{098FA0E9-2455-430C-A2BF-785F491708F6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{0F708EC0-18CA-485A-9C4E-1C455677EADC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{13699C41-A37C-424D-B948-19E288B4D664}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{15966C29-9ADB-41A7-BFB7-3D9D23701284}resource=/MXP/AO1;0;WriteMethodType=U16{1A109F08-62D9-4643-8D6B-D2B36A4DBA4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{1E5CC575-D494-4968-8C80-72C3A5EE4929}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{2080DA18-F096-4846-8670-97C6A9D39523}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{25599393-212E-4C2C-AB0A-FA0ED9197B9F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{258D5F35-3B8C-418E-A0E2-F519C6B427D2}resource=/AnalogIn1;0;ReadMethodType=U16{28A3AFB0-C4ED-4B88-86C6-37353972AF0B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{2AE7C557-23E3-4359-8B05-D6418C9BB626}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{2E2BD409-5E78-42A8-8616-B8F9CDE34E55}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{2F92AD76-54DB-47CE-92BC-FF53C12BCB9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{30FBBB86-1848-4450-B08D-28A3E363000F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{32B3D1D0-D3A0-4013-8601-E280950ACCC9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{33127422-0011-4257-91E5-0A74AB8D78EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{34EF8C13-FBDD-42C0-A9E5-930F9CAC9910}resource=/MXP/AI3;0;ReadMethodType=U16{38577C70-06C5-46FC-89FF-2384F678CAA3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{38D6C458-6537-4055-BFBB-329049E709DD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{399F1141-1165-48D4-9589-BEA98F1E7023}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{39AAFAA7-F9CF-4933-A90B-37DD1D5D45BC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3AF95D75-C5CC-42D3-A7CC-62DED9B43C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{3EBD652B-683F-45B1-93FB-6A31F35406C9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{410127B5-46A2-4DDA-889D-94E10095EAE6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{4600ECE7-B83A-4338-A048-FD602715C32F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{4835D3E1-0714-4E2E-A581-5FCEBE5C83E9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{492E9344-17E4-440F-B74B-09136E585EFF}resource=/MXP/AI0;0;ReadMethodType=U16{4B5809DF-0132-4BA7-A5A9-EC5D77A94903}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{53009B38-6F7B-4D43-A964-2829154F91F9}resource=/MXP/AI2;0;ReadMethodType=U16{578D3E0D-4A78-4421-B0FB-1C65A7CB329F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{57DE3E0C-1669-43D0-9768-7DFA49B3D214}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{59253D7F-775F-423D-B394-6A13AFC62DEE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{5C564907-1DB9-446D-84DC-0C30772E9201}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{5FB67FF4-508F-4ED2-97F0-C36B64D05B1C}resource=/MXP/AO0;0;WriteMethodType=U16{616949DA-FBC9-452B-91B7-52FB0FD6B2E2}resource=/AccelerationZ;0;ReadMethodType=I16{621985B0-E84C-4B51-8417-39D454C2E22E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{632EAB74-7716-46D8-BDF4-A1B3F4EEDF43}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6A60BDD1-BF08-4A66-9737-23893E90D6AE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{6AB87B1D-C149-4848-AC7A-12AC84E023D8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{6B6AA10C-24EE-4054-9F52-9E42DAA05E0F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{6CBD9B80-1B4B-47EC-8D64-D08484A48B07}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{6CEA7583-D3F1-43C7-B237-C630C750CE0C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{717F8612-DE11-40ED-9117-5AAC925DE1EB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{73D72E42-2C72-4EE9-8318-FCA06C1BC197}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{772B89DF-1C8C-4273-B0B3-D705725C06A7}resource=/AccelerationY;0;ReadMethodType=I16{7D2B15C1-DA40-4AA2-8E7C-7B31C9F1218C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{93533BB1-FA74-4171-822F-CBDAF4C0664F}resource=/MXP/AI1;0;ReadMethodType=U16{94EF86EB-7516-4B3F-B40E-C4FFB51F0E58}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{9BDDCB63-1C93-4A9C-ACEC-4D472C5E02D4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{9C673D83-2B70-4AA8-A31A-C55963AAFB9B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A5FD2401-22C0-4CD8-B473-400B34678C81}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{A886672A-E89F-4FF0-8C12-7039CF545FC8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{AC257830-36B4-4CCD-9CD3-C9263EA866A8}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{B38AD194-3D9A-4DE9-B4F9-49733278E5C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{B4683BDA-44A2-4B86-AA34-3264CB042EF4}resource=/AnalogIn3;0;ReadMethodType=U16{B4D0ED36-17D3-4D9B-BDA1-AF603ED1F55A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{B693BE10-0348-40E5-920F-3E165E633A48}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{B9D491A6-1FBD-46EF-93A6-C928328474D8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C4393713-847D-43B0-A886-4F098570E691}resource=/AccelerationX;0;ReadMethodType=I16{C637B8AC-675F-4856-BED8-70811F7BC172}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{C7010976-3973-4CF8-8DE8-40CD4C13CC98}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{C9639F22-400D-4F68-8C58-705EE0A24FEE}resource=/AnalogIn2;0;ReadMethodType=U16{D31B18EB-7B81-4294-A738-7B9D873C8424}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{D4D25F77-1779-465C-8410-FFA20A907DD9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{D825EA0D-86E2-4C29-8E48-0E5250A707CA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{D8EC2736-AD86-4C4C-9152-1A6FA0C3F14D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{D93E67F4-5254-41B6-8036-A1E09B65C407}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{DBF17F54-37DC-4B4E-BB2A-3079A1030FD4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{DEB0EEA8-288A-4172-86E4-122DC7A1057D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{E005C6DF-A4DB-4AC5-B5B6-8CFF35F3EFC7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{E0309C6A-36C0-4A93-970F-C8A9F3DA41AF}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{E538BB3A-354C-48D4-9C33-AE50853F75A7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{E706BD30-61E4-4613-83A5-7707DCF0EAE9}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{E7FBA125-B0C9-45A5-A464-DB96DF54F5B9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{F2429454-E90F-41AC-BC59-DE9D107DEF00}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{F6968167-F025-4B8F-84D7-A076C8181872}resource=/AnalogIn0;0;ReadMethodType=U16{FD1E1EA3-EEBD-4054-BC7F-D70830837B00}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{FE827DCF-202F-4C0B-B7E1-F1904EC41D9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolLED data to FPGA FIFO"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Mode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
				</Item>
				<Item Name="FPGA upload data to LEDs.vi" Type="VI" URL="../LED Control/FPGA upload data to LEDs.vi">
					<Property Name="BuildSpec" Type="Str">{92044BEB-8453-4CFA-9838-1800FB106C6F}</Property>
					<Property Name="configString.guid" Type="Str">{04542511-B64D-4D6D-B48C-5A401E2EC4F0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{098FA0E9-2455-430C-A2BF-785F491708F6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{0F708EC0-18CA-485A-9C4E-1C455677EADC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{13699C41-A37C-424D-B948-19E288B4D664}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{15966C29-9ADB-41A7-BFB7-3D9D23701284}resource=/MXP/AO1;0;WriteMethodType=U16{1A109F08-62D9-4643-8D6B-D2B36A4DBA4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{1E5CC575-D494-4968-8C80-72C3A5EE4929}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{2080DA18-F096-4846-8670-97C6A9D39523}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{25599393-212E-4C2C-AB0A-FA0ED9197B9F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{258D5F35-3B8C-418E-A0E2-F519C6B427D2}resource=/AnalogIn1;0;ReadMethodType=U16{28A3AFB0-C4ED-4B88-86C6-37353972AF0B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{2AE7C557-23E3-4359-8B05-D6418C9BB626}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{2E2BD409-5E78-42A8-8616-B8F9CDE34E55}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{2F92AD76-54DB-47CE-92BC-FF53C12BCB9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{30FBBB86-1848-4450-B08D-28A3E363000F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{32B3D1D0-D3A0-4013-8601-E280950ACCC9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{33127422-0011-4257-91E5-0A74AB8D78EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{34EF8C13-FBDD-42C0-A9E5-930F9CAC9910}resource=/MXP/AI3;0;ReadMethodType=U16{38577C70-06C5-46FC-89FF-2384F678CAA3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{38D6C458-6537-4055-BFBB-329049E709DD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{399F1141-1165-48D4-9589-BEA98F1E7023}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{39AAFAA7-F9CF-4933-A90B-37DD1D5D45BC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3AF95D75-C5CC-42D3-A7CC-62DED9B43C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{3EBD652B-683F-45B1-93FB-6A31F35406C9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{410127B5-46A2-4DDA-889D-94E10095EAE6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{4600ECE7-B83A-4338-A048-FD602715C32F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{4835D3E1-0714-4E2E-A581-5FCEBE5C83E9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{492E9344-17E4-440F-B74B-09136E585EFF}resource=/MXP/AI0;0;ReadMethodType=U16{4B5809DF-0132-4BA7-A5A9-EC5D77A94903}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{53009B38-6F7B-4D43-A964-2829154F91F9}resource=/MXP/AI2;0;ReadMethodType=U16{578D3E0D-4A78-4421-B0FB-1C65A7CB329F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{57DE3E0C-1669-43D0-9768-7DFA49B3D214}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{59253D7F-775F-423D-B394-6A13AFC62DEE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{5C564907-1DB9-446D-84DC-0C30772E9201}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{5FB67FF4-508F-4ED2-97F0-C36B64D05B1C}resource=/MXP/AO0;0;WriteMethodType=U16{616949DA-FBC9-452B-91B7-52FB0FD6B2E2}resource=/AccelerationZ;0;ReadMethodType=I16{621985B0-E84C-4B51-8417-39D454C2E22E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{632EAB74-7716-46D8-BDF4-A1B3F4EEDF43}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6A60BDD1-BF08-4A66-9737-23893E90D6AE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{6AB87B1D-C149-4848-AC7A-12AC84E023D8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{6B6AA10C-24EE-4054-9F52-9E42DAA05E0F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{6CBD9B80-1B4B-47EC-8D64-D08484A48B07}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{6CEA7583-D3F1-43C7-B237-C630C750CE0C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{717F8612-DE11-40ED-9117-5AAC925DE1EB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{73D72E42-2C72-4EE9-8318-FCA06C1BC197}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{772B89DF-1C8C-4273-B0B3-D705725C06A7}resource=/AccelerationY;0;ReadMethodType=I16{7D2B15C1-DA40-4AA2-8E7C-7B31C9F1218C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{93533BB1-FA74-4171-822F-CBDAF4C0664F}resource=/MXP/AI1;0;ReadMethodType=U16{94EF86EB-7516-4B3F-B40E-C4FFB51F0E58}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{9BDDCB63-1C93-4A9C-ACEC-4D472C5E02D4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{9C673D83-2B70-4AA8-A31A-C55963AAFB9B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A5FD2401-22C0-4CD8-B473-400B34678C81}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{A886672A-E89F-4FF0-8C12-7039CF545FC8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{AC257830-36B4-4CCD-9CD3-C9263EA866A8}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{B38AD194-3D9A-4DE9-B4F9-49733278E5C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{B4683BDA-44A2-4B86-AA34-3264CB042EF4}resource=/AnalogIn3;0;ReadMethodType=U16{B4D0ED36-17D3-4D9B-BDA1-AF603ED1F55A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{B693BE10-0348-40E5-920F-3E165E633A48}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{B9D491A6-1FBD-46EF-93A6-C928328474D8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C4393713-847D-43B0-A886-4F098570E691}resource=/AccelerationX;0;ReadMethodType=I16{C637B8AC-675F-4856-BED8-70811F7BC172}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{C7010976-3973-4CF8-8DE8-40CD4C13CC98}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{C9639F22-400D-4F68-8C58-705EE0A24FEE}resource=/AnalogIn2;0;ReadMethodType=U16{D31B18EB-7B81-4294-A738-7B9D873C8424}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{D4D25F77-1779-465C-8410-FFA20A907DD9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{D825EA0D-86E2-4C29-8E48-0E5250A707CA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{D8EC2736-AD86-4C4C-9152-1A6FA0C3F14D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{D93E67F4-5254-41B6-8036-A1E09B65C407}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{DBF17F54-37DC-4B4E-BB2A-3079A1030FD4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{DEB0EEA8-288A-4172-86E4-122DC7A1057D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{E005C6DF-A4DB-4AC5-B5B6-8CFF35F3EFC7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{E0309C6A-36C0-4A93-970F-C8A9F3DA41AF}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{E538BB3A-354C-48D4-9C33-AE50853F75A7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{E706BD30-61E4-4613-83A5-7707DCF0EAE9}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{E7FBA125-B0C9-45A5-A464-DB96DF54F5B9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{F2429454-E90F-41AC-BC59-DE9D107DEF00}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{F6968167-F025-4B8F-84D7-A076C8181872}resource=/AnalogIn0;0;ReadMethodType=U16{FD1E1EA3-EEBD-4054-BC7F-D70830837B00}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{FE827DCF-202F-4C0B-B7E1-F1904EC41D9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolLED data to FPGA FIFO"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Mode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\Users\Ros1\Documents\Github\UNICORN-2019-LabVIEW\UnicornMain\FPGA\FPGA Bitfiles\UnicornMain_FPGATarget_MainFPGAcode_pijQzTnE6Wg.lvbitx</Property>
				</Item>
				<Item Name="IP Builder" Type="IP Builder Target">
					<Item Name="Dependencies" Type="Dependencies"/>
					<Item Name="Build Specifications" Type="Build"/>
				</Item>
				<Item Name="LED data to FPGA FIFO" Type="FPGA FIFO">
					<Property Name="Actual Number of Elements" Type="UInt">1029</Property>
					<Property Name="Arbitration for Read" Type="UInt">1</Property>
					<Property Name="Arbitration for Write" Type="UInt">1</Property>
					<Property Name="Control Logic" Type="UInt">0</Property>
					<Property Name="Data Type" Type="UInt">7</Property>
					<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
					<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
					<Property Name="fifo.configured" Type="Bool">true</Property>
					<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
					<Property Name="fifo.valid" Type="Bool">true</Property>
					<Property Name="fifo.version" Type="Int">12</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D31B18EB-7B81-4294-A738-7B9D873C8424}</Property>
					<Property Name="Local" Type="Bool">false</Property>
					<Property Name="Memory Type" Type="UInt">2</Property>
					<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
					<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
					<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
					<Property Name="Type" Type="UInt">1</Property>
					<Property Name="Type Descriptor" Type="Str">1000800000000001000940070003553332000100000000000000000000</Property>
				</Item>
				<Item Name="RGB to GRB rev.vi" Type="VI" URL="../LED Control/RGB to GRB rev.vi">
					<Property Name="configString.guid" Type="Str">{04542511-B64D-4D6D-B48C-5A401E2EC4F0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{098FA0E9-2455-430C-A2BF-785F491708F6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{0F708EC0-18CA-485A-9C4E-1C455677EADC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{13699C41-A37C-424D-B948-19E288B4D664}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{15966C29-9ADB-41A7-BFB7-3D9D23701284}resource=/MXP/AO1;0;WriteMethodType=U16{1A109F08-62D9-4643-8D6B-D2B36A4DBA4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{1E5CC575-D494-4968-8C80-72C3A5EE4929}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{2080DA18-F096-4846-8670-97C6A9D39523}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{25599393-212E-4C2C-AB0A-FA0ED9197B9F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{258D5F35-3B8C-418E-A0E2-F519C6B427D2}resource=/AnalogIn1;0;ReadMethodType=U16{28A3AFB0-C4ED-4B88-86C6-37353972AF0B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{2AE7C557-23E3-4359-8B05-D6418C9BB626}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{2E2BD409-5E78-42A8-8616-B8F9CDE34E55}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{2F92AD76-54DB-47CE-92BC-FF53C12BCB9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{30FBBB86-1848-4450-B08D-28A3E363000F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{32B3D1D0-D3A0-4013-8601-E280950ACCC9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{33127422-0011-4257-91E5-0A74AB8D78EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{34EF8C13-FBDD-42C0-A9E5-930F9CAC9910}resource=/MXP/AI3;0;ReadMethodType=U16{38577C70-06C5-46FC-89FF-2384F678CAA3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{38D6C458-6537-4055-BFBB-329049E709DD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{399F1141-1165-48D4-9589-BEA98F1E7023}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{39AAFAA7-F9CF-4933-A90B-37DD1D5D45BC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3AF95D75-C5CC-42D3-A7CC-62DED9B43C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{3EBD652B-683F-45B1-93FB-6A31F35406C9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{410127B5-46A2-4DDA-889D-94E10095EAE6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{4600ECE7-B83A-4338-A048-FD602715C32F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{4835D3E1-0714-4E2E-A581-5FCEBE5C83E9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{492E9344-17E4-440F-B74B-09136E585EFF}resource=/MXP/AI0;0;ReadMethodType=U16{4B5809DF-0132-4BA7-A5A9-EC5D77A94903}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{53009B38-6F7B-4D43-A964-2829154F91F9}resource=/MXP/AI2;0;ReadMethodType=U16{578D3E0D-4A78-4421-B0FB-1C65A7CB329F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{57DE3E0C-1669-43D0-9768-7DFA49B3D214}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{59253D7F-775F-423D-B394-6A13AFC62DEE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{5C564907-1DB9-446D-84DC-0C30772E9201}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{5FB67FF4-508F-4ED2-97F0-C36B64D05B1C}resource=/MXP/AO0;0;WriteMethodType=U16{616949DA-FBC9-452B-91B7-52FB0FD6B2E2}resource=/AccelerationZ;0;ReadMethodType=I16{621985B0-E84C-4B51-8417-39D454C2E22E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{632EAB74-7716-46D8-BDF4-A1B3F4EEDF43}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6A60BDD1-BF08-4A66-9737-23893E90D6AE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{6AB87B1D-C149-4848-AC7A-12AC84E023D8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{6B6AA10C-24EE-4054-9F52-9E42DAA05E0F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{6CBD9B80-1B4B-47EC-8D64-D08484A48B07}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{6CEA7583-D3F1-43C7-B237-C630C750CE0C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{717F8612-DE11-40ED-9117-5AAC925DE1EB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{73D72E42-2C72-4EE9-8318-FCA06C1BC197}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{772B89DF-1C8C-4273-B0B3-D705725C06A7}resource=/AccelerationY;0;ReadMethodType=I16{7D2B15C1-DA40-4AA2-8E7C-7B31C9F1218C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{93533BB1-FA74-4171-822F-CBDAF4C0664F}resource=/MXP/AI1;0;ReadMethodType=U16{94EF86EB-7516-4B3F-B40E-C4FFB51F0E58}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{9BDDCB63-1C93-4A9C-ACEC-4D472C5E02D4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{9C673D83-2B70-4AA8-A31A-C55963AAFB9B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A5FD2401-22C0-4CD8-B473-400B34678C81}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{A886672A-E89F-4FF0-8C12-7039CF545FC8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{AC257830-36B4-4CCD-9CD3-C9263EA866A8}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{B38AD194-3D9A-4DE9-B4F9-49733278E5C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{B4683BDA-44A2-4B86-AA34-3264CB042EF4}resource=/AnalogIn3;0;ReadMethodType=U16{B4D0ED36-17D3-4D9B-BDA1-AF603ED1F55A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{B693BE10-0348-40E5-920F-3E165E633A48}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{B9D491A6-1FBD-46EF-93A6-C928328474D8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C4393713-847D-43B0-A886-4F098570E691}resource=/AccelerationX;0;ReadMethodType=I16{C637B8AC-675F-4856-BED8-70811F7BC172}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{C7010976-3973-4CF8-8DE8-40CD4C13CC98}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{C9639F22-400D-4F68-8C58-705EE0A24FEE}resource=/AnalogIn2;0;ReadMethodType=U16{D31B18EB-7B81-4294-A738-7B9D873C8424}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{D4D25F77-1779-465C-8410-FFA20A907DD9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{D825EA0D-86E2-4C29-8E48-0E5250A707CA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{D8EC2736-AD86-4C4C-9152-1A6FA0C3F14D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{D93E67F4-5254-41B6-8036-A1E09B65C407}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{DBF17F54-37DC-4B4E-BB2A-3079A1030FD4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{DEB0EEA8-288A-4172-86E4-122DC7A1057D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{E005C6DF-A4DB-4AC5-B5B6-8CFF35F3EFC7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{E0309C6A-36C0-4A93-970F-C8A9F3DA41AF}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{E538BB3A-354C-48D4-9C33-AE50853F75A7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{E706BD30-61E4-4613-83A5-7707DCF0EAE9}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{E7FBA125-B0C9-45A5-A464-DB96DF54F5B9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{F2429454-E90F-41AC-BC59-DE9D107DEF00}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{F6968167-F025-4B8F-84D7-A076C8181872}resource=/AnalogIn0;0;ReadMethodType=U16{FD1E1EA3-EEBD-4054-BC7F-D70830837B00}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{FE827DCF-202F-4C0B-B7E1-F1904EC41D9E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolLED data to FPGA FIFO"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;LED data to FPGA FIFO;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"Mode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="vi.lib" Type="Folder">
						<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
						<Item Name="lvSimController.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/Simulation/lvSimController.dll"/>
					</Item>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="Main FPGA code" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Main FPGA code</Property>
						<Property Name="Comp.BitfileName" Type="Str">UnicornMain_FPGATarget_MainFPGAcode_pijQzTnE6Wg.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA/FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/Ros1/Documents/Github/UNICORN-2019-LabVIEW/UnicornMain/FPGA/FPGA Bitfiles/UnicornMain_FPGATarget_MainFPGAcode_pijQzTnE6Wg.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA/FPGA Bitfiles/UnicornMain_FPGATarget_MainFPGAcode_pijQzTnE6Wg.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/Ros1/Documents/Github/UNICORN-2019-LabVIEW/UnicornMain/UnicornMain.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/UnicornRIO1/Chassis/FPGA Target/FPGA upload data to LEDs.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="GlobalVI.vi" Type="VI" URL="../GlobalVI.vi"/>
		<Item Name="LED_Controller.vi" Type="VI" URL="../LED_Controller.vi"/>
		<Item Name="Lift_State_Machine.vi" Type="VI" URL="../Lift_State_Machine.vi"/>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Motor_Controller.vi" Type="VI" URL="../Motor_Controller.vi"/>
		<Item Name="R2100_Controller.vi" Type="VI" URL="../R2100_Controller.vi"/>
		<Item Name="ROS_Publisher.vi" Type="VI" URL="../ROS_Publisher.vi"/>
		<Item Name="ROS_Subscribers.vi" Type="VI" URL="../ROS_Subscribers.vi"/>
		<Item Name="UWB_Controller.vi" Type="VI" URL="../UWB_Controller.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="ROSTerminal.vi" Type="VI" URL="/&lt;userlib&gt;/ROS for LabVIEW Software/ROS/Code/ROS_Tools/ROSTerminal.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Analog Scaling Constants List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Analog Scaling Constants List.ctl"/>
				<Item Name="Analog Scaling Constants.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Analog Scaling Constants.ctl"/>
				<Item Name="AO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AO/typedefs/AO Channels Enum.ctl"/>
				<Item Name="AO Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AO/typedefs/AO Channels FPGA Reference.ctl"/>
				<Item Name="AO Channels List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AO/typedefs/AO Channels List.ctl"/>
				<Item Name="AO.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/AO/AO.lvlib"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Configuration Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Configuration Manager.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Bank Enum.ctl"/>
				<Item Name="DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Bitmask to Channel Map.ctl"/>
				<Item Name="DIO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Channels Enum.ctl"/>
				<Item Name="DIO Channels List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Channels List.ctl"/>
				<Item Name="DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO FPGA Reference.ctl"/>
				<Item Name="DIO.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/DIO/DIO.lvlib"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="Draw Round Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Round Rect.vi"/>
				<Item Name="Draw Text at Point.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Text at Point.vi"/>
				<Item Name="Draw Text in Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Text in Rect.vi"/>
				<Item Name="Empty Picture" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Empty Picture"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Find Mutex.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="FPGA Ref Manager Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/FPGA Ref Manager Action Enum.ctl"/>
				<Item Name="FPGA Ref Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/FPGA Ref Manager.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Generic FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Generic FPGA Reference.ctl"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Hardware Version Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Hardware Version Enum.ctl"/>
				<Item Name="I2C Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/I2C/typedefs/I2C Channels Enum.ctl"/>
				<Item Name="I2C Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/I2C/typedefs/I2C Channels FPGA Reference.ctl"/>
				<Item Name="I2C.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/I2C/I2C.lvlib"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Internecine Avoider.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/Internecine Avoider.vi"/>
				<Item Name="IO Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/IO Manager.vi"/>
				<Item Name="Is FPGA Ref Available.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Is FPGA Ref Available.vi"/>
				<Item Name="Lock Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Lock Mutex.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="LVMouseTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMouseTypeDef.ctl"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="MD5Checksum core.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/MD5Checksum.llb/MD5Checksum core.vi"/>
				<Item Name="MD5Checksum format message-digest.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/MD5Checksum.llb/MD5Checksum format message-digest.vi"/>
				<Item Name="MD5Checksum pad.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/MD5Checksum.llb/MD5Checksum pad.vi"/>
				<Item Name="MD5Checksum string.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/MD5Checksum.llb/MD5Checksum string.vi"/>
				<Item Name="Mutex Collection.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Mutex Collection.ctl"/>
				<Item Name="myRIO Generic Hardware Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/myRIO Generic Hardware Reference.ctl"/>
				<Item Name="myRIO v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Build Bitmask DIO.vi"/>
				<Item Name="myRIO v1.0 Close.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/myRIO v1.0 Close.vi"/>
				<Item Name="myRIO v1.0 Configure I2C.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/I2C/vis/myRIO v1.0 Configure I2C.vi"/>
				<Item Name="myRIO v1.0 Read DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Read DIO.vi"/>
				<Item Name="myRIO v1.0 Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/myRIO v1.0 Reference.ctl"/>
				<Item Name="myRIO v1.0 Wait for RDY.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/System/vis/myRIO v1.0 Wait for RDY.vi"/>
				<Item Name="myRIO v1.0 Write AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AO/vis/myRIO v1.0 Write AO.vi"/>
				<Item Name="myRIO v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Write DIO.vi"/>
				<Item Name="myRIO v1.0 Write I2C.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/I2C/vis/myRIO v1.0 Write I2C.vi"/>
				<Item Name="Named Mutex.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Named Mutex.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Open URL in Default Browser (path).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (path).vi"/>
				<Item Name="Open URL in Default Browser (string).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (string).vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Open URL in Default Browser.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser.vi"/>
				<Item Name="Parse Scaling Constant Table.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Parse Scaling Constant Table.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="PCT Pad String.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/PCT Pad String.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Reentrant Mutex.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Reentrant Mutex.ctl"/>
				<Item Name="Ref Counter Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Ref Counter Action Enum.ctl"/>
				<Item Name="Ref Counter.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Ref Counter.vi"/>
				<Item Name="Resource Manager Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Resource Manager Action Enum.ctl"/>
				<Item Name="roboRIO AO Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AO/typedefs/roboRIO AO Channels FPGA Reference.ctl"/>
				<Item Name="roboRIO DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO Bank Enum.ctl"/>
				<Item Name="roboRIO DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO Bitmask to Channel Map.ctl"/>
				<Item Name="roboRIO DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO FPGA Reference.ctl"/>
				<Item Name="roboRIO I2C Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/I2C/typedefs/roboRIO I2C Channels FPGA Reference.ctl"/>
				<Item Name="roboRIO IO Config FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO IO Config FPGA Reference.ctl"/>
				<Item Name="roboRIO v1.0 AO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AO/typedefs/roboRIO v1.0 AO Channels Enum.ctl"/>
				<Item Name="roboRIO v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Build Bitmask DIO.vi"/>
				<Item Name="roboRIO v1.0 Build Mutex Name.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Build Mutex Name.vi"/>
				<Item Name="roboRIO v1.0 Build MUX Configuration AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AO/vis/roboRIO v1.0 Build MUX Configuration AO.vi"/>
				<Item Name="roboRIO v1.0 Build MUX Configuration DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Build MUX Configuration DIO.vi"/>
				<Item Name="roboRIO v1.0 Build MUX Configuration I2C.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/I2C/vis/roboRIO v1.0 Build MUX Configuration I2C.vi"/>
				<Item Name="roboRIO v1.0 Channel Reservation Info.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Channel Reservation Info.ctl"/>
				<Item Name="roboRIO v1.0 Channel Reservation List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Channel Reservation List.ctl"/>
				<Item Name="roboRIO v1.0 Configure I2C.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/I2C/vis/roboRIO v1.0 Configure I2C.vi"/>
				<Item Name="roboRIO v1.0 Configure IO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Configure IO.vi"/>
				<Item Name="roboRIO v1.0 Connector List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Connector List.ctl"/>
				<Item Name="roboRIO v1.0 Create Configuration List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Create Configuration List.vi"/>
				<Item Name="roboRIO v1.0 DIO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO v1.0 DIO Channels Enum.ctl"/>
				<Item Name="roboRIO v1.0 Get Analog Scaling Constants.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Get Analog Scaling Constants.vi"/>
				<Item Name="roboRIO v1.0 Get Scaling Constants AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AO/vis/roboRIO v1.0 Get Scaling Constants AO.vi"/>
				<Item Name="roboRIO v1.0 Get Scaling Constants.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Get Scaling Constants.vi"/>
				<Item Name="roboRIO v1.0 I2C Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/I2C/typedefs/roboRIO v1.0 I2C Channels Enum.ctl"/>
				<Item Name="roboRIO v1.0 Open AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AO/vis/roboRIO v1.0 Open AO.vi"/>
				<Item Name="roboRIO v1.0 Open DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Open DIO.vi"/>
				<Item Name="roboRIO v1.0 Open I2C.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/I2C/vis/roboRIO v1.0 Open I2C.vi"/>
				<Item Name="roboRIO v1.0 Open.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/roboRIO v1.0 Open.vi"/>
				<Item Name="roboRIO v1.0 Read DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Read DIO.vi"/>
				<Item Name="roboRIO v1.0 Reserve AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AO/vis/roboRIO v1.0 Reserve AO.vi"/>
				<Item Name="roboRIO v1.0 Reserve Channel List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Reserve Channel List.vi"/>
				<Item Name="roboRIO v1.0 Reserve Channel.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Reserve Channel.vi"/>
				<Item Name="roboRIO v1.0 Reserve DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Reserve DIO.vi"/>
				<Item Name="roboRIO v1.0 Reserve I2C.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/I2C/vis/roboRIO v1.0 Reserve I2C.vi"/>
				<Item Name="roboRIO v1.0 Scaling Constants Table.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Scaling Constants Table.vi"/>
				<Item Name="roboRIO v1.0 Unreserve Channel.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Unreserve Channel.vi"/>
				<Item Name="roboRIO v1.0 Write AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AO/vis/roboRIO v1.0 Write AO.vi"/>
				<Item Name="roboRIO v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Write DIO.vi"/>
				<Item Name="roboRIO v1.0 Write I2C.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/I2C/vis/roboRIO v1.0 Write I2C.vi"/>
				<Item Name="Scaled Value To Raw.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Scaled Value To Raw.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Pen State.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Set Pen State.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="System FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/System/typedefs/System FPGA Reference.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="TCP Listen Internal List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/TCP Listen Internal List.vi"/>
				<Item Name="TCP Listen List Operations.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/TCP Listen List Operations.ctl"/>
				<Item Name="TCP Listen.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/TCP Listen.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="UART.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/UART/UART.lvlib"/>
				<Item Name="Unlock Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Unlock Mutex.vi"/>
				<Item Name="Utilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Utilities/Utilities.lvlib"/>
				<Item Name="Validate Channels.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Validate Channels.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="UnicornMain_FPGATarget_MainFPGAcode_pijQzTnE6Wg.lvbitx" Type="Document" URL="../FPGA/FPGA Bitfiles/UnicornMain_FPGATarget_MainFPGAcode_pijQzTnE6Wg.lvbitx"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="ROS for LabVIEW" Type="Source Distribution">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A9C0E8DB-E71E-450C-B716-4E49853CE125}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">ROS for LabVIEW</Property>
				<Property Name="Bld_compilerOptLevel" Type="Int">0</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/NI_AB_TARGETNAME/ROS for LabVIEW</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{17744952-60E1-4ED1-996A-846B682EE633}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.build" Type="Int">45</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{87EDCC94-E1DE-4A68-BEAF-D20684D04C85}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/UnicornRIO1/ROS for LabVIEW Software</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
			<Item Name="UnicornMain-deploy" Type="{69A947D5-514E-4E75-818E-69657C0547D8}">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{F596FE65-5207-4FC4-A2D5-12406E76407C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{68A09732-9E20-41F4-A5DF-DF1383A3258C}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{63A32A88-8DE8-4DF0-8204-EDDC5A026726}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">UnicornMain-deploy</Property>
				<Property Name="Bld_compilerOptLevel" Type="Int">0</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/NI_AB_TARGETNAME/UnicornMain-deploy</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{728FFE3B-4FC1-4FA7-9ACD-A586274025DF}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.build" Type="Int">106</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">unicornMainStartup.rtexe</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/unicornMainStartup.rtexe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{C53BA54B-55EF-47A8-A849-A3483E804E44}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/UnicornRIO1/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].itemID" Type="Ref">/UnicornRIO1/Messages/msgsBuilder_MasterMessage.vi</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/UnicornRIO1/GlobalVI.vi</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/UnicornRIO1/LED_Controller.vi</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/UnicornRIO1/Lift_State_Machine.vi</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/UnicornRIO1/Motor_Controller.vi</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/UnicornRIO1/R2100_Controller.vi</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/UnicornRIO1/ROS_Publisher.vi</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/UnicornRIO1/ROS_Subscribers.vi</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/UnicornRIO1/UWB_Controller.vi</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">11</Property>
				<Property Name="TgtF_companyName" Type="Str">Mälardalens högskola</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">UnicornMain-deploy</Property>
				<Property Name="TgtF_internalName" Type="Str">UnicornMain-deploy</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2019 Mälardalens högskola</Property>
				<Property Name="TgtF_productName" Type="Str">UnicornMain-deploy</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{C60F43F5-69BC-4114-8DF0-1D58C380EF93}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">unicornMainStartup.rtexe</Property>
			</Item>
		</Item>
	</Item>
</Project>
