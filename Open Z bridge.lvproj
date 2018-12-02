<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="drivers" Type="Folder">
			<Item Name="TWM client" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="TWM Mode.ctl" Type="VI" URL="../drivers/TWM client/TWM Mode.ctl"/>
				<Item Name="TWM Session.ctl" Type="VI" URL="../drivers/TWM client/TWM Session.ctl"/>
				<Item Name="TWM client.lvlibp" Type="LVLibp" URL="../drivers/TWM client.lvlibp">
					<Item Name="TWM Client Processing Setup.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Processing Setup.ctl"/>
					<Item Name="TWM Client Quantity Record.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Quantity Record.ctl"/>
					<Item Name="TWM Client Meas Setup.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Meas Setup.ctl"/>
					<Item Name="TWM Client Result Max Dim.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Result Max Dim.ctl"/>
					<Item Name="TWM Client Transducer Correction Item.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Transducer Correction Item.ctl"/>
					<Item Name="TWM Client Algorithm Info.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Algorithm Info.ctl"/>
					<Item Name="TWM Client Cmd Get Result.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Get Result.vi"/>
					<Item Name="TWM Client Cmd Get Status.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Get Status.vi"/>
					<Item Name="TWM Client Cmd Get Algorithm Info.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Get Algorithm Info.vi"/>
					<Item Name="TWM Client Cmd Identify.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Identify.vi"/>
					<Item Name="TWM Client Cmd Restart.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Restart.vi"/>
					<Item Name="TWM Client Cmd Set Corrections.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Set Corrections.vi"/>
					<Item Name="TWM Client Cmd Set Measurement.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Set Measurement.vi"/>
					<Item Name="TWM Client Cmd Start.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Start.vi"/>
					<Item Name="TWM Client Cmd Stop.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Cmd Stop.vi"/>
					<Item Name="TWM Client Measure and Get Result.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Measure and Get Result.vi"/>
					<Item Name="TWM Client Recieve Packet.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Recieve Packet.vi"/>
					<Item Name="TWM Client Send Packet.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Send Packet.vi"/>
					<Item Name="TWM Client Wait ACK.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Wait ACK.vi"/>
					<Item Name="TWM Client Test.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Test.vi"/>
					<Item Name="TWM Client Open.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Open.vi"/>
					<Item Name="TWM Client Close.vi" Type="VI" URL="../drivers/TWM client.lvlibp/TWM client/TWM Client Close.vi"/>
					<Item Name="whitespace.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/Utility/error.llb/whitespace.ctl"/>
					<Item Name="Trim Whitespace.vi" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi"/>
					<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
					<Item Name="Clear Errors.vi" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
					<Item Name="wa32 WaitNamedPipeA.vi" Type="VI" URL="../drivers/TWM client.lvlibp/WinAPI32/wa32 WaitNamedPipeA.vi"/>
					<Item Name="wa32 CreateFileA.vi" Type="VI" URL="../drivers/TWM client.lvlibp/WinAPI32/wa32 CreateFileA.vi"/>
					<Item Name="wa32 CloseHandle.vi" Type="VI" URL="../drivers/TWM client.lvlibp/WinAPI32/wa32 CloseHandle.vi"/>
					<Item Name="wa32 WriteFile.vi" Type="VI" URL="../drivers/TWM client.lvlibp/WinAPI32/wa32 WriteFile.vi"/>
					<Item Name="wa32 PeekNamedPipe.vi" Type="VI" URL="../drivers/TWM client.lvlibp/WinAPI32/wa32 PeekNamedPipe.vi"/>
					<Item Name="wa32 ReadFile.vi" Type="VI" URL="../drivers/TWM client.lvlibp/WinAPI32/wa32 ReadFile.vi"/>
					<Item Name="wa32 Flush Read.vi" Type="VI" URL="../drivers/TWM client.lvlibp/WinAPI32/high level/wa32 Flush Read.vi"/>
					<Item Name="wa32 Read Till Key.vi" Type="VI" URL="../drivers/TWM client.lvlibp/WinAPI32/high level/wa32 Read Till Key.vi"/>
				</Item>
			</Item>
			<Item Name="AFG3101C" Type="Folder">
				<Item Name="Tektronix AFG 3000 Series.lvlib" Type="Library" URL="../drivers/AFG3101C/Tektronix AFG 3000 Series.lvlib"/>
				<Item Name="AFG3101C Session.ctl" Type="VI" URL="../drivers/AFG3101C/AFG3101C Session.ctl"/>
			</Item>
			<Item Name="infolib.lvlibp" Type="LVLibp" URL="../drivers/infolib.lvlibp">
				<Item Name="Private" Type="Folder">
					<Item Name="Add key polymorph parts" Type="Folder">
						<Item Name="Boolean.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add key polymorph parts/Boolean.vi"/>
						<Item Name="CXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add key polymorph parts/CXT.vi"/>
						<Item Name="EXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add key polymorph parts/EXT.vi"/>
						<Item Name="I64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add key polymorph parts/I64.vi"/>
						<Item Name="String.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add key polymorph parts/String.vi"/>
						<Item Name="Time Stamp.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add key polymorph parts/Time Stamp.vi"/>
						<Item Name="U64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add key polymorph parts/U64.vi"/>
					</Item>
					<Item Name="Add matrix polymorph parts" Type="Folder">
						<Item Name="1D CXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/1D CXT.vi"/>
						<Item Name="1D EXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/1D EXT.vi"/>
						<Item Name="1D I64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/1D I64.vi"/>
						<Item Name="1D String.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/1D String.vi"/>
						<Item Name="1D Time Stamp.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/1D Time Stamp.vi"/>
						<Item Name="1D U64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/1D U64.vi"/>
						<Item Name="2D CXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/2D CXT.vi"/>
						<Item Name="2D EXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/2D EXT.vi"/>
						<Item Name="2D I64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/2D I64.vi"/>
						<Item Name="2D String.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/2D String.vi"/>
						<Item Name="2D Time Stamp.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/2D Time Stamp.vi"/>
						<Item Name="2D U64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Add matrix polymorph parts/2D U64.vi"/>
					</Item>
					<Item Name="Get key polymorph parts" Type="Folder">
						<Item Name="GetBoolean.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get key polymorph parts/GetBoolean.vi"/>
						<Item Name="GetCXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get key polymorph parts/GetCXT.vi"/>
						<Item Name="GetEXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get key polymorph parts/GetEXT.vi"/>
						<Item Name="GetI64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get key polymorph parts/GetI64.vi"/>
						<Item Name="GetString.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get key polymorph parts/GetString.vi"/>
						<Item Name="GetTime Stamp.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get key polymorph parts/GetTime Stamp.vi"/>
						<Item Name="GetU64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get key polymorph parts/GetU64.vi"/>
					</Item>
					<Item Name="Get matrix polymorph parts" Type="Folder">
						<Item Name="Get 1D CXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 1D CXT.vi"/>
						<Item Name="Get 1D EXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 1D EXT.vi"/>
						<Item Name="Get 1D I64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 1D I64.vi"/>
						<Item Name="Get 1D String.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 1D String.vi"/>
						<Item Name="Get 1D Time Stamp.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 1D Time Stamp.vi"/>
						<Item Name="Get 1D U64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 1D U64.vi"/>
						<Item Name="Get 2D CXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 2D CXT.vi"/>
						<Item Name="Get 2D EXT.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 2D EXT.vi"/>
						<Item Name="Get 2D I64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 2D I64.vi"/>
						<Item Name="Get 2D U64.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 2D U64.vi"/>
						<Item Name="Get 2D String.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 2D String.vi"/>
						<Item Name="Get 2D Time Stamp.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Get matrix polymorph parts/Get 2D Time Stamp.vi"/>
					</Item>
					<Item Name="Testing" Type="Folder">
						<Item Name="test library.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Testing/test library.vi"/>
						<Item Name="test simple.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Testing/test simple.vi"/>
					</Item>
					<Item Name="Utilities" Type="Folder">
						<Item Name="Add spaces.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Add spaces.vi"/>
						<Item Name="Assure Newline at End.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Assure Newline at End.vi"/>
						<Item Name="Convert String to Time Stamp.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Convert String to Time Stamp.vi"/>
						<Item Name="Create 1D Table.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Create 1D Table.vi"/>
						<Item Name="Create 2D Table.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Create 2D Table.vi"/>
						<Item Name="Create key line.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Create key line.vi"/>
						<Item Name="Create Sections Headings.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Create Sections Headings.vi"/>
						<Item Name="Create Table Heading.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Create Table Heading.vi"/>
						<Item Name="EOL.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/EOL.vi"/>
						<Item Name="Exist Section.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Exist Section.vi"/>
						<Item Name="Flatten to CSV Record.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Flatten to CSV Record.vi"/>
						<Item Name="Get Key Line.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Get Key Line.vi"/>
						<Item Name="Get Matrix String.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Get Matrix String.vi"/>
						<Item Name="Get Section Indentation Length.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Get Section Indentation Length.vi"/>
						<Item Name="Indent Size.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Indent Size.vi"/>
						<Item Name="Insert.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Insert.vi"/>
						<Item Name="Parse CSV String.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Parse CSV String.vi"/>
						<Item Name="RegExpTranslate.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/RegExpTranslate.vi"/>
						<Item Name="Remove all sections.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Remove all sections.vi"/>
					</Item>
				</Item>
				<Item Name="Public" Type="Folder">
					<Item Name="Add Key Or Table.vi" Type="VI" URL="../drivers/infolib.lvlibp/Public/Add Key Or Table.vi"/>
					<Item Name="Get Key Or Table.vi" Type="VI" URL="../drivers/infolib.lvlibp/Public/Get Key Or Table.vi"/>
					<Item Name="Get Section.vi" Type="VI" URL="../drivers/infolib.lvlibp/Private/Utilities/Get Section.vi"/>
					<Item Name="Insert Info Data.vi" Type="VI" URL="../drivers/infolib.lvlibp/Public/Insert Info Data.vi"/>
					<Item Name="Load Info.vi" Type="VI" URL="../drivers/infolib.lvlibp/Public/Load Info.vi"/>
					<Item Name="Save Info.vi" Type="VI" URL="../drivers/infolib.lvlibp/Public/Save Info.vi"/>
				</Item>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/picture/picture.llb/imagedata.ctl"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="../drivers/infolib.lvlibp/1abvi3w/vi.lib/Utility/error.llb/whitespace.ctl"/>
			</Item>
		</Item>
		<Item Name="source" Type="Folder">
			<Item Name="Source Type.ctl" Type="VI" URL="../source/Source Type.ctl"/>
			<Item Name="Source Session.ctl" Type="VI" URL="../source/Source Session.ctl"/>
			<Item Name="Source Panel.vi" Type="VI" URL="../source/Source Panel.vi"/>
			<Item Name="Source Open.vi" Type="VI" URL="../source/Source Open.vi"/>
			<Item Name="Source Close.vi" Type="VI" URL="../source/Source Close.vi"/>
			<Item Name="Source Set Level.vi" Type="VI" URL="../source/Source Set Level.vi"/>
		</Item>
		<Item Name="bridge" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Bridge Type.ctl" Type="VI" URL="../bridge/Bridge Type.ctl"/>
			<Item Name="Bridge Session.ctl" Type="VI" URL="../bridge/Bridge Session.ctl"/>
			<Item Name="Bridge Sampling Setup.ctl" Type="VI" URL="../bridge/Bridge Sampling Setup.ctl"/>
			<Item Name="Bridge Reading Data.ctl" Type="VI" URL="../bridge/Bridge Reading Data.ctl"/>
			<Item Name="Bridge Frequency Readings Data.ctl" Type="VI" URL="../bridge/Bridge Frequency Readings Data.ctl"/>
			<Item Name="TWM Parse Parameters.vi" Type="VI" URL="../drivers/TWM client/TWM Parse Parameters.vi"/>
			<Item Name="RLC_fake.vi" Type="VI" URL="../bridge/RLC_fake.vi"/>
			<Item Name="Bridge Panel.vi" Type="VI" URL="../bridge/Bridge Panel.vi"/>
			<Item Name="Bridge Open.vi" Type="VI" URL="../bridge/Bridge Open.vi"/>
			<Item Name="Bridge Close.vi" Type="VI" URL="../bridge/Bridge Close.vi"/>
			<Item Name="Bridge Setup.vi" Type="VI" URL="../bridge/Bridge Setup.vi"/>
			<Item Name="Bridge Measure Single.vi" Type="VI" URL="../bridge/Bridge Measure Single.vi"/>
		</Item>
		<Item Name="measure" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="meas session.ctl" Type="VI" URL="../measure/meas session.ctl"/>
			<Item Name="Meas Freq Info.ctl" Type="VI" URL="../measure/Meas Freq Info.ctl"/>
			<Item Name="Meas Sequence Item.ctl" Type="VI" URL="../measure/Meas Sequence Item.ctl"/>
			<Item Name="Meas Sweep Config.ctl" Type="VI" URL="../measure/Meas Sweep Config.ctl"/>
			<Item Name="meas_sweep_flist_mode.ctl" Type="VI" URL="../measure/meas_sweep_flist_mode.ctl"/>
			<Item Name="meas_swp_mode.ctl" Type="VI" URL="../measure/meas_swp_mode.ctl"/>
			<Item Name="Meas Results.ctl" Type="VI" URL="../measure/Meas Results.ctl"/>
			<Item Name="Meas Result GUI References.ctl" Type="VI" URL="../measure/Meas Result GUI References.ctl"/>
			<Item Name="Meas Results Sweep Data.ctl" Type="VI" URL="../measure/Meas Results Sweep Data.ctl"/>
			<Item Name="Meas Result Major Format.ctl" Type="VI" URL="../measure/Meas Result Major Format.ctl"/>
			<Item Name="Meas Result Deviation Format.ctl" Type="VI" URL="../measure/Meas Result Deviation Format.ctl"/>
			<Item Name="Meas Panel.vi" Type="VI" URL="../measure/Meas Panel.vi"/>
			<Item Name="Meas Gen Sequence.vi" Type="VI" URL="../measure/Meas Gen Sequence.vi"/>
			<Item Name="Meas Gen Path.vi" Type="VI" URL="../measure/Meas Gen Path.vi"/>
			<Item Name="Meas Asynchronous Start.vi" Type="VI" URL="../measure/Meas Asynchronous Start.vi"/>
			<Item Name="Meas Asynchronous Wait.vi" Type="VI" URL="../measure/Meas Asynchronous Wait.vi"/>
			<Item Name="Meas Main.vi" Type="VI" URL="../measure/Meas Main.vi"/>
			<Item Name="Meas Loop.vi" Type="VI" URL="../measure/Meas Loop.vi"/>
			<Item Name="Meas Result Get Access.vi" Type="VI" URL="../measure/Meas Result Get Access.vi"/>
			<Item Name="Meas Result Release Access.vi" Type="VI" URL="../measure/Meas Result Release Access.vi"/>
			<Item Name="Meas Result Get Sweep Data.vi" Type="VI" URL="../measure/Meas Result Get Sweep Data.vi"/>
			<Item Name="Meas Result Add Reading.vi" Type="VI" URL="../measure/Meas Result Add Reading.vi"/>
			<Item Name="Meas Result Update View.vi" Type="VI" URL="../measure/Meas Result Update View.vi"/>
			<Item Name="Meas Result Freq Format.ctl" Type="VI" URL="../measure/Meas Result Freq Format.ctl"/>
		</Item>
		<Item Name="ini" Type="Folder">
			<Item Name="ini_auto" Type="Folder">
				<Item Name="ini_build_objects_list.vi" Type="VI" URL="../ini/ini_auto/ini_build_objects_list.vi"/>
				<Item Name="ini_build_objects_list_recoursive.vi" Type="VI" URL="../ini/ini_auto/ini_build_objects_list_recoursive.vi"/>
				<Item Name="ini_object_load.vi" Type="VI" URL="../ini/ini_auto/ini_object_load.vi"/>
				<Item Name="ini_object_load_vector.vi" Type="VI" URL="../ini/ini_auto/ini_object_load_vector.vi"/>
				<Item Name="ini_object_parse_array.vi" Type="VI" URL="../ini/ini_auto/ini_object_parse_array.vi"/>
				<Item Name="ini_object_parse_string_array.vi" Type="VI" URL="../ini/ini_auto/ini_object_parse_string_array.vi"/>
				<Item Name="ini_object_save.vi" Type="VI" URL="../ini/ini_auto/ini_object_save.vi"/>
				<Item Name="ini_object_save_vector.vi" Type="VI" URL="../ini/ini_auto/ini_object_save_vector.vi"/>
				<Item Name="ini_objects_parse.vi" Type="VI" URL="../ini/ini_auto/ini_objects_parse.vi"/>
				<Item Name="ini_parse_row.ctl" Type="VI" URL="../ini/ini_auto/ini_parse_row.ctl"/>
			</Item>
			<Item Name="ini_low_level" Type="Folder">
				<Item Name="ini_read_bool.vi" Type="VI" URL="../ini/ini_low_level/ini_read_bool.vi"/>
				<Item Name="ini_read_common.vi" Type="VI" URL="../ini/ini_low_level/ini_read_common.vi"/>
				<Item Name="ini_read_cplx_double_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_read_cplx_double_vector.vi"/>
				<Item Name="ini_read_cplx_extended_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_read_cplx_extended_vector.vi"/>
				<Item Name="ini_read_double.vi" Type="VI" URL="../ini/ini_low_level/ini_read_double.vi"/>
				<Item Name="ini_read_double_multi.vi" Type="VI" URL="../ini/ini_low_level/ini_read_double_multi.vi"/>
				<Item Name="ini_read_double_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_read_double_vector.vi"/>
				<Item Name="ini_read_extended_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_read_extended_vector.vi"/>
				<Item Name="ini_read_int32.vi" Type="VI" URL="../ini/ini_low_level/ini_read_int32.vi"/>
				<Item Name="ini_read_int32_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_read_int32_vector.vi"/>
				<Item Name="ini_read_int32s_multi.vi" Type="VI" URL="../ini/ini_low_level/ini_read_int32s_multi.vi"/>
				<Item Name="ini_read_int64_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_read_int64_vector.vi"/>
				<Item Name="ini_read_path.vi" Type="VI" URL="../ini/ini_low_level/ini_read_path.vi"/>
				<Item Name="ini_read_string.vi" Type="VI" URL="../ini/ini_low_level/ini_read_string.vi"/>
				<Item Name="ini_read_string_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_read_string_vector.vi"/>
				<Item Name="ini_read_strings_multi.vi" Type="VI" URL="../ini/ini_low_level/ini_read_strings_multi.vi"/>
				<Item Name="ini_read_uint32.vi" Type="VI" URL="../ini/ini_low_level/ini_read_uint32.vi"/>
				<Item Name="ini_read_uint64_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_read_uint64_vector.vi"/>
				<Item Name="ini_read_variant.vi" Type="VI" URL="../ini/ini_low_level/ini_read_variant.vi"/>
				<Item Name="ini_save_cplx_double_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_save_cplx_double_vector.vi"/>
				<Item Name="ini_save_cplx_extended_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_save_cplx_extended_vector.vi"/>
				<Item Name="ini_save_double.vi" Type="VI" URL="../ini/ini_low_level/ini_save_double.vi"/>
				<Item Name="ini_save_double_multi.vi" Type="VI" URL="../ini/ini_low_level/ini_save_double_multi.vi"/>
				<Item Name="ini_save_double_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_save_double_vector.vi"/>
				<Item Name="ini_save_extended.vi" Type="VI" URL="../ini/ini_low_level/ini_save_extended.vi"/>
				<Item Name="ini_save_extended_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_save_extended_vector.vi"/>
				<Item Name="ini_save_int32_multi.vi" Type="VI" URL="../ini/ini_low_level/ini_save_int32_multi.vi"/>
				<Item Name="ini_save_int64_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_save_int64_vector.vi"/>
				<Item Name="ini_save_string_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_save_string_vector.vi"/>
				<Item Name="ini_save_strings_multi.vi" Type="VI" URL="../ini/ini_low_level/ini_save_strings_multi.vi"/>
				<Item Name="ini_save_uint64_vector.vi" Type="VI" URL="../ini/ini_low_level/ini_save_uint64_vector.vi"/>
				<Item Name="ini_save_variant.vi" Type="VI" URL="../ini/ini_low_level/ini_save_variant.vi"/>
			</Item>
			<Item Name="ini_load.vi" Type="VI" URL="../ini/ini_load.vi"/>
			<Item Name="ini_load_variables.vi" Type="VI" URL="../ini/ini_load_variables.vi"/>
			<Item Name="ini_save.vi" Type="VI" URL="../ini/ini_save.vi"/>
			<Item Name="ini_save_variables.vi" Type="VI" URL="../ini/ini_save_variables.vi"/>
		</Item>
		<Item Name="other" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="GUI Panel Control Action.ctl" Type="VI" URL="../other/GUI Panel Control Action.ctl"/>
			<Item Name="GUI Panel Control.vi" Type="VI" URL="../other/GUI Panel Control.vi"/>
			<Item Name="About Dialog.vi" Type="VI" URL="../other/About Dialog.vi"/>
			<Item Name="Get Root Path.vi" Type="VI" URL="../other/Get Root Path.vi"/>
			<Item Name="get_exe_path.vi" Type="VI" URL="../other/get_exe_path.vi"/>
			<Item Name="Merge Error Ex.vi" Type="VI" URL="../other/Merge Error Ex.vi"/>
			<Item Name="randn_approximation.vi" Type="VI" URL="../other/randn_approximation.vi"/>
			<Item Name="randperm.vi" Type="VI" URL="../other/randperm.vi"/>
			<Item Name="GUI Set Error and Display Error Status.vi" Type="VI" URL="../other/GUI Set Error and Display Error Status.vi"/>
			<Item Name="graph_redef_bounds.vi" Type="VI" URL="../other/graph_redef_bounds.vi"/>
		</Item>
		<Item Name="varilib" Type="Folder">
			<Item Name="lvanlys.dll" Type="Document" URL="../varilib/lvanlys.dll"/>
			<Item Name="varilib.lvlib" Type="Library" URL="../varilib/varilib.lvlib"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="TWM parameters.ctl" Type="VI" URL="../drivers/TWM client/TWM parameters.ctl"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niScope Acquisition Status.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Acquisition Status.vi"/>
				<Item Name="niScope Actual Record Length.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Horizontal/niScope Actual Record Length.vi"/>
				<Item Name="niScope Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope Close.vi"/>
				<Item Name="niScope Commit.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope Commit.vi"/>
				<Item Name="niScope Configure Horizontal Timing.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Horizontal/niScope Configure Horizontal Timing.vi"/>
				<Item Name="niScope Configure Trigger (poly).vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger (poly).vi"/>
				<Item Name="niScope Configure Trigger Digital.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Digital.vi"/>
				<Item Name="niScope Configure Trigger Edge.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Edge.vi"/>
				<Item Name="niScope Configure Trigger Hysteresis.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Hysteresis.vi"/>
				<Item Name="niScope Configure Trigger Immediate.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Immediate.vi"/>
				<Item Name="niScope Configure Trigger Software.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Software.vi"/>
				<Item Name="niScope Configure Trigger Window.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Window.vi"/>
				<Item Name="niScope Configure Vertical.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Vertical/niScope Configure Vertical.vi"/>
				<Item Name="niScope Configure Video Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Video Trigger.vi"/>
				<Item Name="niScope export destinations.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope export destinations.ctl"/>
				<Item Name="niScope Export Signal.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Export Signal.vi"/>
				<Item Name="niScope exportable signals.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope exportable signals.ctl"/>
				<Item Name="niScope Fetch (poly).vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch (poly).vi"/>
				<Item Name="niScope Fetch Binary 8.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Binary 8.vi"/>
				<Item Name="niScope Fetch Binary 16.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Binary 16.vi"/>
				<Item Name="niScope Fetch Binary 32.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Binary 32.vi"/>
				<Item Name="niScope Fetch Cluster Complex Double.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Cluster Complex Double.vi"/>
				<Item Name="niScope Fetch Cluster.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Cluster.vi"/>
				<Item Name="niScope Fetch Complex Double.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Complex Double.vi"/>
				<Item Name="niScope Fetch Complex WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Complex WDT.vi"/>
				<Item Name="niScope Fetch Error Chain.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Error Chain.vi"/>
				<Item Name="niScope Fetch WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch WDT.vi"/>
				<Item Name="niScope Fetch.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch.vi"/>
				<Item Name="niScope Get Session Reference.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope Get Session Reference.vi"/>
				<Item Name="niScope Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope Initialize.vi"/>
				<Item Name="niScope Initiate Acquisition.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Initiate Acquisition.vi"/>
				<Item Name="niScope LabVIEW Error.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope LabVIEW Error.vi"/>
				<Item Name="niScope Multi Fetch Binary 8.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Binary 8.vi"/>
				<Item Name="niScope Multi Fetch Binary 16.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Binary 16.vi"/>
				<Item Name="niScope Multi Fetch Binary 32.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Binary 32.vi"/>
				<Item Name="niScope Multi Fetch Cluster Complex Double.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Cluster Complex Double.vi"/>
				<Item Name="niScope Multi Fetch Cluster.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Cluster.vi"/>
				<Item Name="niScope Multi Fetch Complex Double.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Complex Double.vi"/>
				<Item Name="niScope Multi Fetch Complex WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Complex WDT.vi"/>
				<Item Name="niScope Multi Fetch WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch WDT.vi"/>
				<Item Name="niScope Multi Fetch.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch.vi"/>
				<Item Name="niScope polarity.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope polarity.ctl"/>
				<Item Name="niScope signal format.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope signal format.ctl"/>
				<Item Name="niScope timestamp type.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope timestamp type.ctl"/>
				<Item Name="niScope trigger coupling.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger coupling.ctl"/>
				<Item Name="niScope trigger slope.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger slope.ctl"/>
				<Item Name="niScope trigger source digital.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger source digital.ctl"/>
				<Item Name="niScope trigger source.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger source.ctl"/>
				<Item Name="niScope trigger window mode.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger window mode.ctl"/>
				<Item Name="niScope tv event.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope tv event.ctl"/>
				<Item Name="niScope vertical coupling.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope vertical coupling.ctl"/>
				<Item Name="niScope which signal.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope which signal.ctl"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Built App File Layout.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatOverwrite.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOverwrite.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Create ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create ActiveX Event Queue.vi"/>
				<Item Name="Create Error Clust.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create Error Clust.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Destroy ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Destroy ActiveX Event Queue.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DWDT Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Digital Size.vi"/>
				<Item Name="DWDT Get Waveform Time Array.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Get Waveform Time Array.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="EventData.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/EventData.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get Waveform Time Array.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Get Waveform Time Array.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Handle Open Word or Excel File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Toolkit/Handle Open Word or Excel File.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVSelectionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVSelectionTypeDef.ctl"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_Excel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Excel/NI_Excel.lvclass"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_report.lvclass"/>
				<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
				<Item Name="NI_ReportGenerationToolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_office/NI_ReportGenerationToolkit.lvlib"/>
				<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="OccFireType.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/OccFireType.ctl"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="Wait On ActiveX Event.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait On ActiveX Event.vi"/>
				<Item Name="Wait types.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait types.ctl"/>
				<Item Name="WDT Get Waveform Time Array DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Get Waveform Time Array DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Write PNG File.vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="niScope_32.dll" Type="Document" URL="niScope_32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
