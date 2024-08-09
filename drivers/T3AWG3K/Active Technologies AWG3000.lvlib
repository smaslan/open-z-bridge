<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="20008000">
	<Property Name="Instrument Driver" Type="Str">True</Property>
	<Property Name="NI.Lib.Description" Type="Str">This driver configures and takes measurements from the Active Technologies AFG3000 Series Function Generator.  For more information about this driver, please refer to Active Technologies AFG3000 Series Function Generator Readme.html
</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">)!#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(_!!!*Q(C=\&gt;4"=2J"%!81FMM(8]H!21K&gt;!CG11K@!V5&gt;3["2)A21["6,A[+P]7)V&gt;0EE8OWR6;6;.Y-`MT'.WW9CN@9HY(-^PN?_PNP@@([_WD`[0`P@&gt;`U9TZNO&lt;A`ZSCXD;J'J5KV+Z@&lt;PHE9^]Z#-@_=B&lt;XP+7N\TF,3^ZS5N?]J+80/5J4XH+5Z\S\:#(0/1BNSND]&lt;(1G(2--!;DR(A:HO%:HO(R-9:H?):H?)&lt;(E"C?Y2G?Y2E?J]8Q$-`Q$-`QG'K4T(&lt;)?9&lt;(^.%]T&gt;-]T&gt;-]FITG;9#W7*OY49)2L&lt;/^;:\G;2ZPIXG;JXG;JXFU2`-U4`-U4`-Y:&gt;O6XD301]ZDGCC?YCG?YCE?5U@R&amp;%`R&amp;%`R7#[+JXA+ICR9*E?)=F):5$Y54`(Y&amp;]640-640-7D;\N#N?X-1`-YZ$T*ETT*ETT*9YJ)HO2*HO2*(N.']C20]C20]FAKEC&gt;ZEC&gt;"UK+7DT2:/D%.3E(S_.POFNSO5G_3X)\VUXSZ570&gt;A,&amp;OL&amp;AX4+Q&lt;)&gt;9&amp;DH8B9FW17"M&gt;;Q.D&lt;5SM,RTLC]1#RFIYVI3R"M&lt;&gt;[UV&gt;V57&gt;V5E&gt;V5(NV?ZR[B]??,`@YX;\R@6[D=PF%O@T/5[H5RS0RTA=$L(@\W/XW`V[7HVVP,3HH]_F&lt;^\`CXJZ,PU0T]&lt;Y&amp;-_`0?&lt;NU1_[`-%`!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">536903680</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.2.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Item Name="toplevel" Type="Folder">
		<Item Name="T3AWG Session.ctl" Type="VI" URL="../toplevel/T3AWG Session.ctl"/>
		<Item Name="T3AWG Load Z.ctl" Type="VI" URL="../toplevel/T3AWG Load Z.ctl"/>
		<Item Name="fgen_ramdac_fs_rules.ctl" Type="VI" URL="../toplevel/fgen_ramdac_fs_rules.ctl"/>
		<Item Name="T3AWG Pick Rate.vi" Type="VI" URL="../toplevel/T3AWG Pick Rate.vi"/>
		<Item Name="T3AWG Open.vi" Type="VI" URL="../toplevel/T3AWG Open.vi"/>
		<Item Name="T3AWG Close.vi" Type="VI" URL="../toplevel/T3AWG Close.vi"/>
		<Item Name="T3AWG Setup.vi" Type="VI" URL="../toplevel/T3AWG Setup.vi"/>
		<Item Name="T3AWG Gen Wave.vi" Type="VI" URL="../toplevel/T3AWG Gen Wave.vi"/>
		<Item Name="T3AWG Config Panel.vi" Type="VI" URL="../toplevel/T3AWG Config Panel.vi"/>
	</Item>
	<Item Name="Private" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Item Name="Default Instrument Setup.vi" Type="VI" URL="../Private/Default Instrument Setup.vi"/>
	</Item>
	<Item Name="Public" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">1</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Item Name="Action-Status" Type="Folder">
			<Item Name="AWGStart.vi" Type="VI" URL="../Public/Action-Status/AWGStart.vi"/>
			<Item Name="AWGStop.vi" Type="VI" URL="../Public/Action-Status/AWGStop.vi"/>
			<Item Name="GetAWGStatus.vi" Type="VI" URL="../Public/Action-Status/GetAWGStatus.vi"/>
			<Item Name="Release Trigger.vi" Type="VI" URL="../Public/Action-Status/Release Trigger.vi"/>
			<Item Name="Send Trigger.vi" Type="VI" URL="../Public/Action-Status/Send Trigger.vi"/>
			<Item Name="GetOutputState.vi" Type="VI" URL="../Public/Action-Status/GetOutputState.vi"/>
			<Item Name="SetOutputState.vi" Type="VI" URL="../Public/Action-Status/SetOutputState.vi"/>
			<Item Name="GetDigitalsState.vi" Type="VI" URL="../Public/Action-Status/GetDigitalsState.vi"/>
			<Item Name="SetDigitalsState.vi" Type="VI" URL="../Public/Action-Status/SetDigitalsState.vi"/>
			<Item Name="SendPatternCode.vi" Type="VI" URL="../Public/Action-Status/SendPatternCode.vi"/>
			<Item Name="SendForceJump.vi" Type="VI" URL="../Public/Action-Status/SendForceJump.vi"/>
		</Item>
		<Item Name="Basic" Type="Folder">
			<Item Name="Run Mode" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetBurstCount.vi" Type="VI" URL="../Public/Basic/GetBurstCount.vi"/>
					<Item Name="GetRunMode.vi" Type="VI" URL="../Public/Basic/GetRunMode.vi"/>
					<Item Name="GetWaitTriggerState.vi" Type="VI" URL="../Public/Basic/GetWaitTriggerState.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetBurstCount.vi" Type="VI" URL="../Public/Basic/SetBurstCount.vi"/>
					<Item Name="SetRunMode.vi" Type="VI" URL="../Public/Basic/SetRunMode.vi"/>
					<Item Name="SetWaitTriggerState.vi" Type="VI" URL="../Public/Basic/SetWaitTriggerState.vi"/>
				</Item>
			</Item>
			<Item Name="Resampling Strategy" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetDecreasingStartegy.vi" Type="VI" URL="../Public/Basic/GetDecreasingStartegy.vi"/>
					<Item Name="GetIncreasingStartegy.vi" Type="VI" URL="../Public/Basic/GetIncreasingStartegy.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetDecreasingStartegy.vi" Type="VI" URL="../Public/Basic/SetDecreasingStartegy.vi"/>
					<Item Name="SetIncreasingStartegy.vi" Type="VI" URL="../Public/Basic/SetIncreasingStartegy.vi"/>
				</Item>
			</Item>
			<Item Name="Timing" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetClockSource.vi" Type="VI" URL="../Public/Basic/GetClockSource.vi"/>
					<Item Name="GetSamplingClockFrequency.vi" Type="VI" URL="../Public/Basic/GetSamplingClockFrequency.vi"/>
					<Item Name="GetExtReferenceClockFrequency.vi" Type="VI" URL="../Public/Basic/GetExtReferenceClockFrequency.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetClockSource.vi" Type="VI" URL="../Public/Basic/SetClockSource.vi"/>
					<Item Name="SetSamplingClockFrequency.vi" Type="VI" URL="../Public/Basic/SetSamplingClockFrequency.vi"/>
					<Item Name="SetExtReferenceClockFrequency.vi" Type="VI" URL="../Public/Basic/SetExtReferenceClockFrequency.vi"/>
				</Item>
			</Item>
			<Item Name="Sequencer Settings" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetJumpMode.vi" Type="VI" URL="../Public/Basic/GetJumpMode.vi"/>
					<Item Name="GetEntryLengthStartegy.vi" Type="VI" URL="../Public/Basic/GetEntryLengthStartegy.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetJumpMode.vi" Type="VI" URL="../Public/Basic/SetJumpMode.vi"/>
					<Item Name="SetEntryLengthStartegy.vi" Type="VI" URL="../Public/Basic/SetEntryLengthStartegy.vi"/>
				</Item>
			</Item>
			<Item Name="Sequencer Parameters" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetEntryWaveAmplitude.vi" Type="VI" URL="../Public/Basic/GetEntryWaveAmplitude.vi"/>
					<Item Name="GetEntryWaveOffset.vi" Type="VI" URL="../Public/Basic/GetEntryWaveOffset.vi"/>
					<Item Name="GetEntryWaveVoltageHigh.vi" Type="VI" URL="../Public/Basic/GetEntryWaveVoltageHigh.vi"/>
					<Item Name="GetEntryWaveVoltageLow.vi" Type="VI" URL="../Public/Basic/GetEntryWaveVoltageLow.vi"/>
					<Item Name="GetEntryLength.vi" Type="VI" URL="../Public/Basic/GetEntryLength.vi"/>
					<Item Name="GetEntryRepetitions.vi" Type="VI" URL="../Public/Basic/GetEntryRepetitions.vi"/>
					<Item Name="GetEntryWaveform.vi" Type="VI" URL="../Public/Basic/GetEntryWaveform.vi"/>
					<Item Name="GetSequencerLength.vi" Type="VI" URL="../Public/Basic/GetSequencerLength.vi"/>
					<Item Name="GetEntryWaitEvent.vi" Type="VI" URL="../Public/Basic/GetEntryWaitEvent.vi"/>
					<Item Name="GetEntryGoToItem.vi" Type="VI" URL="../Public/Basic/GetEntryGoToItem.vi"/>
					<Item Name="GetEntryGoToMode.vi" Type="VI" URL="../Public/Basic/GetEntryGoToMode.vi"/>
					<Item Name="GetEntryJumpToMode.vi" Type="VI" URL="../Public/Basic/GetEntryJumpToMode.vi"/>
					<Item Name="GetEntryJumpToItem.vi" Type="VI" URL="../Public/Basic/GetEntryJumpToItem.vi"/>
					<Item Name="GetEntryJumpEvent.vi" Type="VI" URL="../Public/Basic/GetEntryJumpEvent.vi"/>
					<Item Name="GetPatternEvent.vi" Type="VI" URL="../Public/Basic/GetPatternEvent.vi"/>
					<Item Name="GetEntryPatternCode.vi" Type="VI" URL="../Public/Basic/GetEntryPatternCode.vi"/>
					<Item Name="GetEntryPatternMode.vi" Type="VI" URL="../Public/Basic/GetEntryPatternMode.vi"/>
					<Item Name="GetEntryPatternJumpToItem.vi" Type="VI" URL="../Public/Basic/GetEntryPatternJumpToItem.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetEntryWaveAmplitude.vi" Type="VI" URL="../Public/Basic/SetEntryWaveAmplitude.vi"/>
					<Item Name="SetEntryWaveOffset.vi" Type="VI" URL="../Public/Basic/SetEntryWaveOffset.vi"/>
					<Item Name="SetEntryWaveVoltageHigh.vi" Type="VI" URL="../Public/Basic/SetEntryWaveVoltageHigh.vi"/>
					<Item Name="SetEntryWaveVoltageLow.vi" Type="VI" URL="../Public/Basic/SetEntryWaveVoltageLow.vi"/>
					<Item Name="SetEntryLength.vi" Type="VI" URL="../Public/Basic/SetEntryLength.vi"/>
					<Item Name="SetEntryRepetitions.vi" Type="VI" URL="../Public/Basic/SetEntryRepetitions.vi"/>
					<Item Name="SetEntryWaveform.vi" Type="VI" URL="../Public/Basic/SetEntryWaveform.vi"/>
					<Item Name="SetSequencerLength.vi" Type="VI" URL="../Public/Basic/SetSequencerLength.vi"/>
					<Item Name="SetEntryWaitEvent.vi" Type="VI" URL="../Public/Basic/SetEntryWaitEvent.vi"/>
					<Item Name="SetEntryGoToMode.vi" Type="VI" URL="../Public/Basic/SetEntryGoToMode.vi"/>
					<Item Name="SetEntryGoToItem.vi" Type="VI" URL="../Public/Basic/SetEntryGoToItem.vi"/>
					<Item Name="SetEntryJumpToMode.vi" Type="VI" URL="../Public/Basic/SetEntryJumpToMode.vi"/>
					<Item Name="SetEntryJumpToItem.vi" Type="VI" URL="../Public/Basic/SetEntryJumpToItem.vi"/>
					<Item Name="SetEntryJumpEvent.vi" Type="VI" URL="../Public/Basic/SetEntryJumpEvent.vi"/>
					<Item Name="SetPatternEvent.vi" Type="VI" URL="../Public/Basic/SetPatternEvent.vi"/>
					<Item Name="SetEntryPatternCode.vi" Type="VI" URL="../Public/Basic/SetEntryPatternCode.vi"/>
					<Item Name="SetEntryPatternMode.vi" Type="VI" URL="../Public/Basic/SetEntryPatternMode.vi"/>
					<Item Name="SetEntryPatternJumpToItem.vi" Type="VI" URL="../Public/Basic/SetEntryPatternJumpToItem.vi"/>
				</Item>
				<Item Name="CreateNewSequencer.vi" Type="VI" URL="../Public/Basic/CreateNewSequencer.vi"/>
			</Item>
			<Item Name="WaveformsList" Type="Folder">
				<Item Name="GetWaveformsList.vi" Type="VI" URL="../Public/Basic/GetWaveformsList.vi"/>
				<Item Name="GetWaveformName.vi" Type="VI" URL="../Public/Basic/GetWaveformName.vi"/>
				<Item Name="GetWaveformsListSize.vi" Type="VI" URL="../Public/Basic/GetWaveformsListSize.vi"/>
				<Item Name="GetWaveformLength.vi" Type="VI" URL="../Public/Basic/GetWaveformLength.vi"/>
				<Item Name="GetWaveformPredefined.vi" Type="VI" URL="../Public/Basic/GetWaveformPredefined.vi"/>
				<Item Name="GetWaveformType.vi" Type="VI" URL="../Public/Basic/GetWaveformType.vi"/>
				<Item Name="DeleteWaveformsList.vi" Type="VI" URL="../Public/Basic/DeleteWaveformsList.vi"/>
				<Item Name="ImportFileInWaveformList.vi" Type="VI" URL="../Public/Basic/ImportFileInWaveformList.vi"/>
			</Item>
			<Item Name="Digitals" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetDigitalChannelsNumber.vi" Type="VI" URL="../Public/Basic/GetDigitalChannelsNumber.vi"/>
					<Item Name="GetDigitalPodLevel.vi" Type="VI" URL="../Public/Basic/GetDigitalPodLevel.vi"/>
					<Item Name="GetDigitalPodSkew.vi" Type="VI" URL="../Public/Basic/GetDigitalPodSkew.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetDigitalChannelsNumber.vi" Type="VI" URL="../Public/Basic/SetDigitalChannelsNumber.vi"/>
					<Item Name="SetDigitalPodLevel.vi" Type="VI" URL="../Public/Basic/SetDigitalPodLevel.vi"/>
					<Item Name="SetDigitalPodSkew.vi" Type="VI" URL="../Public/Basic/SetDigitalPodSkew.vi"/>
				</Item>
			</Item>
			<Item Name="Marker Out" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetMarkerLevel.vi" Type="VI" URL="../Public/Basic/GetMarkerLevel.vi"/>
					<Item Name="GetMarkerMode.vi" Type="VI" URL="../Public/Basic/GetMarkerMode.vi"/>
					<Item Name="GetMarkerSkew.vi" Type="VI" URL="../Public/Basic/GetMarkerSkew.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetMarkerLevel.vi" Type="VI" URL="../Public/Basic/SetMarkerLevel.vi"/>
					<Item Name="SetMarkerMode.vi" Type="VI" URL="../Public/Basic/SetMarkerMode.vi"/>
					<Item Name="SetMarkerSkew.vi" Type="VI" URL="../Public/Basic/SetMarkerSkew.vi"/>
				</Item>
			</Item>
			<Item Name="Output Options" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetBaseLineOffset.vi" Type="VI" URL="../Public/Basic/GetBaseLineOffset.vi"/>
					<Item Name="GetOutputDelay.vi" Type="VI" URL="../Public/Basic/GetOutputDelay.vi"/>
					<Item Name="GetOutputImpedance.vi" Type="VI" URL="../Public/Basic/GetOutputImpedance.vi"/>
					<Item Name="GetOutputPolarity.vi" Type="VI" URL="../Public/Basic/GetOutputPolarity.vi"/>
					<Item Name="GetOutputScale.vi" Type="VI" URL="../Public/Basic/GetOutputScale.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetBaseLineOffset.vi" Type="VI" URL="../Public/Basic/SetBaseLineOffset.vi"/>
					<Item Name="SetOuputPolarity.vi" Type="VI" URL="../Public/Basic/SetOuputPolarity.vi"/>
					<Item Name="SetOutputDelay.vi" Type="VI" URL="../Public/Basic/SetOutputDelay.vi"/>
					<Item Name="SetOutputImpedance.vi" Type="VI" URL="../Public/Basic/SetOutputImpedance.vi"/>
					<Item Name="SetOutputScale.vi" Type="VI" URL="../Public/Basic/SetOutputScale.vi"/>
				</Item>
			</Item>
			<Item Name="Trigger In" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetTriggerImpedance.vi" Type="VI" URL="../Public/Basic/GetTriggerImpedance.vi"/>
					<Item Name="GetTriggerInterval.vi" Type="VI" URL="../Public/Basic/GetTriggerInterval.vi"/>
					<Item Name="GetTimerResetCondition.vi" Type="VI" URL="../Public/Basic/GetTimerResetCondition.vi"/>
					<Item Name="GetTriggerLevel.vi" Type="VI" URL="../Public/Basic/GetTriggerLevel.vi"/>
					<Item Name="GetTriggerSlope.vi" Type="VI" URL="../Public/Basic/GetTriggerSlope.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetTriggerImpedance.vi" Type="VI" URL="../Public/Basic/SetTriggerImpedance.vi"/>
					<Item Name="SetTriggerInSource.vi" Type="VI" URL="../Public/Basic/SetTriggerInSource.vi"/>
					<Item Name="SetTriggerInterval.vi" Type="VI" URL="../Public/Basic/SetTriggerInterval.vi"/>
					<Item Name="SetTimerResetCondition.vi" Type="VI" URL="../Public/Basic/SetTimerResetCondition.vi"/>
					<Item Name="SetTriggerLevel.vi" Type="VI" URL="../Public/Basic/SetTriggerLevel.vi"/>
					<Item Name="SetTriggerSlope.vi" Type="VI" URL="../Public/Basic/SetTriggerSlope.vi"/>
				</Item>
				<Item Name="Ext Mod Trigger In" Type="Folder">
					<Item Name="Get" Type="Folder">
						<Item Name="GetExtModLevel.vi" Type="VI" URL="../Public/Basic/GetExtModLevel.vi"/>
						<Item Name="GetExtModSlope.vi" Type="VI" URL="../Public/Basic/GetExtModSlope.vi"/>
						<Item Name="GetExtModeStatus.vi" Type="VI" URL="../Public/Basic/GetExtModeStatus.vi"/>
					</Item>
					<Item Name="Set" Type="Folder">
						<Item Name="SetExtModLevel.vi" Type="VI" URL="../Public/Basic/SetExtModLevel.vi"/>
						<Item Name="SetExtModSlope.vi" Type="VI" URL="../Public/Basic/SetExtModSlope.vi"/>
						<Item Name="SetExtModeStatus.vi" Type="VI" URL="../Public/Basic/SetExtModeStatus.vi"/>
					</Item>
				</Item>
			</Item>
			<Item Name="Parametric Waveforms" Type="Folder">
				<Item Name="Get" Type="Folder">
					<Item Name="GetAutoCalcOption.vi" Type="VI" URL="../Public/Parametric Waveforms/GetAutoCalcOption.vi"/>
					<Item Name="GetParamWaveCommonCycles.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveCommonCycles.vi"/>
					<Item Name="GetParamWaveCommonDuration.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveCommonDuration.vi"/>
					<Item Name="GetParamWaveCommonFrequency.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveCommonFrequency.vi"/>
					<Item Name="GetParamWaveCommonLength.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveCommonLength.vi"/>
					<Item Name="GetParamWaveCommonPeriod.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveCommonPeriod.vi"/>
					<Item Name="GetParamWaveCommonPhase.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveCommonPhase.vi"/>
					<Item Name="GetParamWaveCommonSamplingRate.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveCommonSamplingRate.vi"/>
					<Item Name="GetParamWaveExpMode.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveExpMode.vi"/>
					<Item Name="GetParamWaveExpTimeConstant.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveExpTimeConstant.vi"/>
					<Item Name="GetParamWavePrbsType.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWavePrbsType.vi"/>
					<Item Name="GetParamWavePulseDelay.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWavePulseDelay.vi"/>
					<Item Name="GetParamWavePulseDutyCycle.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWavePulseDutyCycle.vi"/>
					<Item Name="GetParamWavePulseFallTime.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWavePulseFallTime.vi"/>
					<Item Name="GetParamWavePulseRiseTime.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWavePulseRiseTime.vi"/>
					<Item Name="GetParamWavePulseWidth.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWavePulseWidth.vi"/>
					<Item Name="GetParamWaveSincLobeWidth.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveSincLobeWidth.vi"/>
					<Item Name="GetParamWaveSincPeakPosition.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveSincPeakPosition.vi"/>
					<Item Name="GetParamWaveSquareFallTime.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveSquareFallTime.vi"/>
					<Item Name="GetParamWaveSquarePDelay.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveSquarePDelay.vi"/>
					<Item Name="GetParamWaveSquareRiseTime.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveSquareRiseTime.vi"/>
					<Item Name="GetParamWaveSweepStartFreq.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveSweepStartFreq.vi"/>
					<Item Name="GetParamWaveSweepStopFreq.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveSweepStopFreq.vi"/>
					<Item Name="GetParamWaveType.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWaveType.vi"/>
					<Item Name="GetParamWavwSweepMode.vi" Type="VI" URL="../Public/Parametric Waveforms/GetParamWavwSweepMode.vi"/>
					<Item Name="GetWrapAroundState.vi" Type="VI" URL="../Public/Parametric Waveforms/GetWrapAroundState.vi"/>
				</Item>
				<Item Name="Set" Type="Folder">
					<Item Name="SetAutoCalcOption.vi" Type="VI" URL="../Public/Parametric Waveforms/SetAutoCalcOption.vi"/>
					<Item Name="SetParamWaveCommonCycles.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveCommonCycles.vi"/>
					<Item Name="SetParamWaveCommonDuration.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveCommonDuration.vi"/>
					<Item Name="SetParamWaveCommonFrequency.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveCommonFrequency.vi"/>
					<Item Name="SetParamWaveCommonLength.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveCommonLength.vi"/>
					<Item Name="SetParamWaveCommonPeriod.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveCommonPeriod.vi"/>
					<Item Name="SetParamWaveCommonPhase.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveCommonPhase.vi"/>
					<Item Name="SetParamWaveCommonSamplingRate.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveCommonSamplingRate.vi"/>
					<Item Name="SetParamWaveExpMode.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveExpMode.vi"/>
					<Item Name="SetParamWaveExpTimeConstant.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveExpTimeConstant.vi"/>
					<Item Name="SetParamWavePrbsType.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWavePrbsType.vi"/>
					<Item Name="SetParamWavePulseDelay.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWavePulseDelay.vi"/>
					<Item Name="SetParamWavePulseDutyCycle.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWavePulseDutyCycle.vi"/>
					<Item Name="SetParamWavePulseFallTime.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWavePulseFallTime.vi"/>
					<Item Name="SetParamWavePulseRiseTime.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWavePulseRiseTime.vi"/>
					<Item Name="SetParamWavePulseWidth.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWavePulseWidth.vi"/>
					<Item Name="SetParamWaveSincLobeWidth.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveSincLobeWidth.vi"/>
					<Item Name="SetParamWaveSincPeakPosition.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveSincPeakPosition.vi"/>
					<Item Name="SetParamWaveSquareFallTime.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveSquareFallTime.vi"/>
					<Item Name="SetParamWaveSquarePDelay.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveSquarePDelay.vi"/>
					<Item Name="SetParamWaveSquareRiseTime.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveSquareRiseTime.vi"/>
					<Item Name="SetParamWaveSweepMode.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveSweepMode.vi"/>
					<Item Name="SetParamWaveSweepStartFreq.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveSweepStartFreq.vi"/>
					<Item Name="SetParamWaveSweepStopFreq.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveSweepStopFreq.vi"/>
					<Item Name="SetParamWaveType.vi" Type="VI" URL="../Public/Parametric Waveforms/SetParamWaveType.vi"/>
					<Item Name="SetWrapAroundState.vi" Type="VI" URL="../Public/Parametric Waveforms/SetWrapAroundState.vi"/>
				</Item>
				<Item Name="Multitone" Type="Folder">
					<Item Name="Get" Type="Folder">
						<Item Name="GetMultitoneFrequency.vi" Type="VI" URL="../Public/Parametric Waveforms/GetMultitoneFrequency.vi"/>
						<Item Name="GetToneAmplitude.vi" Type="VI" URL="../Public/Parametric Waveforms/GetToneAmplitude.vi"/>
						<Item Name="GetTonePhase.vi" Type="VI" URL="../Public/Parametric Waveforms/GetTonePhase.vi"/>
						<Item Name="GetTonesNumber.vi" Type="VI" URL="../Public/Parametric Waveforms/GetTonesNumber.vi"/>
					</Item>
					<Item Name="Set" Type="Folder">
						<Item Name="SetToneAmplitude.vi" Type="VI" URL="../Public/Parametric Waveforms/SetToneAmplitude.vi"/>
						<Item Name="SetTonePhase.vi" Type="VI" URL="../Public/Parametric Waveforms/SetTonePhase.vi"/>
					</Item>
					<Item Name="AddNewToneParamWave.vi" Type="VI" URL="../Public/Parametric Waveforms/AddNewToneParamWave.vi"/>
					<Item Name="DeleteTone.vi" Type="VI" URL="../Public/Parametric Waveforms/DeleteTone.vi"/>
				</Item>
				<Item Name="CreateParametricWaveform.vi" Type="VI" URL="../Public/Parametric Waveforms/CreateParametricWaveform.vi"/>
				<Item Name="DeleteParametricWaveform.vi" Type="VI" URL="../Public/Parametric Waveforms/DeleteParametricWaveform.vi"/>
				<Item Name="DuplicateParametricWaveform.vi" Type="VI" URL="../Public/Parametric Waveforms/DuplicateParametricWaveform.vi"/>
				<Item Name="RenameParametricWaveform.vi" Type="VI" URL="../Public/Parametric Waveforms/RenameParametricWaveform.vi"/>
			</Item>
		</Item>
		<Item Name="Configure" Type="Folder">
			<Item Name="Advanced Sequencer" Type="Folder">
				<Item Name="ConfigureAdvancedSequencer.vi" Type="VI" URL="../Public/Configure/ConfigureAdvancedSequencer.vi"/>
				<Item Name="ConfigureAdvancedSequencerElement.vi" Type="VI" URL="../Public/Configure/ConfigureAdvancedSequencerElement.vi"/>
			</Item>
			<Item Name="Configure Channel Settings.vi" Type="VI" URL="../Public/Configure/Configure Channel Settings.vi"/>
			<Item Name="Configure Digital Channels.vi" Type="VI" URL="../Public/Configure/Configure Digital Channels.vi"/>
			<Item Name="Configure General Settings.vi" Type="VI" URL="../Public/Configure/Configure General Settings.vi"/>
			<Item Name="Configure Marker Out.vi" Type="VI" URL="../Public/Configure/Configure Marker Out.vi"/>
			<Item Name="Configure Timing.vi" Type="VI" URL="../Public/Configure/Configure Timing.vi"/>
			<Item Name="Configure Trigger IN.vi" Type="VI" URL="../Public/Configure/Configure Trigger IN.vi"/>
			<Item Name="ConfigureSequencerElement.vi" Type="VI" URL="../Public/Configure/ConfigureSequencerElement.vi"/>
			<Item Name="ConfigureSequencer.vi" Type="VI" URL="../Public/Configure/ConfigureSequencer.vi"/>
			<Item Name="Configure Import Waveform.vi" Type="VI" URL="../Public/Configure/Configure Import Waveform.vi"/>
			<Item Name="Configure Parametric Waveform.vi" Type="VI" URL="../Public/Configure/Configure Parametric Waveform.vi"/>
			<Item Name="T3AWG Wave Format" Type="VI" URL="../Public/Configure/T3AWG Wave Format"/>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Beeper" Type="Folder">
				<Item Name="GetSystemBeeperState.vi" Type="VI" URL="../Public/Utility/Beeper/GetSystemBeeperState.vi"/>
				<Item Name="SetSystemBeeperState.vi" Type="VI" URL="../Public/Utility/Beeper/SetSystemBeeperState.vi"/>
				<Item Name="SystemBeeper.vi" Type="VI" URL="../Public/Utility/Beeper/SystemBeeper.vi"/>
			</Item>
			<Item Name="Memory Device Settings" Type="Folder">
				<Item Name="GetMemoryStateCatalog.vi" Type="VI" URL="../Public/Utility/Memory Device Settings/GetMemoryStateCatalog.vi"/>
				<Item Name="AvailableMemories.vi" Type="VI" URL="../Public/Utility/Memory Device Settings/AvailableMemories.vi"/>
				<Item Name="DeleteMemory.vi" Type="VI" URL="../Public/Utility/Memory Device Settings/DeleteMemory.vi"/>
				<Item Name="MemoryStateValid.vi" Type="VI" URL="../Public/Utility/Memory Device Settings/MemoryStateValid.vi"/>
				<Item Name="LoadConfigurationFromSetupMemory.vi" Type="VI" URL="../Public/Utility/Memory Device Settings/LoadConfigurationFromSetupMemory.vi"/>
				<Item Name="SaveConfigurationToSetupMemory.vi" Type="VI" URL="../Public/Utility/Memory Device Settings/SaveConfigurationToSetupMemory.vi"/>
				<Item Name="ExportConfigurationToFile.vi" Type="VI" URL="../Public/Utility/Memory Device Settings/ExportConfigurationToFile.vi"/>
				<Item Name="ImportConfigurationFromFile.vi" Type="VI" URL="../Public/Utility/Memory Device Settings/ImportConfigurationFromFile.vi"/>
			</Item>
			<Item Name="Service Message" Type="Folder">
				<Item Name="GetServiceMessage.vi" Type="VI" URL="../Public/Utility/Service Message/GetServiceMessage.vi"/>
				<Item Name="ServiceMessageClear.vi" Type="VI" URL="../Public/Utility/Service Message/ServiceMessageClear.vi"/>
				<Item Name="SetServiceMessage.vi" Type="VI" URL="../Public/Utility/Service Message/SetServiceMessage.vi"/>
			</Item>
			<Item Name="TransferFile" Type="Folder">
				<Item Name="ChangeCurrentDirectory.vi" Type="VI" URL="../Public/Utility/TransferFile/ChangeCurrentDirectory.vi"/>
				<Item Name="DeleteFile.vi" Type="VI" URL="../Public/Utility/TransferFile/DeleteFile.vi"/>
				<Item Name="TransferFile - From Data.vi" Type="VI" URL="../Public/Utility/TransferFile/TransferFile - From Data.vi"/>
				<Item Name="TransferFile.vi" Type="VI" URL="../Public/Utility/TransferFile/TransferFile.vi"/>
			</Item>
			<Item Name="AWGSwitchtoAFG.vi" Type="VI" URL="../Public/Utility/AWGSwitchtoAFG.vi"/>
			<Item Name="AWGSwitchtoApp.vi" Type="VI" URL="../Public/Utility/AWGSwitchtoApp.vi"/>
			<Item Name="GetChannelsOutputNumber.vi" Type="VI" URL="../Public/Utility/GetChannelsOutputNumber.vi"/>
			<Item Name="GetDigitalOutputNumber.vi" Type="VI" URL="../Public/Utility/GetDigitalOutputNumber.vi"/>
			<Item Name="Reset.vi" Type="VI" URL="../Public/Utility/Reset.vi"/>
			<Item Name="Date.vi" Type="VI" URL="../Public/Utility/Date.vi"/>
			<Item Name="Time.vi" Type="VI" URL="../Public/Utility/Time.vi"/>
			<Item Name="SetSystemKLOCk.vi" Type="VI" URL="../Public/Utility/SetSystemKLOCk.vi"/>
			<Item Name="ChangeFormat.vi" Type="VI" URL="../Public/Utility/ChangeFormat.vi"/>
			<Item Name="SystemSecurity.vi" Type="VI" URL="../Public/Utility/SystemSecurity.vi"/>
			<Item Name="TryDeleteWaveform.vi" Type="VI" URL="../Public/Utility/TryDeleteWaveform.vi"/>
			<Item Name="GetDefaultDriveCFolder.vi" Type="VI" URL="../Public/Utility/GetDefaultDriveCFolder.vi"/>
			<Item Name="Calibration.vi" Type="VI" URL="../Public/Utility/Calibration.vi"/>
			<Item Name="Diagnostic.vi" Type="VI" URL="../Public/Utility/Diagnostic.vi"/>
			<Item Name="Error Query.vi" Type="VI" URL="../Public/Utility/Error Query.vi"/>
		</Item>
		<Item Name="MultiInstrument" Type="Folder">
			<Item Name="Capture.vi" Type="VI" URL="../Public/MultiInstrument/Capture.vi"/>
			<Item Name="Release.vi" Type="VI" URL="../Public/MultiInstrument/Release.vi"/>
			<Item Name="IsSlave.vi" Type="VI" URL="../Public/MultiInstrument/IsSlave.vi"/>
			<Item Name="GetMultiInstrumentID.vi" Type="VI" URL="../Public/MultiInstrument/GetMultiInstrumentID.vi"/>
			<Item Name="IsForwardPresent.vi" Type="VI" URL="../Public/MultiInstrument/IsForwardPresent.vi"/>
			<Item Name="IsCaptured.vi" Type="VI" URL="../Public/MultiInstrument/IsCaptured.vi"/>
			<Item Name="GetCapturedDevices.vi" Type="VI" URL="../Public/MultiInstrument/GetCapturedDevices.vi"/>
		</Item>
		<Item Name="Close.vi" Type="VI" URL="../Public/Close.vi"/>
		<Item Name="VI Tree.vi" Type="VI" URL="../Public/VI Tree.vi"/>
		<Item Name="Initialize.vi" Type="VI" URL="../Public/Initialize.vi"/>
	</Item>
</Library>
