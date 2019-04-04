classdef AgentConstants < handle
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Constant)
        RADIUS = 8;
        NEIGHBOURHOOD_RADIUS = 60;
        VISION_ANGLE = pi/2.4;
        GOAL_MARGIN = 1;
        MAX_SPEED = 6;
        COLOR_ORDER = [0 0.1 1
            1 0 0.2
            0.4 0.9 0
            1 0.4 0
            0.6 0 1
            1 0.3 1
            1 0.8 0
            0.35 0.95 0.75
            0 0.9 1];
    end
end

