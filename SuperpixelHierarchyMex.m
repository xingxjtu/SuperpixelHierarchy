% function model = SuperpixelHierarchyMex(image, edge, edge_weight, compactness)
% 
% input:
% % image      : 3-channel image
% % edge        : 1-channel image
% % [edge_weight]: balance between edge and color feature (default: 0.5)
% % [compactness]: [0,1]

% output:
% % model: superpixel hierarchy