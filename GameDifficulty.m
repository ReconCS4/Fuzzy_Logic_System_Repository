% To remove the warning messages for using old syntax
warning('off','fuzzy:general:warnDeprecation_newfis') 
warning('off','fuzzy:general:warnDeprecation_Addvar')
warning('off','fuzzy:general:warnDeprecation_Addmf')
warning('off','fuzzy:general:warnDeprecation_Evalfis')

% Clears the Command Window of clutter
home;

% A declaration of a new FIS (a)
a = newfis('DifficultyLevel');
% Declaring a new variable - (a) INT(1)
a = addvar(a, 'input', 'PlayerSkill', 'trapmf', []);
% Populating (a) INT(1) with membership functions
a = addmf(a, 'input', 1, 'StoryMode', 'gaussmf', []);
a = addmf(a, 'input', 1, 'Basic', 'gaussmf', []);
a = addmf(a, 'input', 1, 'Moderate', 'gaussmf', []);
a = addmf(a, 'input', 1, 'Hardcore', 'gaussmf', []);
a = addmf(a, 'input', 1, 'Survivor', 'gaussmf', []);
a = addmf(a, 'input', 1, 'Unstoppable', 'gaussmf', []);
% Declaring a new variable - (a) INT(2)
a = addvar(a, 'input', 'CurrentDifficulty', 'trapmf', []);
% Populating (a) INT(2) with membership functions
a = addmf(a, 'input', 2, 'VeryLight', 'gaussmf', []);
a = addmf(a, 'input', 2, 'Light', 'gaussmf', []);
a = addmf(a, 'input', 2, 'Moderate', 'gaussmf', []);
a = addmf(a, 'input', 2, 'Hard', 'gaussmf', []);
a = addmf(a, 'input', 2, 'Survivor', 'gaussmf', []);
a = addmf(a, 'input', 2, 'Grounded', 'gaussmf', []);

% Declaring a new variable - (a) OUT(1)
a = addvar(a, 'output', 'DifficultyLevel', []);
% Populating (a) OUT(1) with membership functions
a = addmf(a, 'output', 1, 'VeryLight', 'gaussmf', []);
a = addmf(a, 'output', 1, 'Light', 'gaussmf', []);
a = addmf(a, 'output', 1, 'Moderate', 'gaussmf', []);
a = addmf(a, 'output', 1, 'Hard', 'gaussmf', []);
a = addmf(a, 'output', 1, 'Survivor', 'gaussmf', []);
a = addmf(a, 'output', 1, 'Grounded', 'gaussmf', []);


% A declaration of a new FIS (b)
b = newfis('PlayerSkill');
% Declaring a new variable - (b) INT(1)
b = addvar(b, 'input', 'Health', 'trapmf', []);
% Populating (b) INT(1) with membership functions
b = addmf(b, 'input', 1, 'Bad', 'trapmf', []);
b = addmf(b, 'input', 1, 'Average', 'trapmf', []);
b = addmf(b, 'input', 1, 'Good', 'trapmf', []);
b = addmf(b, 'input', 1, 'Outstanding', 'trapmf', []);
% Declaring a new variable - (b) INT(2)
b = addvar(b, 'input', 'EnemyDispatches', 'trapmf', []);
% Populating (b) INT(2) with membership functions
b = addmf(b, 'input', 2, 'None', 'trapmf', []);
b = addmf(b, 'input', 2, 'Low', 'trapmf', []);
b = addmf(b, 'input', 2, 'Medium', 'trapmf', []);
b = addmf(b, 'input', 2, 'High', 'trapmf', []);
% Declaring a new variable - (b) INT(3)
b = addvar(b, 'input', 'ResourceManagement', 'trapmf', []);
% Populating (b) INT(3) with membership functions
b = addmf(b, 'input', 3, 'Bad', 'trapmf', []);
b = addmf(b, 'input', 3, 'Average', 'trapmf', []);
b = addmf(b, 'input', 3, 'Good', 'trapmf', []);
b = addmf(b, 'input', 3, 'Outstanding', 'trapmf', []);

