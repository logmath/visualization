% function colors = varyColorSat(color,numLevels)
% Create vector of RGB color triplets based on a single RGB color. The
% saturation is varied in even increments and the total numbers of colors
% returned is specified by the user.
% INPUTS
%   color     - Base color to produce the color map from. RGB percentage
%               triplet expected.
%   numLevels - Number of levels to discretize saturation by, e.g. the
%               number of colors that are returned in the map.
% OUTPUTS
%   colors    - Vector of RGB percentage triplets.
% AUTHOR: Logan Mathews

function colors = varyColorSat(color,numLevels)

    HSV = rgb2hsv(color);
    H = HSV(1)*ones(numLevels,1);
    S = linspace(0.1,1,numLevels)';
    V = HSV(3)*ones(numLevels,1);
    
    HSV = [H,S,V];
    
    colors = hsv2rgb(HSV);

end
