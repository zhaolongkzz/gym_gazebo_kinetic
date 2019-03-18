
"use strict";

let KeyboardInput = require('./KeyboardInput.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let VersionInfo = require('./VersionInfo.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let ScanAngle = require('./ScanAngle.js');
let CliffEvent = require('./CliffEvent.js');
let DockInfraRed = require('./DockInfraRed.js');
let SensorState = require('./SensorState.js');
let Led = require('./Led.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let ButtonEvent = require('./ButtonEvent.js');
let BumperEvent = require('./BumperEvent.js');
let ControllerInfo = require('./ControllerInfo.js');
let ExternalPower = require('./ExternalPower.js');
let DigitalOutput = require('./DigitalOutput.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let Sound = require('./Sound.js');
let MotorPower = require('./MotorPower.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingResult = require('./AutoDockingResult.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');

module.exports = {
  KeyboardInput: KeyboardInput,
  RobotStateEvent: RobotStateEvent,
  VersionInfo: VersionInfo,
  PowerSystemEvent: PowerSystemEvent,
  ScanAngle: ScanAngle,
  CliffEvent: CliffEvent,
  DockInfraRed: DockInfraRed,
  SensorState: SensorState,
  Led: Led,
  WheelDropEvent: WheelDropEvent,
  ButtonEvent: ButtonEvent,
  BumperEvent: BumperEvent,
  ControllerInfo: ControllerInfo,
  ExternalPower: ExternalPower,
  DigitalOutput: DigitalOutput,
  DigitalInputEvent: DigitalInputEvent,
  Sound: Sound,
  MotorPower: MotorPower,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingResult: AutoDockingResult,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingAction: AutoDockingAction,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingActionGoal: AutoDockingActionGoal,
};