% Declaring a new variable - (b) OUT(1)
b = addvar(b, 'output', 'PlayerSkill', []);
% Populating (b) OUT(1) with membership functions
b = addmf(b, 'output', 1, 'StoryMode', 'gaussmf', []);
b = addmf(b, 'output', 1, 'Basic', 'gaussmf', []);
b = addmf(b, 'output', 1, 'Moderate', 'gaussmf', []);
b = addmf(b, 'output', 1, 'Hardcore', 'gaussmf', []);
b = addmf(b, 'output', 1, 'Survivor', 'gaussmf', []);
b = addmf(b, 'output', 1, 'Unstoppable', 'gaussmf', []);


% A declaration of a new FIS (c)
c = newfis('Health');
% Declaring a new variable - (c) INT(1)
c = addvar(c, 'input', 'DamageTaken', []);
% Populating (c) INT(1) with membership functions
c = addmf(c, 'input', 1, 'None', 'trapmf', []);
c = addmf(c, 'input', 1, 'Low', 'trapmf', []);
c = addmf(c, 'input', 1, 'Medium', 'trapmf', []);
c = addmf(c, 'input', 1, 'High', 'trapmf', []);
% Declaring a new variable - (c) INT(2)
c = addvar(c, 'input', 'Restarts', []);
% Populating (c) INT(2) with membership functions
c = addmf(c, 'input', 2, 'None', 'trapmf', []);
c = addmf(c, 'input', 2, 'Low', 'trapmf', []);
c = addmf(c, 'input', 2, 'Medium', 'trapmf', []);
c = addmf(c, 'input', 2, 'High', 'trapmf', []);

% Declaring a new variable - (c) OUT(1)
c = addvar(c, 'output', 'Health', []);
% Populating (c) OUT(1) with membership functions
c = addmf(c, 'output', 1, 'Bad', 'gaussmf', []);
c = addmf(c, 'output', 1, 'Average', 'gaussmf', []);
c = addmf(c, 'output', 1, 'Good', 'gaussmf', []);
c = addmf(c, 'output', 1, 'Outstanding', 'gaussmf', []);


% A declaration of a new FIS (d)
d = newfis('EnemyDispatches');
% Declaring a new variable - (d) INT(1)
d = addvar(d, 'input', 'EnemyTakedowns', []);
% Populating (d) INT(1) with membership functions
d = addmf(d, 'input', 1, 'None', 'trapmf', []);
d = addmf(d, 'input', 1, 'Low', 'trapmf', []);
d = addmf(d, 'input', 1, 'Medium', 'trapmf', []);
d = addmf(d, 'input', 1, 'High', 'trapmf', []);
% Declaring a new variable - (d) INT(2)
d = addvar(d, 'input', 'StealthTakedowns', []);
% Populating (d) INT(2) with membership functions
d = addmf(d, 'input', 2, 'None', 'trapmf', []);
d = addmf(d, 'input', 2, 'Low', 'trapmf', []);
d = addmf(d, 'input', 2, 'Medium', 'trapmf', []);
d = addmf(d, 'input', 2, 'High', 'trapmf', []);
% Declaring a new variable - (d) INT(3)
d = addvar(d, 'input', 'AllyTakedowns', []);
% Populating (d) INT(3) with membership functions
d = addmf(d, 'input', 3, 'None', 'trapmf', []);
d = addmf(d, 'input', 3, 'Low', 'trapmf', []);
d = addmf(d, 'input', 3, 'Medium', 'trapmf', []);
d = addmf(d, 'input', 3, 'High', 'trapmf', []);

% Declaring a new variable - (d) OUT(1)
d = addvar(d, 'output', 'EnemyDispatches', []);
% Populating (d) OUT(1) with membership functions
d = addmf(d, 'output', 1, 'None', 'gaussmf', []);
d = addmf(d, 'output', 1, 'Low', 'gaussmf', []);
d = addmf(d, 'output', 1, 'Medium', 'gaussmf', []);
d = addmf(d, 'output', 1, 'High', 'gaussmf', []);


