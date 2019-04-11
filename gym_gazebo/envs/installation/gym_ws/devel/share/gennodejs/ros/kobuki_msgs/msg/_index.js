
"use strict";

let PowerSystemEvent = require('./PowerSystemEvent.js');
let KeyboardInput = require('./KeyboardInput.js');
let Sound = require('./Sound.js');
let ButtonEvent = require('./ButtonEvent.js');
let BumperEvent = require('./BumperEvent.js');
let ControllerInfo = require('./ControllerInfo.js');
let ScanAngle = require('./ScanAngle.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let Led = require('./Led.js');
let DigitalOutput = require('./DigitalOutput.js');
let CliffEvent = require('./CliffEvent.js');
let ExternalPower = require('./ExternalPower.js');
let MotorPower = require('./MotorPower.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let VersionInfo = require('./VersionInfo.js');
let DockInfraRed = require('./DockInfraRed.js');
let SensorState = require('./SensorState.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingResult = require('./AutoDockingResult.js');

module.exports = {
  PowerSystemEvent: PowerSystemEvent,
  KeyboardInput: KeyboardInput,
  Sound: Sound,
  ButtonEvent: ButtonEvent,
  BumperEvent: BumperEvent,
  ControllerInfo: ControllerInfo,
  ScanAngle: ScanAngle,
  WheelDropEvent: WheelDropEvent,
  Led: Led,
  DigitalOutput: DigitalOutput,
  CliffEvent: CliffEvent,
  ExternalPower: ExternalPower,
  MotorPower: MotorPower,
  DigitalInputEvent: DigitalInputEvent,
  VersionInfo: VersionInfo,
  DockInfraRed: DockInfraRed,
  SensorState: SensorState,
  RobotStateEvent: RobotStateEvent,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingAction: AutoDockingAction,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingResult: AutoDockingResult,
};
