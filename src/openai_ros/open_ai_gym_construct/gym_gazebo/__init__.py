import logging
from gym.envs.registration import register

logger = logging.getLogger(__name__)

# Gazebo
# ----------------------------------------
# QuadCopter Env
register(
    id='QuadCopter-v0',
    entry_point='gym_gazebo.envs:QuadCopterEnv',
    timestep_limit=1000,
)


# Turtlebot envs
register(
    id='GazeboMazeTurtlebotLidar-v0',
    entry_point='gym_gazebo.envs:GazeboMazeTurtlebotLidarEnv',
    # More arguments here
)
register(
    id='GazeboCircuitTurtlebotLidar-v0',
    entry_point='gym_gazebo.envs:GazeboCircuitTurtlebotLidarEnv',
    timestep_limit=1000,
    reward_threshold=1.0,
    nondeterministic = True,
)
register(
    id='GazeboCircuit2TurtlebotLidar-v0',
    entry_point='gym_gazebo.envs:GazeboCircuit2TurtlebotLidarEnv',
    timestep_limit=1000,
)
register(
    id='GazeboCircuit2TurtlebotLidarNn-v0',
    entry_point='gym_gazebo.envs:GazeboCircuit2TurtlebotLidarNnEnv',
    timestep_limit=1000,
)
register(
    id='GazeboCircuit2cTurtlebotCameraNnEnv-v0',
    entry_point='gym_gazebo.envs:GazeboCircuit2cTurtlebotCameraNnEnv',
    timestep_limit=1000,
)
register(
    id='GazeboRoundTurtlebotLidar-v0',
    entry_point='gym_gazebo.envs:GazeboRoundTurtlebotLidarEnv',
    timestep_limit=1000,
)

# Erle-Copter envs
register(
    id='GazeboErleCopterHover-v0',
    entry_point='gym_gazebo.envs:GazeboErleCopterHoverEnv',
    timestep_limit=1000,
)

#Erle-Rover envs
register(
    id='GazeboMazeErleRoverLidar-v0',
    entry_point='gym_gazebo.envs:GazeboMazeErleRoverLidarEnv',
    timestep_limit=1000,
)