% A declaration of a new FIS (e)
e = newfis('ResourceManagement');
% Declaring a new variable - (e) INT(1)
e = addvar(e, 'input', 'AmmoAndThrowables', []);
% Populating (e) INT(1) with membership functions
e = addmf(e, 'input', 1, 'None', 'trapmf', []);
e = addmf(e, 'input', 1, 'Low', 'trapmf', []);
e = addmf(e, 'input', 1, 'Medium', 'trapmf', []);
e = addmf(e, 'input', 1, 'High', 'trapmf', []);
% Declaring a new variable - (e) INT(2)
e = addvar(e, 'input', 'Explosives', []);
% Populating (b) INT(2) with membership functions
e = addmf(e, 'input', 2, 'None', 'trapmf', []);
e = addmf(e, 'input', 2, 'Low', 'trapmf', []);
e = addmf(e, 'input', 2, 'Medium', 'trapmf', []);
e = addmf(e, 'input', 2, 'High', 'trapmf', []);
% Declaring a new variable - (e) INT(3)
e = addvar(e, 'input', 'MedKits', []);
% Populating (e) INT(3) with membership functions
e = addmf(e, 'input', 3, 'None', 'trapmf', []);
e = addmf(e, 'input', 3, 'Low', 'trapmf', []);
e = addmf(e, 'input', 3, 'Medium', 'trapmf', []);
e = addmf(e, 'input', 3, 'High', 'trapmf', []);

% Declaring a new variable - (e) OUT(1)
e = addvar(e, 'output', 'ResourceManagement', []);
% Populating (e) OUT(1) with membership functions
e = addmf(e, 'output', 1, 'Bad', 'gaussmf', []);
e = addmf(e, 'output', 1, 'Average', 'gaussmf', []);
e = addmf(e, 'output', 1, 'Good', 'gaussmf', []);
e = addmf(e, 'output', 1, 'Outstanding', 'gaussmf', []); 



