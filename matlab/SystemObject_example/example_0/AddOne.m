classdef AddOne < matlab.System
    %ADDONE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods (Access = protected)
        function y = stepImpl(obj,u)
            y = u + 1;
        end
    end
    
end

