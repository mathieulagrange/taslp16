function taslpStruct2016_unsupervised(varargin)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
% Welcome to the main entry point of talspStruct2016_unsupervised                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
% Please DO NOT modify this file unless you have a precise intent.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
shortExperimentName = 'taun';                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
[p, experimentName] = fileparts(mfilename('fullpath'));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
if nargin>0 && isstruct(varargin{1})                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
 config = varargin{1};                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
else                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
 config = expConfigParse(getUserFileName(shortExperimentName, experimentName, p));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
if ~isempty(config)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
 expDependencies(config);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
 config = expRun(p, experimentName, shortExperimentName, varargin);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
function configFileName = getUserFileName(shortExperimentName, experimentName, experimentPath, expLanesPath)

% shortExperimentName = names2shortNames(experimentName);
% shortExperimentName = shortExperimentName{1};

if ~exist('expLanesPath', 'var'), expLanesPath = []; end

userName = getUserName();

configFileName = [experimentPath '/config' filesep shortExperimentName 'Config' [upper(userName(1)) userName(2:end)] '.txt'];

if ~exist(configFileName, 'file')
    if isempty(expLanesPath)
        files = dir([experimentPath '/config/*Config*.txt']);
        defaultFileName = [experimentPath '/config/' files(1).name];
    else
        defaultFileName = [expLanesPath '/expLanesConfig.txt'];
    end
    fprintf('Copying default config file for user %s from %s .\n', userName, defaultFileName);
    userDefaultConfigFileName = expUserDefaultConfig(defaultFileName, 1);
    
    if ~exist(userDefaultConfigFileName, 'file')
        error(['Unable to find ' userDefaultConfigFileName '\n']);
    end
    fid = fopen(userDefaultConfigFileName, 'rt');
   
    fidw = fopen(configFileName, 'w');
     if fidw < 0
        error(['Unable to create ' configFileName '\n']);
    end
    while ~feof(fid)
        text = fgetl(fid);
        if line ~= -1
            text = strrep(text, '<experimentPath>', experimentPath);
            text = strrep(text, '<userName>', userName);
            text = strrep(text, '<experimentName>', experimentName);
            fprintf(fidw, '%s\n', text);
        end
    end
    fclose(fid);
    fclose(fidw);
    try
        open(configFileName);
    catch
        fprintf(2, 'Unable to open config file.\n');
    end
    disp(['Please update the file ' configFileName ' to suit your needs.']);
end
function config = expConfigParse(configFileName)

config=[];
configFile=fopen(configFileName);
if configFile==-1,
    fprintf(2,['Unable to load the expLanes config file for your experiment named: ' configFileName '\n']); return;
end

configCell=textscan(configFile,'%s%s ', 'commentStyle', '%', 'delimiter', '=');
fclose(configFile);
names = strtrim(configCell{1});
values = strtrim(configCell{2});

for k=1:length(names)
    if k <= length(values)
        if ~isempty(values{k})
            if  ~isnan(str2double(values{k}))
                values{k} = str2double(values{k});
            else
                if values{k}(1) == '{' || values{k}(1) == '[' || values{k}(end) == '}' || values{k}(end) == ']'
                    try
                        values{k} =  eval(values{k});
                    catch
                        fprintf(2,['Unable to parse definition of  ' names{k} ' in file ' configFileName '.\n']); return;
                    end
                    %                 else
                    %                     fprintf(2,['Unable to parse definition of  ' names{k} ' in file ' configFileName '.\n']); return;
                end
            end
        end
    else
        values{k} = '';
    end
end

try
config = cell2struct(values, names);
catch error
       fprintf(2,[error.message ' in file ' configFileName '\n']); return;
end
                                                                                                                                                                                                                                                                                                                                                                          
function userId=getUserName()

if isunix
userId = getenv('USER');
if isempty(userId), userId = getenv('USERNAME'); end
else
    userId = getenv('UserName');
end


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
function expDependencies(config)

p = fileparts(mfilename('fullpath'));
addpath(genpath(p));

if config.localDependencies == 0 || config.localDependencies == 2
    for k=1:length(config.dependencies)
        dependencyPath = config.dependencies{k};
        if dependencyPath(1) == '.'
            dependencyPath = [p filesep dependencyPath];
        elseif dependencyPath(1) == '~'
            dependencyPath = expandHomePath(dependencyPath);
        end
        addpath(genpath(dependencyPath));
    end
end

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
function [userDefaultConfigFileName, userDir] = expUserDefaultConfig(defaultFileName, force)

if ~exist('force', 'var'), force = 0; end

if ispc, userDir= getenv('USERPROFILE');
else userDir= getenv('HOME');
end

if ~exist([userDir filesep '.expLanes'], 'dir')
    mkdir([userDir filesep '.expLanes']);
end

if force
    userDefaultConfigFileName = defaultFileName;
else
    userDefaultConfigFileName = [userDir filesep '.expLanes' filesep getUserName() 'Config.txt'];
end

if ~exist(userDefaultConfigFileName, 'file')
    disp(['Creating default config in ' userDir filesep '.expLanes' filesep]);
    copyfile(defaultFileName, userDefaultConfigFileName);
else
    try
        expUpdateConfig(userDefaultConfigFileName);
    catch
        fprintf(2, 'Unable to update the default Config\n');
    end
end

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
function [ out ] = expandHomePath(in)
%EXPPATH Summary of this function goes here
%   Detailed explanation goes here

if ischar(in)
    out =  stringPath (in);
else
  out = cellfun(@stringPath, in, 'UniformOutput', 0);
end

function out =  stringPath (in)

in = strrep(in, '\', '/');

if ~isempty(in) && strcmp(in(1), '~')
   if ispc; 
       homePath= getenv('USERPROFILE'); 
   else
       homePath= getenv('HOME');
   end
   out = strrep(in, '~', homePath);
else    
    out = in;
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