% A rule matrix to store all applicable rules
ruleList = [];
% Health
ruleList = [ruleList; "Restarts    == High                          => Health = Bad          (0.4)"];
ruleList = [ruleList; "DamageTaken == High    & Restarts == Medium  => Health = Bad          (0.4)"];
ruleList = [ruleList; "DamageTaken == Low     & Restarts == High    => Health = Average      (0.4)"];
ruleList = [ruleList; "DamageTaken == Medium  & Restarts == Medium  => Health = Average      (0.4)"];
ruleList = [ruleList; "DamageTaken == High    & Restarts == Low     => Health = Average      (0.4)"];
ruleList = [ruleList; "DamageTaken == Low     & Restarts == Medium  => Health = Good         (0.4)"];
ruleList = [ruleList; "DamageTaken == Medium  & Restarts == Low     => Health = Good         (0.4)"];
ruleList = [ruleList; "DamageTaken == Low     & Restarts == Low     => Health = Outstanding  (0.4)"];
ruleList = [ruleList; "Restarts    == None                          => Health = Outstanding  (0.4)"];
% Resource Management
ruleList = [ruleList; "AmmoAndThrowables == High    & Explosives == High    & Medkits == High    => ResourceManagement = Bad          (0.35)"];
ruleList = [ruleList; "AmmoAndThrowables == Medium  & Explosives == Medium  & Medkits == Medium  => ResourceManagement = Average      (0.35)"];
ruleList = [ruleList; "AmmoAndThrowables == Low     & Explosives == Low     & Medkits == Low     => ResourceManagement = Good         (0.35)"];
ruleList = [ruleList; "AmmoAndThrowables == None    & Explosives == None    & Medkits == None    => ResourceManagement = Outstanding  (0.35)"];
% Enemy Dispatches
ruleList = [ruleList; "EnemyTakedowns == None    | StealthTakedowns == None    | AllyTakedowns == None    => EnemyDispatches = None    (0.25)"];
ruleList = [ruleList; "EnemyTakedowns == Low     | StealthTakedowns == Low     | AllyTakedowns == Low     => EnemyDispatches = Low     (0.25)"];
ruleList = [ruleList; "EnemyTakedowns == Medium  | StealthTakedowns == Medium  | AllyTakedowns == Medium  => EnemyDispatches = Medium  (0.25)"];
ruleList = [ruleList; "EnemyTakedowns == High    | StealthTakedowns == High    | AllyTakedowns == High    => EnemyDispatches = High    (0.25)"];
% Player Skill
ruleList = [ruleList; "Health == Bad         & ResourceManagement == Bad                                   => PlayerSkill = StoryMode   (0.7)"];
ruleList = [ruleList; "Health == Bad         & ResourceManagement == Bad         & EnemyDispatches == High => PlayerSkill = Basic       (0.7)"];
ruleList = [ruleList; "Health == Average     & ResourceManagement == Average                               => PlayerSkill = Moderate    (0.7)"];
ruleList = [ruleList; "Health == Average     & ResourceManagement == Average     & EnemyDispatches == High => PlayerSkill = Hardcore    (0.7)"];
ruleList = [ruleList; "Health == Good        & ResourceManagement == Good                                  => PlayerSkill = Survivor    (0.7)"];
ruleList = [ruleList; "Health == Outstanding & ResourceManagement == Outstanding                           => PlayerSkill = Unstoppable (0.7)"];
% Difficulty Level (PS: Story Mode)
ruleList = [ruleList; "PlayerSkill == StoryMode & CurrentDifficulty == VeryLight => DifficultyLevel = VeryLight (1)"];
ruleList = [ruleList; "PlayerSkill == StoryMode & CurrentDifficulty == Light     => DifficultyLevel = VeryLight (1)"];
ruleList = [ruleList; "PlayerSkill == StoryMode & CurrentDifficulty == Moderate  => DifficultyLevel = Light     (1)"];
ruleList = [ruleList; "PlayerSkill == StoryMode & CurrentDifficulty == Hard      => DifficultyLevel = Light     (1)"];
ruleList = [ruleList; "PlayerSkill == StoryMode & CurrentDifficulty == Survivor  => DifficultyLevel = Moderate  (1)"];
ruleList = [ruleList; "PlayerSkill == StoryMode & CurrentDifficulty == Grounded  => DifficultyLevel = Moderate  (1)"];
% Difficulty Level (PS: Basic)
ruleList = [ruleList; "PlayerSkill == Basic & CurrentDifficulty == VeryLight => DifficultyLevel = Light    (1)"];
ruleList = [ruleList; "PlayerSkill == Basic & CurrentDifficulty == Light     => DifficultyLevel = Light    (1)"];
ruleList = [ruleList; "PlayerSkill == Basic & CurrentDifficulty == Moderate  => DifficultyLevel = Light    (1)"];
ruleList = [ruleList; "PlayerSkill == Basic & CurrentDifficulty == Hard      => DifficultyLevel = Moderate (1)"];
ruleList = [ruleList; "PlayerSkill == Basic & CurrentDifficulty == Survivor  => DifficultyLevel = Moderate (1)"];
ruleList = [ruleList; "PlayerSkill == Basic & CurrentDifficulty == Grounded  => DifficultyLevel = Hard     (1)"];
% Difficulty Level (PS: Moderate)
ruleList = [ruleList; "PlayerSkill == Moderate & CurrentDifficulty == VeryLight => DifficultyLevel = Light    (1)"];
ruleList = [ruleList; "PlayerSkill == Moderate & CurrentDifficulty == Light     => DifficultyLevel = Moderate (1)"];
ruleList = [ruleList; "PlayerSkill == Moderate & CurrentDifficulty == Moderate  => DifficultyLevel = Moderate (1)"];
ruleList = [ruleList; "PlayerSkill == Moderate & CurrentDifficulty == Hard      => DifficultyLevel = Hard     (1)"];
ruleList = [ruleList; "PlayerSkill == Moderate & CurrentDifficulty == Survivor  => DifficultyLevel = Hard     (1)"];
ruleList = [ruleList; "PlayerSkill == Moderate & CurrentDifficulty == Grounded  => DifficultyLevel = Survivor (1)"];
% Difficulty Level (PS: Hardcore)
ruleList = [ruleList; "PlayerSkill == Hardcore & CurrentDifficulty == VeryLight => DifficultyLevel = Moderate (1)"];
ruleList = [ruleList; "PlayerSkill == Hardcore & CurrentDifficulty == Light     => DifficultyLevel = Moderate (1)"];
ruleList = [ruleList; "PlayerSkill == Hardcore & CurrentDifficulty == Moderate  => DifficultyLevel = Hard     (1)"];
ruleList = [ruleList; "PlayerSkill == Hardcore & CurrentDifficulty == Hard      => DifficultyLevel = Hard     (1)"];
ruleList = [ruleList; "PlayerSkill == Hardcore & CurrentDifficulty == Survivor  => DifficultyLevel = Survivor (1)"];
ruleList = [ruleList; "PlayerSkill == Hardcore & CurrentDifficulty == Grounded  => DifficultyLevel = Survivor (1)"];
% Difficulty Level (PS: Survivor)
ruleList = [ruleList; "PlayerSkill == Survivor & CurrentDifficulty == VeryLight => DifficultyLevel = Moderate (1)"];
ruleList = [ruleList; "PlayerSkill == Survivor & CurrentDifficulty == Light     => DifficultyLevel = Hard     (1)"];
ruleList = [ruleList; "PlayerSkill == Survivor & CurrentDifficulty == Moderate  => DifficultyLevel = Hard     (1)"];
ruleList = [ruleList; "PlayerSkill == Survivor & CurrentDifficulty == Hard      => DifficultyLevel = Survivor (1)"];
ruleList = [ruleList; "PlayerSkill == Survivor & CurrentDifficulty == Survivor  => DifficultyLevel = Survivor (1)"];
ruleList = [ruleList; "PlayerSkill == Survivor & CurrentDifficulty == Grounded  => DifficultyLevel = Grounded (1)"];
% Difficulty Level (PS: Unstoppable)
ruleList = [ruleList; "PlayerSkill == Unstoppable & CurrentDifficulty == VeryLight => DifficultyLevel = Hard     (1)"];
ruleList = [ruleList; "PlayerSkill == Unstoppable & CurrentDifficulty == Light     => DifficultyLevel = Hard     (1)"];
ruleList = [ruleList; "PlayerSkill == Unstoppable & CurrentDifficulty == Moderate  => DifficultyLevel = Survivor (1)"];
ruleList = [ruleList; "PlayerSkill == Unstoppable & CurrentDifficulty == Hard      => DifficultyLevel = Survivor (1)"];
ruleList = [ruleList; "PlayerSkill == Unstoppable & CurrentDifficulty == Survivor  => DifficultyLevel = Grounded (1)"];
ruleList = [ruleList; "PlayerSkill == Unstoppable & CurrentDifficulty == Grounded  => DifficultyLevel = Grounded (1)"];

% Print the rules to the command window
showrule(a);

% Add the rules to the FIS
a = addRule(a, ruleList);

% The ruleview allows you to see the rule-base
ruleview(a);



% The subplots to visualise the system
figure(1);
subplot(), plotmf(a, 'input', 1);
subplot(), plotmf(a, 'input', 2);
subplot(), plotmf(a, 'input', 3);
subplot(), plotmf(a, 'input', 4);
subplot(), plotmf(a, 'input', 5);
subplot(), plotmf(a, 'output', 1);
subplot(), plotmf(a, 'output', 4);