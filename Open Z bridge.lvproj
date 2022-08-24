<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="CCSymbols" Type="Str">w_daqmx,1;w_visa,1;</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
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
				<Item Name="TWM parameters.ctl" Type="VI" URL="../drivers/TWM client/TWM parameters.ctl"/>
				<Item Name="TWM Session.ctl" Type="VI" URL="../drivers/TWM client/TWM Session.ctl"/>
				<Item Name="TWM Session Data.ctl" Type="VI" URL="../drivers/TWM client/TWM Session Data.ctl"/>
				<Item Name="Meas Proc QWTB Spectrum Data.ctl" Type="VI" URL="../drivers/TWM client/Meas Proc QWTB Spectrum Data.ctl"/>
				<Item Name="Meas Proc QWTB Uncertainty Mode.ctl" Type="VI" URL="../drivers/TWM client/Meas Proc QWTB Uncertainty Mode.ctl"/>
				<Item Name="TWM Phase Info.ctl" Type="VI" URL="../drivers/TWM client/TWM Phase Info.ctl"/>
				<Item Name="TWM Parse Session Parameters for Phase.vi" Type="VI" URL="../drivers/TWM client/TWM Parse Session Parameters for Phase.vi"/>
				<Item Name="Meas Proc QWTB Load Result Spectra.vi" Type="VI" URL="../drivers/TWM client/Meas Proc QWTB Load Result Spectra.vi"/>
				<Item Name="TWM Get Session Parameters.vi" Type="VI" URL="../drivers/TWM client/TWM Get Session Parameters.vi"/>
				<Item Name="TWM client.lvlibp" Type="LVLibp" URL="../drivers/TWM client.lvlibp">
					<Item Name="TWM Client Processing Setup.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Processing Setup.ctl"/>
					<Item Name="TWM Client Quantity Record.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Quantity Record.ctl"/>
					<Item Name="TWM Client Meas Setup.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Meas Setup.ctl"/>
					<Item Name="TWM Client Result Max Dim.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Result Max Dim.ctl"/>
					<Item Name="TWM Client Transducer Correction Item.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Transducer Correction Item.ctl"/>
					<Item Name="TWM Client Algorithm Info.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Algorithm Info.ctl"/>
					<Item Name="TWM Client Result Info.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Result Info.ctl"/>
					<Item Name="TWM Client Mux Path.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Mux Path.ctl"/>
					<Item Name="TWM Client Cmd Get Result.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Get Result.vi"/>
					<Item Name="TWM Client Cmd Get Status.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Get Status.vi"/>
					<Item Name="TWM Client Cmd Get Algorithm Info.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Get Algorithm Info.vi"/>
					<Item Name="TWM Client Cmd Identify.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Identify.vi"/>
					<Item Name="TWM Client Cmd Restart.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Restart.vi"/>
					<Item Name="TWM Client Cmd Set Corrections.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Set Corrections.vi"/>
					<Item Name="TWM Client Cmd Set Measurement.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Set Measurement.vi"/>
					<Item Name="TWM Client Cmd Start.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Start.vi"/>
					<Item Name="TWM Client Cmd Stop.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Stop.vi"/>
					<Item Name="TWM Client Cmd Exec ADC Selfcalibration.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Exec ADC Selfcalibration.vi"/>
					<Item Name="TWM Client Cmd Get Versions.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Get Versions.vi"/>
					<Item Name="TWM Client Measure and Get Result.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Measure and Get Result.vi"/>
					<Item Name="TWM Client Recieve Packet.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Recieve Packet.vi"/>
					<Item Name="TWM Client Send Packet.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Send Packet.vi"/>
					<Item Name="TWM Client Wait ACK.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Wait ACK.vi"/>
					<Item Name="TWM Client Test.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Test.vi"/>
					<Item Name="TWM Client Open.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Open.vi"/>
					<Item Name="TWM Client Close.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Close.vi"/>
					<Item Name="TWM Client Version.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Version.vi"/>
					<Item Name="TWM Client Compare Version Strings.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Compare Version Strings.vi"/>
					<Item Name="TWM Client Cmd Define Multiplexer Paths.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Define Multiplexer Paths.vi"/>
					<Item Name="TWM Client Cmd Define Multiplexer Sequence.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/TWM client/TWM Client Cmd Define Multiplexer Sequence.vi"/>
					<Item Name="infolib.lvlib" Type="Library" URL="../drivers/TWM client.lvlibp/octave/infolib/infolib.lvlib"/>
					<Item Name="Trim Whitespace.vi" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi"/>
					<Item Name="whitespace.ctl" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/Utility/error.llb/whitespace.ctl"/>
					<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
					<Item Name="Space Constant.vi" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/dlg_ctls.llb/Space Constant.vi"/>
					<Item Name="Clear Errors.vi" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
					<Item Name="Normalize End Of Line.vi" Type="VI" URL="../drivers/TWM client.lvlibp/1abvi3w/vi.lib/AdvancedString/Normalize End Of Line.vi"/>
					<Item Name="wa32 ReadFile.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/WinAPI32/wa32 ReadFile.vi"/>
					<Item Name="wa32 PeekNamedPipe.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/WinAPI32/wa32 PeekNamedPipe.vi"/>
					<Item Name="wa32 Read Till Key.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/WinAPI32/high level/wa32 Read Till Key.vi"/>
					<Item Name="wa32 WriteFile.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/WinAPI32/wa32 WriteFile.vi"/>
					<Item Name="wa32 Flush Read.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/WinAPI32/high level/wa32 Flush Read.vi"/>
					<Item Name="wa32 WaitNamedPipeA.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/WinAPI32/wa32 WaitNamedPipeA.vi"/>
					<Item Name="wa32 CloseHandle.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/WinAPI32/wa32 CloseHandle.vi"/>
					<Item Name="wa32 CreateFileA.vi" Type="VI" URL="../drivers/TWM client.lvlibp/server/WinAPI32/wa32 CreateFileA.vi"/>
				</Item>
			</Item>
			<Item Name="AFG3101C" Type="Folder">
				<Item Name="Tektronix AFG 3000 Series.lvlib" Type="Library" URL="../drivers/AFG3101C/Tektronix AFG 3000 Series.lvlib"/>
				<Item Name="AFG3101C Session.ctl" Type="VI" URL="../drivers/AFG3101C/AFG3101C Session.ctl"/>
			</Item>
			<Item Name="cDAQ DDS" Type="Folder">
				<Item Name="cDAQ DDS Session.ctl" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Session.ctl"/>
				<Item Name="cDAQ DDS Setup.ctl" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Setup.ctl"/>
				<Item Name="cDAQ DDS Timebase Mode.ctl" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Timebase Mode.ctl"/>
				<Item Name="cDAQ DDS Dither.ctl" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Dither.ctl"/>
				<Item Name="cDAQ DDS Close.vi" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Close.vi"/>
				<Item Name="cDAQ DDS Config Panel.vi" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Config Panel.vi"/>
				<Item Name="cDAQ DDS Open.vi" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Open.vi"/>
				<Item Name="cDAQ DDS Process Status.vi" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Process Status.vi"/>
				<Item Name="cDAQ DDS Process.vi" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Process.vi"/>
				<Item Name="cDAQ DDS Set.vi" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Set.vi"/>
				<Item Name="cDAQ DDS Test Panel.vi" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS Test Panel.vi"/>
				<Item Name="cDAQ DDS To Idle.vi" Type="VI" URL="../drivers/cDAQ DDS/cDAQ DDS To Idle.vi"/>
			</Item>
			<Item Name="Fluke 5XXX" Type="Folder">
				<Item Name="top_lev" Type="Folder">
					<Item Name="F5xxx_get_scope_capabiilties.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_get_scope_capabiilties.vi"/>
					<Item Name="F5xxx_get_scope_measZ_value.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_get_scope_measZ_value.vi"/>
					<Item Name="F5xxx_pq_harmonic_def.ctl" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_pq_harmonic_def.ctl"/>
					<Item Name="F5xxx_pq_load_preset.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_pq_load_preset.vi"/>
					<Item Name="F5xxx_pq_set_harmonics.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_pq_set_harmonics.vi"/>
					<Item Name="F5xxx_pq_set_mode.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_pq_set_mode.vi"/>
					<Item Name="F5xxx_scope_type.ctl" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_scope_type.ctl"/>
					<Item Name="F5xxx_set_pulse_timing.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_set_pulse_timing.vi"/>
					<Item Name="F5xxx_set_waveform.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_set_waveform.vi"/>
					<Item Name="F5xxx_wait_settle.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_wait_settle.vi"/>
					<Item Name="F5xxx_session.ctl" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_session.ctl"/>
					<Item Name="F5xxx_output_mode.ctl" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx_output_mode.ctl"/>
					<Item Name="F5xxx Config Panel.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx Config Panel.vi"/>
					<Item Name="F5xxx Initialize.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx Initialize.vi"/>
					<Item Name="F5xxx Close.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx Close.vi"/>
					<Item Name="F5xxx Set Level.vi" Type="VI" URL="../drivers/Fluke 5XXX/top_lev/F5xxx Set Level.vi"/>
				</Item>
				<Item Name="Fluke 5XXX Series Multicalibrators.lvlib" Type="Library" URL="../drivers/Fluke 5XXX/Fluke 5XXX Series Multicalibrators.lvlib"/>
			</Item>
			<Item Name="Fluke 5790A" Type="Folder">
				<Item Name="top_level" Type="Folder">
					<Item Name="acv_get_multiple.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/acv_get_multiple.vi"/>
					<Item Name="acv_get_single.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/acv_get_single.vi"/>
					<Item Name="acv_open_inp1.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/acv_open_inp1.vi"/>
					<Item Name="acv_open_mode.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/acv_open_mode.vi"/>
					<Item Name="acv_open_wbnd.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/acv_open_wbnd.vi"/>
					<Item Name="acv_set_from_string.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/acv_set_from_string.vi"/>
					<Item Name="acv_var.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/acv_var.vi"/>
					<Item Name="F5790 session.ctl" Type="VI" URL="../drivers/Fluke 5790A/top_level/F5790 session.ctl"/>
					<Item Name="F5790 Config Panel.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/F5790 Config Panel.vi"/>
					<Item Name="F5790 Initialize.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/F5790 Initialize.vi"/>
					<Item Name="F5790 Close.vi" Type="VI" URL="../drivers/Fluke 5790A/top_level/F5790 Close.vi"/>
				</Item>
				<Item Name="5790A ac meas.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A ac meas.vi"/>
				<Item Name="5790A acdc meas.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A acdc meas.vi"/>
				<Item Name="5790A acdc unit.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A acdc unit.vi"/>
				<Item Name="5790A trig.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A trig.vi"/>
				<Item Name="5790A_config.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A_config.vi"/>
				<Item Name="5790A_guard.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A_guard.vi"/>
				<Item Name="5790A_init.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A_init.vi"/>
				<Item Name="5790A_input.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A_input.vi"/>
				<Item Name="5790A_range.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A_range.vi"/>
				<Item Name="5790A Get Spec.vi" Type="VI" URL="../drivers/Fluke 5790A/5790A Get Spec.vi"/>
			</Item>
			<Item Name="Agilent 33XXX Series" Type="Folder">
				<Item Name="Agilent 33XXX Series.lvlib" Type="Library" URL="../drivers/Agilent 33XXX Series/Agilent 33XXX Series.lvlib"/>
			</Item>
			<Item Name="CMI LiBbias" Type="Folder">
				<Item Name="CMI LiB Bias Open.vi" Type="VI" URL="../drivers/CMI LiBbias/CMI LiB Bias Open.vi"/>
				<Item Name="CMI LiB Bias Close.vi" Type="VI" URL="../drivers/CMI LiBbias/CMI LiB Bias Close.vi"/>
				<Item Name="CMI LiB Bias Read Error.vi" Type="VI" URL="../drivers/CMI LiBbias/CMI LiB Bias Read Error.vi"/>
				<Item Name="CMI LiB Bias Flush Buffer.vi" Type="VI" URL="../drivers/CMI LiBbias/CMI LiB Bias Flush Buffer.vi"/>
				<Item Name="CMI LiB Bias Set Bias.vi" Type="VI" URL="../drivers/CMI LiBbias/CMI LiB Bias Set Bias.vi"/>
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
			<Item Name="Bridge Algorithm.ctl" Type="VI" URL="../bridge/Bridge Algorithm.ctl"/>
			<Item Name="Bridge Bias Type.ctl" Type="VI" URL="../bridge/Bridge Bias Type.ctl"/>
			<Item Name="Bridge Bias Session.ctl" Type="VI" URL="../bridge/Bridge Bias Session.ctl"/>
			<Item Name="Bridge Bias Get Capabilities.vi" Type="VI" URL="../bridge/Bridge Bias Get Capabilities.vi"/>
			<Item Name="Bridge Bias Open.vi" Type="VI" URL="../bridge/Bridge Bias Open.vi"/>
			<Item Name="Bridge Bias Close.vi" Type="VI" URL="../bridge/Bridge Bias Close.vi"/>
			<Item Name="Bridge Bias Set.vi" Type="VI" URL="../bridge/Bridge Bias Set.vi"/>
			<Item Name="Bridge Bias Set All.vi" Type="VI" URL="../bridge/Bridge Bias Set All.vi"/>
			<Item Name="TWM Parse Parameters.vi" Type="VI" URL="../drivers/TWM client/TWM Parse Parameters.vi"/>
			<Item Name="Bridge Panel.vi" Type="VI" URL="../bridge/Bridge Panel.vi"/>
			<Item Name="Bridge Open.vi" Type="VI" URL="../bridge/Bridge Open.vi"/>
			<Item Name="Bridge Close.vi" Type="VI" URL="../bridge/Bridge Close.vi"/>
			<Item Name="Bridge Setup.vi" Type="VI" URL="../bridge/Bridge Setup.vi"/>
			<Item Name="Bridge Setup Corrections.vi" Type="VI" URL="../bridge/Bridge Setup Corrections.vi"/>
			<Item Name="Bridge Measure Single.vi" Type="VI" URL="../bridge/Bridge Measure Single.vi"/>
			<Item Name="Bridge Perform Selfcal.vi" Type="VI" URL="../bridge/Bridge Perform Selfcal.vi"/>
			<Item Name="Bridge Sim Mode.ctl" Type="VI" URL="../bridge/Bridge Sim Mode.ctl"/>
			<Item Name="Bridge Sim InpZ.vi" Type="VI" URL="../bridge/Bridge Sim InpZ.vi"/>
			<Item Name="Bridge Sim Null Xfer.vi" Type="VI" URL="../bridge/Bridge Sim Null Xfer.vi"/>
			<Item Name="RLC_fake.vi" Type="VI" URL="../bridge/RLC_fake.vi"/>
		</Item>
		<Item Name="DVM" Type="Folder">
			<Item Name="dvm type.ctl" Type="VI" URL="../dvm/dvm type.ctl"/>
			<Item Name="dvm session.ctl" Type="VI" URL="../dvm/dvm session.ctl"/>
			<Item Name="dvm Reading.ctl" Type="VI" URL="../dvm/dvm Reading.ctl"/>
			<Item Name="dvm Open.vi" Type="VI" URL="../dvm/dvm Open.vi"/>
			<Item Name="dvm Close.vi" Type="VI" URL="../dvm/dvm Close.vi"/>
			<Item Name="dvm Get Single.vi" Type="VI" URL="../dvm/dvm Get Single.vi"/>
			<Item Name="dvm Config Panel.vi" Type="VI" URL="../dvm/dvm Config Panel.vi"/>
		</Item>
		<Item Name="measure" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="results" Type="Folder">
				<Item Name="Meas Results.ctl" Type="VI" URL="../measure/Meas Results.ctl"/>
				<Item Name="Meas Result GUI References.ctl" Type="VI" URL="../measure/Meas Result GUI References.ctl"/>
				<Item Name="Meas Results Sweep Data.ctl" Type="VI" URL="../measure/Meas Results Sweep Data.ctl"/>
				<Item Name="Meas Result Major Format.ctl" Type="VI" URL="../measure/Meas Result Major Format.ctl"/>
				<Item Name="Meas Result Deviation Format.ctl" Type="VI" URL="../measure/Meas Result Deviation Format.ctl"/>
				<Item Name="Meas Result Freq Format.ctl" Type="VI" URL="../measure/Meas Result Freq Format.ctl"/>
				<Item Name="Meas Result 4TP Impedance Mode.ctl" Type="VI" URL="../measure/Meas Result 4TP Impedance Mode.ctl"/>
				<Item Name="Meas Results Sweep Data Uncertainty Mode.ctl" Type="VI" URL="../measure/Meas Results Sweep Data Uncertainty Mode.ctl"/>
				<Item Name="Meas Results Ref.ctl" Type="VI" URL="../measure/Meas Results Ref.ctl"/>
				<Item Name="Meas Result Get Access.vi" Type="VI" URL="../measure/Meas Result Get Access.vi"/>
				<Item Name="Meas Result Release Access.vi" Type="VI" URL="../measure/Meas Result Release Access.vi"/>
				<Item Name="Meas Result Get Sweep Data.vi" Type="VI" URL="../measure/Meas Result Get Sweep Data.vi"/>
				<Item Name="Meas Result Add Reading.vi" Type="VI" URL="../measure/Meas Result Add Reading.vi"/>
				<Item Name="Meas Result Update View.vi" Type="VI" URL="../measure/Meas Result Update View.vi"/>
				<Item Name="Meas Result Fill Phase Selector.vi" Type="VI" URL="../measure/Meas Result Fill Phase Selector.vi"/>
				<Item Name="Meas Result Fill Freq Selector.vi" Type="VI" URL="../measure/Meas Result Fill Freq Selector.vi"/>
				<Item Name="Meas Result Update Reading Status.vi" Type="VI" URL="../measure/Meas Result Update Reading Status.vi"/>
				<Item Name="Meas Result Export.vi" Type="VI" URL="../measure/Meas Result Export.vi"/>
				<Item Name="Meas Result Export - Build Report.vi" Type="VI" URL="../measure/Meas Result Export - Build Report.vi"/>
				<Item Name="Meas Result Make Unc Bars to Graph.vi" Type="VI" URL="../measure/Meas Result Make Unc Bars to Graph.vi"/>
				<Item Name="Meas Result Make Cplx Unc Bars to Graph.vi" Type="VI" URL="../measure/Meas Result Make Cplx Unc Bars to Graph.vi"/>
				<Item Name="Meas Result Get Readings.vi" Type="VI" URL="../measure/Meas Result Get Readings.vi"/>
				<Item Name="Meas Result Remove Readings.vi" Type="VI" URL="../measure/Meas Result Remove Readings.vi"/>
				<Item Name="Meas Result Readings Panel.vi" Type="VI" URL="../measure/Meas Result Readings Panel.vi"/>
				<Item Name="Meas Results Correction Structuring Mode.ctl" Type="VI" URL="../measure/Meas Results Correction Structuring Mode.ctl"/>
				<Item Name="Meas Results TWM Digitizer Correction Data.ctl" Type="VI" URL="../measure/Meas Results TWM Digitizer Correction Data.ctl"/>
				<Item Name="Meas Results TWM Correction Digitizer Type.ctl" Type="VI" URL="../measure/Meas Results TWM Correction Digitizer Type.ctl"/>
				<Item Name="Meas Results TWM InpZ Correction Uncertainty Config.ctl" Type="VI" URL="../measure/Meas Results TWM InpZ Correction Uncertainty Config.ctl"/>
				<Item Name="Meas Result Generate TWM Digitizer Correction.vi" Type="VI" URL="../measure/Meas Result Generate TWM Digitizer Correction.vi"/>
				<Item Name="Meas Result Generate TWM Digitizer Correction - Process Measurement.vi" Type="VI" URL="../measure/Meas Result Generate TWM Digitizer Correction - Process Measurement.vi"/>
				<Item Name="Meas Result Generate TWM Digitizer Correction - fit Gain Phase.vi" Type="VI" URL="../measure/Meas Result Generate TWM Digitizer Correction - fit Gain Phase.vi"/>
				<Item Name="Meas Result Generate TWM Digitizer Correction - Generate Files.vi" Type="VI" URL="../measure/Meas Result Generate TWM Digitizer Correction - Generate Files.vi"/>
				<Item Name="Meas Result Generate TWM Digitizer Correction - Generate CSV Matrix.vi" Type="VI" URL="../measure/Meas Result Generate TWM Digitizer Correction - Generate CSV Matrix.vi"/>
				<Item Name="Meas Result Generate TWM Digitizer Correction - Estimate Digitizer Uncertainty.vi" Type="VI" URL="../measure/Meas Result Generate TWM Digitizer Correction - Estimate Digitizer Uncertainty.vi"/>
				<Item Name="Meas Result Generate TWM InpZ Correction - Process Measurement.vi" Type="VI" URL="../measure/Meas Result Generate TWM InpZ Correction - Process Measurement.vi"/>
				<Item Name="Meas Result Generate TWM InpZ Correction - Generate Files.vi" Type="VI" URL="../measure/Meas Result Generate TWM InpZ Correction - Generate Files.vi"/>
			</Item>
			<Item Name="meas session.ctl" Type="VI" URL="../measure/meas session.ctl"/>
			<Item Name="Meas Freq Info.ctl" Type="VI" URL="../measure/Meas Freq Info.ctl"/>
			<Item Name="Meas Sequence Item.ctl" Type="VI" URL="../measure/Meas Sequence Item.ctl"/>
			<Item Name="Meas Sweep Config.ctl" Type="VI" URL="../measure/Meas Sweep Config.ctl"/>
			<Item Name="meas_sweep_flist_mode.ctl" Type="VI" URL="../measure/meas_sweep_flist_mode.ctl"/>
			<Item Name="meas_swp_mode.ctl" Type="VI" URL="../measure/meas_swp_mode.ctl"/>
			<Item Name="Meas Quantity Names.ctl" Type="VI" URL="../measure/Meas Quantity Names.ctl"/>
			<Item Name="Meas Sweep List Generator Config.ctl" Type="VI" URL="../measure/Meas Sweep List Generator Config.ctl"/>
			<Item Name="Meas Generate Freq List.vi" Type="VI" URL="../measure/Meas Generate Freq List.vi"/>
			<Item Name="Meas Panel Multi Freq Sweep.vi" Type="VI" URL="../measure/Meas Panel Multi Freq Sweep.vi"/>
			<Item Name="Meas Panel.vi" Type="VI" URL="../measure/Meas Panel.vi"/>
			<Item Name="Meas Gen Sequence.vi" Type="VI" URL="../measure/Meas Gen Sequence.vi"/>
			<Item Name="Meas Gen Path.vi" Type="VI" URL="../measure/Meas Gen Path.vi"/>
			<Item Name="Meas Asynchronous Start.vi" Type="VI" URL="../measure/Meas Asynchronous Start.vi"/>
			<Item Name="Meas Asynchronous Wait.vi" Type="VI" URL="../measure/Meas Asynchronous Wait.vi"/>
			<Item Name="Meas Main.vi" Type="VI" URL="../measure/Meas Main.vi"/>
			<Item Name="Meas Loop.vi" Type="VI" URL="../measure/Meas Loop.vi"/>
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
			<Item Name="infolib" Type="Folder">
				<Item Name="infolib.lvlib" Type="Library" URL="../other/infolib/infolib.lvlib"/>
				<Item Name="README example get.vi" Type="VI" URL="../other/infolib/README example get.vi"/>
				<Item Name="README example set.vi" Type="VI" URL="../other/infolib/README example set.vi"/>
			</Item>
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
			<Item Name="MAT Search Matrix.vi" Type="VI" URL="../other/MAT/MAT Search Matrix.vi"/>
			<Item Name="MAT Read Matrix.vi" Type="VI" URL="../other/MAT/MAT Read Matrix.vi"/>
			<Item Name="MAT Read Matrix Header.vi" Type="VI" URL="../other/MAT/MAT Read Matrix Header.vi"/>
			<Item Name="MAT Type Representation.ctl" Type="VI" URL="../other/MAT/MAT Type Representation.ctl"/>
			<Item Name="control_enabled_state.vi" Type="VI" URL="../other/control_enabled_state.vi"/>
			<Item Name="res_fix_selection.vi" Type="VI" URL="../other/res_fix_selection.vi"/>
			<Item Name="Vector Unique Values.vi" Type="VI" URL="../other/Vector Unique Values.vi"/>
			<Item Name="Log Space.vi" Type="VI" URL="../other/Log Space.vi"/>
			<Item Name="wait_with_status.vi" Type="VI" URL="../other/wait_with_status.vi"/>
			<Item Name="clr_error.vi" Type="VI" URL="../other/clr_error.vi"/>
			<Item Name="Load CSV 1D data.vi" Type="VI" URL="../other/Load CSV 1D data.vi"/>
			<Item Name="Dir Folder With Attributes.vi" Type="VI" URL="../other/Dir Folder With Attributes.vi"/>
		</Item>
		<Item Name="varilib" Type="Folder">
			<Item Name="lvanlys.dll" Type="Document" URL="../varilib/lvanlys.dll"/>
			<Item Name="varilib.lvlib" Type="Library" URL="../varilib/varilib.lvlib"/>
		</Item>
		<Item Name="build" Type="Folder">
			<Item Name="Build Setup.ctl" Type="VI" URL="../build/Build Setup.ctl"/>
			<Item Name="Build All Versions.vi" Type="VI" URL="../build/Build All Versions.vi"/>
			<Item Name="Pre-Build Action - none.vi" Type="VI" URL="../build/Pre-Build Action - none.vi"/>
			<Item Name="Pre-Build Action - visa,daqmx.vi" Type="VI" URL="../build/Pre-Build Action - visa,daqmx.vi"/>
			<Item Name="Pre-Build Action - visa.vi" Type="VI" URL="../build/Pre-Build Action - visa.vi"/>
			<Item Name="Set Conditional Symbols.vi" Type="VI" URL="../build/Set Conditional Symbols.vi"/>
			<Item Name="Build Async Wrapper.vi" Type="VI" URL="../build/Build Async Wrapper.vi"/>
			<Item Name="Get Build Specification Names.vi" Type="VI" URL="../build/Get Build Specification Names.vi"/>
			<Item Name="Merge Builds.vi" Type="VI" URL="../build/Merge Builds.vi"/>
			<Item Name="Post-Build Action.vi" Type="VI" URL="../build/Post-Build Action.vi"/>
			<Item Name="Pre-Build Action - visa,niscope.vi" Type="VI" URL="../build/Pre-Build Action - visa,niscope.vi"/>
			<Item Name="Copy Auxiliary Stuff.vi" Type="VI" URL="../build/Copy Auxiliary Stuff.vi"/>
		</Item>
		<Item Name="refs" Type="Folder">
			<Item Name="refs_write_status_3.vi" Type="VI" URL="../refs/refs_write_status_3.vi"/>
			<Item Name="refs_get.vi" Type="VI" URL="../refs/refs_get.vi"/>
			<Item Name="refs_var.vi" Type="VI" URL="../refs/refs_var.vi"/>
			<Item Name="refs_parse_format.vi" Type="VI" URL="../refs/refs_parse_format.vi"/>
		</Item>
		<Item Name="doc" Type="Folder"/>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="open_z_brg.ico" Type="Document" URL="../ico/open_z_brg.ico"/>
		<Item Name="README.md" Type="Document" URL="../README.md"/>
		<Item Name="LICENSE.txt" Type="Document" URL="../LICENSE.txt"/>
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
				<Item Name="niScope Configure Trigger Glitch.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Glitch.vi"/>
				<Item Name="niScope trigger polarity.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger polarity.ctl"/>
				<Item Name="niScope glitch condition.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope glitch condition.ctl"/>
				<Item Name="niScope Configure Trigger Runt.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Runt.vi"/>
				<Item Name="niScope Configure Trigger Width.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Width.vi"/>
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
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
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
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Reset Device.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/system.llb/DAQmx Reset Device.vi"/>
				<Item Name="DAQmx Create Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/task.llb/DAQmx Create Task.vi"/>
				<Item Name="DAQmx Flatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Flatten Channel String.vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Write.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write.vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="DAQmx Write (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I16).vi"/>
				<Item Name="DAQmx Write (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I32).vi"/>
				<Item Name="DAQmx Write (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I8).vi"/>
				<Item Name="DAQmx Write (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U16).vi"/>
				<Item Name="DAQmx Write (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U32).vi"/>
				<Item Name="DAQmx Write (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U8).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Write (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter Frequency 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Frequency 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1DTicks NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1DTicks NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Wait Until Done.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Wait Until Done.vi"/>
				<Item Name="VISA GPIB Control REN Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA GPIB Control REN Mode.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Charge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Charge).vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL inner.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="Search Unsorted 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Search Unsorted 1D Array.vim"/>
				<Item Name="Equal Functor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Equal/Equal Functor/Equal Functor.lvclass"/>
				<Item Name="Equal Comparable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Equal/Equal Comparable/Equal Comparable.lvclass"/>
				<Item Name="Search Unsorted 1D Array Core.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Search Unsorted 1D Array Core.vim"/>
				<Item Name="Equals.vim" Type="VI" URL="/&lt;vilib&gt;/Comparison/Equals.vim"/>
				<Item Name="NI_App_Builder_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/AppBuilder/AB_API_Simple/NI_App_Builder_API.lvlib"/>
				<Item Name="AB_RW_Project_PropBag_Action.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Project_PropBag_Action.ctl"/>
				<Item Name="IB_RW_Project_PropBag_Action.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Project_PropBag_Action.ctl"/>
				<Item Name="GetTargetBuildSpecs (project reference).vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/GetTargetBuildSpecs (project reference).vi"/>
				<Item Name="AB_Generate_Error_Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/AB_Generate_Error_Cluster.vi"/>
				<Item Name="AB_RW_Project_Build_Info.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Project_Build_Info.vi"/>
				<Item Name="AB_RW_Project_Build_Data.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Project_Build_Data.ctl"/>
				<Item Name="AB_RW_Convert_Path_to_Absolute.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Convert_Path_to_Absolute.vi"/>
				<Item Name="AB_Relative_Path_Type.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/AB_Relative_Path_Type.ctl"/>
				<Item Name="AB_RW_Convert_Path_Tags.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Convert_Path_Tags.vi"/>
				<Item Name="Is Name Multiplatform.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Is Name Multiplatform.vi"/>
				<Item Name="AB_RW_Convert_Path_to_Relative.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Convert_Path_to_Relative.vi"/>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Compare Two Paths.vi"/>
				<Item Name="IB_RW_Project_Installer.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Project_Installer.vi"/>
				<Item Name="IB_RW_Project_Installer_Data.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Project_Installer_Data.ctl"/>
				<Item Name="IB_RW_Convert_Path_to_Absolute.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Convert_Path_to_Absolute.vi"/>
				<Item Name="IB_RW_Convert_Path_to_Relative.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Convert_Path_to_Relative.vi"/>
				<Item Name="IB_2019_2018_RW_Convert_Path_to_Relative.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/Compatibility/IB_2019_2018_RW_Convert_Path_to_Relative.vi"/>
				<Item Name="IB_Relative_Path_Type.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_Relative_Path_Type.ctl"/>
				<Item Name="GetTargetBuildSpecs.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/GetTargetBuildSpecs.vi"/>
				<Item Name="Invoke BuildTarget.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Invoke BuildTarget.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
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
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="provcom_StringGlobals.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_StringGlobals.vi"/>
			<Item Name="mxLvGetItem.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetItem.vi"/>
			<Item Name="mxLvProvider.mxx" Type="Document" URL="/&lt;resource&gt;/Framework/Providers/mxLvProvider.mxx"/>
			<Item Name="ItemRef.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/ItemRef.ctl"/>
			<Item Name="mxLvNIIM.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvNIIM.ctl"/>
			<Item Name="mxLvDebugDisplayCaller.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvDebugDisplayCaller.vi"/>
			<Item Name="mxLvErrorHandler.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvErrorHandler.vi"/>
			<Item Name="mxLvGetStringProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetStringProperty.vi"/>
			<Item Name="mxLvGetBooleanProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetBooleanProperty.vi"/>
			<Item Name="mxLvGetIntProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetIntProperty.vi"/>
			<Item Name="mxLvGetProjectPath.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetProjectPath.vi"/>
			<Item Name="mxLvGetProjectRef.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetProjectRef.vi"/>
			<Item Name="mxLvGetPathProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetPathProperty.vi"/>
			<Item Name="mxLvGetRefProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetRefProperty.vi"/>
			<Item Name="mxLvGetTarget.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetTarget.vi"/>
			<Item Name="mxLvGetNIIM.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetNIIM.vi"/>
			<Item Name="AB_UI_Change_Path_from_Label.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/AppBuilder/AB_UI_Change_Path_from_Label.vi"/>
			<Item Name="provcom_CheckForInvalidCharacters.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_CheckForInvalidCharacters.vi"/>
			<Item Name="provcom_Utility_IsEmptyOrWhiteSpace.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_Utility_IsEmptyOrWhiteSpace.vi"/>
			<Item Name="provcom_GetTargetOS.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_GetTargetOS.vi"/>
			<Item Name="mxLvSetStringProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetStringProperty.vi"/>
			<Item Name="mxLvSetBooleanProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetBooleanProperty.vi"/>
			<Item Name="mxLvSetIntProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetIntProperty.vi"/>
			<Item Name="mxLvSetPathProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetPathProperty.vi"/>
			<Item Name="mxLvSetRefProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetRefProperty.vi"/>
			<Item Name="mxLvDeleteProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvDeleteProperty.vi"/>
			<Item Name="CDK_sTypeDef_Languages.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/Installer/CDK_sTypeDef_Languages.ctl"/>
			<Item Name="CDK_sTypeDef_ProductVersion.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/Installer/CDK_sTypeDef_ProductVersion.ctl"/>
			<Item Name="CDK_Utility_GetSetStringVersion.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/Installer/CDK_Utility_GetSetStringVersion.vi"/>
			<Item Name="CDK_GLOBAL_STRINGS.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/Installer/CDK_GLOBAL_STRINGS.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Open-Z-bridge-full" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{E6121B1B-BB6C-4F34-856E-417487F35B0E}</Property>
				<Property Name="App_INI_GUID" Type="Str">{FAFE1C7E-8F83-46A7-93AA-BD7B9AF8795C}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{D87F0F8F-3530-4466-B299-51E2C5482411}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Open-Z-bridge-full</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Open_Z_bridge-[VersionNumber]-full</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/build/Post-Build Action.vi</Property>
				<Property Name="Bld_preActionVIID" Type="Ref">/My Computer/build/Pre-Build Action - visa,daqmx.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{791F11D6-C97D-45C0-88CE-FB43FA74A516}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.minor" Type="Int">1</Property>
				<Property Name="Bld_version.patch" Type="Int">5</Property>
				<Property Name="Destination[0].destName" Type="Str">open_z_bridge-full.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/Open_Z_bridge-[VersionNumber]-full/Open-Z-bridge-full.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/Open_Z_bridge-[VersionNumber]-full/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[2].destName" Type="Str">root</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/Open_Z_bridge-[VersionNumber]-full</Property>
				<Property Name="Destination[2].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/open_z_brg.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{462D8929-4FE4-423C-87CA-00A32ED69B7A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/README.md</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/LICENSE.txt</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Open source extension of TWM tool for measurement of low impedance.</Property>
				<Property Name="TgtF_internalName" Type="Str">Open-Z-bridge-full</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2018-2022</Property>
				<Property Name="TgtF_productName" Type="Str">Open-Z-bridge-full</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{1BD4261A-F818-4FD6-BD8B-813B9C3850C6}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">open_z_bridge-full.exe</Property>
			</Item>
			<Item Name="Open-Z-bridge-visa" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{6F8456BC-6C74-4924-BB8F-4366AAD2B1EC}</Property>
				<Property Name="App_INI_GUID" Type="Str">{37FD9454-CD55-422A-B07E-17970883C0F6}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{CC0BAB20-C183-476F-A6B3-EFCEE9A48771}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Open-Z-bridge-visa</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Open_Z_bridge-[VersionNumber]-visa</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/build/Post-Build Action.vi</Property>
				<Property Name="Bld_preActionVIID" Type="Ref">/My Computer/build/Pre-Build Action - visa.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{E01B0F87-A895-4022-B8E1-CCC15900CD93}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.minor" Type="Int">1</Property>
				<Property Name="Bld_version.patch" Type="Int">5</Property>
				<Property Name="Destination[0].destName" Type="Str">open_z_bridge-visa.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/Open_Z_bridge-[VersionNumber]-visa/Open-Z-bridge-visa.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/Open_Z_bridge-[VersionNumber]-visa/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[2].destName" Type="Str">root</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/Open_Z_bridge-[VersionNumber]-visa</Property>
				<Property Name="Destination[2].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/open_z_brg.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{462D8929-4FE4-423C-87CA-00A32ED69B7A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/README.md</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/LICENSE.txt</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Open source extension of TWM tool for measurement of low impedance.
Version with VISA drivers only.</Property>
				<Property Name="TgtF_internalName" Type="Str">Open-Z-bridge-full</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2018-2022</Property>
				<Property Name="TgtF_productName" Type="Str">Open-Z-bridge-full</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4C5348CF-279B-410F-BC16-D3E421D9A99C}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">open_z_bridge-visa.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
