function BC = createBC2D(meshvar)
% function BC = createBC2D(meshvar)
% Creates a boundary condition structure from a mesh structure
% for a 2D mesh. The boundary conditions on all boundaries are Neumann;
% The index of each boundary condition is defined as:
%	1:	Dirichlet
%	2:	Neumann
%	3:	Mixed
%
% SYNOPSIS:
%
%
% PARAMETERS:
%
%
% RETURNS:
%
%
% EXAMPLE:
%
% SEE ALSO:
%

% Copyright (c) 2012-2016 Ali Akbar Eftekhari
% See the license file

% Extract number of cells from the mesh structure
Nxy = meshvar.dims;
Nx = Nxy(1); Ny = Nxy(2);

% Define the top, bottom, right, and left boundary conditions
% (default = Neumann, i.e., a = 1, b = 0, c = 0)
top.a = ones(Nx,1);
top.b = zeros(Nx,1);
top.c = zeros(Nx,1);
top.periodic = 0;

bottom.a = ones(Nx,1);
bottom.b = zeros(Nx,1);
bottom.c = zeros(Nx,1);
bottom.periodic = 0;

right.a = ones(1,Ny);
right.b = zeros(1,Ny);
right.c = zeros(1,Ny);
right.periodic = 0;

left.a = ones(1,Ny);
left.b = zeros(1,Ny);
left.c = zeros(1,Ny);
left.periodic = 0;

back=[];
front=[];

BC= BoundaryCondition(meshvar, left, right, bottom, top, back, front);
