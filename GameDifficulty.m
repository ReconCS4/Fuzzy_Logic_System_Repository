% To remove the warning messages for using old syntax
warning('off','fuzzy:general:warnDeprecation_newfis');
warning('off','fuzzy:general:warnDeprecation_Addvar');
warning('off','fuzzy:general:warnDeprecation_Addmf');
warning('off','fuzzy:general:warnDeprecation_Evalfis');

% Clears the Command Window of clutter
home;

% A declaration of a new FIS (a)
a = newfis('ResourceManagement');
% Declaring a new variable - (a) INT(1)
a = addvar(a, 'input', 'AmmoAndThrowables', [0 40]);
% Populating (a) INT(1) with mambarship functions
a = addmf(a, 'input', 1, 'Low', 'trapmf', [0 0 5 15]);
a = addmf(a, 'input', 1, 'Medium', 'trimf', [10 20 25]);
a = addmf(a, 'input', 1, 'High', 'trapmf', [20 30 40 40]);
% Declaring a new variable - (a) INT(2)
a = addvar(a, 'input', 'Explosives', [0 20]);
% Populating (a) INT(2) with membership functions
a = addmf(a, 'input', 2, 'Low', 'trapmf', [0 0 5 10]);
a = addmf(a, 'input', 2, 'Medium', 'trimf', [5 10 15]);
a = addmf(a, 'input', 2, 'High', 'trapmf', [7 15 20 20]);
% Declaring a new variable - (a) INT(3)
a = addvar(a, 'input', 'MedKits', [0 10]);
% Populating (a) INT(3) with membership functions
a = addmf(a, 'input', 3, 'Low', 'trapmf', [0 0 3 5]);
a = addmf(a, 'input', 3, 'Medium', 'trimf', [2 5 7]);
a = addmf(a, 'input', 3, 'High', 'trapmf', [5 7 10 10]);

% Declaring a new variable - (a) OUT(1)
a = addvar(a, 'output', 'ResourceManagement', [0 100]);
% Populating (a) OUT(1) with membership functions
a = addmf(a, 'output', 1, 'Bad', 'gaussmf', [20 0]);
a = addmf(a, 'output', 1, 'Average', 'gaussmf', [20 50]);
a = addmf(a, 'output', 1, 'Good', 'gaussmf', [20 80]);
a = addmf(a, 'output', 1, 'Outstanding', 'gaussmf', [20 100]); 


% A declaration of a new FIS (b)
b = newfis('EnemyDispatches');
% Declaring a new variable - (b) INT(1)
b = addvar(b, 'input', 'EnemyTakedowns', [0 30]);
% Populating (b) INT(1) with membership functions
b = addmf(b, 'input', 1, 'Low', 'trapmf', [0 0 5 10]);
b = addmf(b, 'input', 1, 'Medium', 'trimf', [5 15 20]);
b = addmf(b, 'input', 1, 'High', 'trapmf', [15 20 30 30]);
% Declaring a new variable - (b) INT(2)
b = addvar(b, 'input', 'StealthTakedowns', [0 30]);
% Populating (b) INT(2) with membership functions
b = addmf(b, 'input', 2, 'Low', 'trapmf', [0 0 5 10]);
b = addmf(b, 'input', 2, 'Medium', 'trimf', [5 15 20]);
b = addmf(b, 'input', 2, 'High', 'trapmf', [15 20 30 30]);
% Declaring a new variable - (b) INT(3)
b = addvar(b, 'input', 'AllyTakedowns', [0 30]);
% Populating (b) INT(3) with membership functions
b = addmf(b, 'input', 3, 'Low', 'trapmf', [0 0 5 10]);
b = addmf(b, 'input', 3, 'Medium', 'trimf', [5 15 20]);
b = addmf(b, 'input', 3, 'High', 'trapmf', [15 20 30 30]);

% Declaring a new variable - (b) OUT(1)
b = addvar(b, 'output', 'EnemyDispatches', [0 30]);
% Populating (b) OUT(1) with membership functions
b = addmf(b, 'output', 1, 'Low', 'gaussmf', [10 0]);
b = addmf(b, 'output', 1, 'Medium', 'gaussmf', [10 20]);
b = addmf(b, 'output', 1, 'High', 'gaussmf', [10 30]);


% A declaration of a new FIS (c)
c = newfis('Health');
% Declaring a new variable - (c) INT(1)
c = addvar(c, 'input', 'DamageTaken', [0 100]);
% Populating (c) INT(1) with membership functions
c = addmf(c, 'input', 1, 'Low', 'trapmf', [0 0 15 30]);
c = addmf(c, 'input', 1, 'Medium', 'trimf', [20 40 60]);
c = addmf(c, 'input', 1, 'High', 'trapmf', [50 85 100 100]);
% Declaring a new variable - (c) INT(2)
c = addvar(c, 'input', 'Restarts', [0 15]);
% Populating (c) INT(2) with membership functions
c = addmf(c, 'input', 2, 'Low', 'trapmf', [0 0 3 7]);
c = addmf(c, 'input', 2, 'Medium', 'trimf', [3 7 10]);
c = addmf(c, 'input', 2, 'High', 'trapmf', [7 10 15 15]);

% Declaring a new variable - (c) OUT(1)
c = addvar(c, 'output', 'Health', [0 100]);
% Populating (c) OUT(1) with membership functions
c = addmf(c, 'output', 1, 'Bad', 'gaussmf', [25 0]);
c = addmf(c, 'output', 1, 'Average', 'gaussmf', [25 50]);
c = addmf(c, 'output', 1, 'Good', 'gaussmf', [25 80]);
c = addmf(c, 'output', 1, 'Outstanding', 'gaussmf', [25 100]);


% A declaration of a new FIS (d)
d = newfis('PlayerSkill');
% Declaring a new variable - (d) INT(1)
d = addvar(d, 'input', 'Health', [0 100]);
% Populating (d) INT(1) with membership functions
d = addmf(d, 'input', 1, 'Bad', 'gaussmf', [25 0]);
d = addmf(d, 'input', 1, 'Average', 'gaussmf', [25 50]);
d = addmf(d, 'input', 1, 'Good', 'gaussmf', [25 80]);
d = addmf(d, 'input', 1, 'Outstanding', 'gaussmf', [25 100]);
% Declaring a new variable - (d) INT(2)
d = addvar(d, 'input', 'EnemyDispatches', [0 30]);
% Populating (d) INT(2) with membership functions
d = addmf(d, 'input', 2, 'Low', 'trimf', [0 5 10]);
d = addmf(d, 'input', 2, 'Medium', 'trimf', [5 15 20]);
d = addmf(d, 'input', 2, 'High', 'trimf', [15 20 30]);
% Declaring a new variable - (d) INT(3)
d = addvar(d, 'input', 'ResourceManagement', [0 100]);
% Populating (d) INT(3) with membership functions
d = addmf(d, 'input', 3, 'Bad', 'gaussmf', [20 0]);
d = addmf(d, 'input', 3, 'Average', 'gaussmf', [20 50]);
d = addmf(d, 'input', 3, 'Good', 'gaussmf', [20 80]);
d = addmf(d, 'input', 3, 'Outstanding', 'gaussmf', [20 100]);

% Declaring a new variable - (d) OUT(1)
d = addvar(d, 'output', 'PlayerSkill', [0 100]);
% Populating (d) OUT(1) with membership functions
d = addmf(d, 'output', 1, 'StoryMode', 'gaussmf', [15 0]);
d = addmf(d, 'output', 1, 'Basic', 'gaussmf', [15 30]);
d = addmf(d, 'output', 1, 'Moderate', 'gaussmf', [15 50]);
d = addmf(d, 'output', 1, 'Hardcore', 'gaussmf', [15 65]);
d = addmf(d, 'output', 1, 'Survivor', 'gaussmf', [15 85]);
d = addmf(d, 'output', 1, 'Unstoppable', 'gaussmf', [15 100]);


% A declaration of a new FIS (e)
e = newfis('DifficultyLevel', 'DefuzzificationMethod', 'centroid');
% Declaring a new variable - (e) INT(1)
e = addvar(e, 'input', 'PlayerSkill', [0 100]);
% Populating (e) INT(1) with membership functions
e = addmf(e, 'input', 1, 'StoryMode', 'gaussmf', [15 0]);
e = addmf(e, 'input', 1, 'Basic', 'gaussmf', [15 30]);
e = addmf(e, 'input', 1, 'Moderate', 'gaussmf', [15 50]);
e = addmf(e, 'input', 1, 'Hardcore', 'gaussmf', [15 65]);
e = addmf(e, 'input', 1, 'Survivor', 'gaussmf', [15 85]);
e = addmf(e, 'input', 1, 'Unstoppable', 'gaussmf', [15 100]);
% Declaring a new variable - (e) INT(2)
e = addvar(e, 'input', 'CurrentDifficulty', [0 100]);
% Populating (e) INT(2) with membership functions
e = addmf(e, 'input', 2, 'VeryLight', 'gaussmf', [15 0]);
e = addmf(e, 'input', 2, 'Light', 'gaussmf', [15 30]);
e = addmf(e, 'input', 2, 'Moderate', 'gaussmf', [15 50]);
e = addmf(e, 'input', 2, 'Hard', 'gaussmf', [15 65]);
e = addmf(e, 'input', 2, 'Survivor', 'gaussmf', [15 85]);
e = addmf(e, 'input', 2, 'Grounded', 'gaussmf', [15 100]);

% Declaring a new variable - (e) OUT(1)
e = addvar(e, 'output', 'DifficultyLevel', [0 100]);
% Populating (e) OUT(1) with membership functions
e = addmf(e, 'output', 1, 'VeryLight', 'gaussmf', [15 0]);
e = addmf(e, 'output', 1, 'Light', 'gaussmf', [15 30]);
e = addmf(e, 'output', 1, 'Moderate', 'gaussmf', [15 50]);
e = addmf(e, 'output', 1, 'Hard', 'gaussmf', [15 65]);
e = addmf(e, 'output', 1, 'Survivor', 'gaussmf', [15 85]);
e = addmf(e, 'output', 1, 'Grounded', 'gaussmf', [15 100]);



% A rule matrix to store all applicable rules
% Resource Management
ruleList1 = [];
ruleList1 = [ruleList1; "AmmoAndThrowables == High    | Explosives == High    | MedKits == High    => ResourceManagement = Bad          (0.35)"];
ruleList1 = [ruleList1; "AmmoAndThrowables == Medium  | Explosives == Medium  | MedKits == Medium  => ResourceManagement = Average      (0.35)"];
ruleList1 = [ruleList1; "AmmoAndThrowables == Low     | Explosives == Low     | MedKits == Low     => ResourceManagement = Outstanding  (0.35)"];
% Enemy Dispatches
ruleList2 = [];
ruleList2 = [ruleList2; "EnemyTakedowns == Low     | StealthTakedowns == Low     | AllyTakedowns == High    => EnemyDispatches = Low     (0.25)"];
ruleList2 = [ruleList2; "EnemyTakedowns == Medium  | StealthTakedowns == Medium  | AllyTakedowns == Medium  => EnemyDispatches = Medium  (0.25)"];
ruleList2 = [ruleList2; "EnemyTakedowns == High    | StealthTakedowns == High    | AllyTakedowns == Low     => EnemyDispatches = High    (0.25)"];
% Health
ruleList3 = [];
ruleList3 = [ruleList3; "Restarts    == High                          => Health = Bad          (0.4)"];
ruleList3 = [ruleList3; "DamageTaken == High    & Restarts == Medium  => Health = Bad          (0.4)"];
ruleList3 = [ruleList3; "DamageTaken == Low     & Restarts == High    => Health = Average      (0.4)"];
ruleList3 = [ruleList3; "DamageTaken == Medium  & Restarts == Medium  => Health = Average      (0.4)"];
ruleList3 = [ruleList3; "DamageTaken == High    & Restarts == Low     => Health = Average      (0.4)"];
ruleList3 = [ruleList3; "DamageTaken == Low     & Restarts == Medium  => Health = Good         (0.4)"];
ruleList3 = [ruleList3; "DamageTaken == Medium  & Restarts == Low     => Health = Good         (0.4)"];
ruleList3 = [ruleList3; "Restarts    == Low                           => Health = Outstanding  (0.4)"];
% Player Skill
ruleList4 = [];
ruleList4 = [ruleList4; "Health == Bad         & ResourceManagement == Bad                                   => PlayerSkill = StoryMode   (0.7)"];
ruleList4 = [ruleList4; "Health == Bad         & ResourceManagement == Bad         & EnemyDispatches == High => PlayerSkill = Basic       (0.7)"];
ruleList4 = [ruleList4; "Health == Average     & ResourceManagement == Average                               => PlayerSkill = Moderate    (0.7)"];
ruleList4 = [ruleList4; "Health == Average     & ResourceManagement == Average     & EnemyDispatches == High => PlayerSkill = Hardcore    (0.7)"];
ruleList4 = [ruleList4; "Health == Good        & ResourceManagement == Good                                  => PlayerSkill = Survivor    (0.7)"];
ruleList4 = [ruleList4; "Health == Outstanding & ResourceManagement == Outstanding                           => PlayerSkill = Unstoppable (0.7)"];
% Difficuly Level (PS: Story Mode)
ruleList5 = [];
ruleList5 = [ruleList5; "PlayerSkill == StoryMode & CurrentDifficulty == VeryLight => DifficultyLevel = VeryLight (1)"];
ruleList5 = [ruleList5; "PlayerSkill == StoryMode & CurrentDifficulty == Light     => DifficultyLevel = VeryLight (1)"];
ruleList5 = [ruleList5; "PlayerSkill == StoryMode & CurrentDifficulty == Moderate  => DifficultyLevel = Light     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == StoryMode & CurrentDifficulty == Hard      => DifficultyLevel = Light     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == StoryMode & CurrentDifficulty == Survivor  => DifficultyLevel = Moderate  (1)"];
ruleList5 = [ruleList5; "PlayerSkill == StoryMode & CurrentDifficulty == Grounded  => DifficultyLevel = Moderate  (1)"];
% Difficuly Level (PS: Basic)
ruleList5 = [ruleList5; "PlayerSkill == Basic & CurrentDifficulty == VeryLight => DifficultyLevel = Light    (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Basic & CurrentDifficulty == Light     => DifficultyLevel = Light    (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Basic & CurrentDifficulty == Moderate  => DifficultyLevel = Light    (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Basic & CurrentDifficulty == Hard      => DifficultyLevel = Moderate (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Basic & CurrentDifficulty == Survivor  => DifficultyLevel = Moderate (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Basic & CurrentDifficulty == Grounded  => DifficultyLevel = Hard     (1)"];
% Difficuly Level (PS: Moderate)
ruleList5 = [ruleList5; "PlayerSkill == Moderate & CurrentDifficulty == VeryLight => DifficultyLevel = Light    (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Moderate & CurrentDifficulty == Light     => DifficultyLevel = Moderate (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Moderate & CurrentDifficulty == Moderate  => DifficultyLevel = Moderate (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Moderate & CurrentDifficulty == Hard      => DifficultyLevel = Hard     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Moderate & CurrentDifficulty == Survivor  => DifficultyLevel = Hard     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Moderate & CurrentDifficulty == Grounded  => DifficultyLevel = Survivor (1)"];
% Difficuly Level (PS: Hardcore)
ruleList5 = [ruleList5; "PlayerSkill == Hardcore & CurrentDifficulty == VeryLight => DifficultyLevel = Moderate (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Hardcore & CurrentDifficulty == Light     => DifficultyLevel = Moderate (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Hardcore & CurrentDifficulty == Moderate  => DifficultyLevel = Hard     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Hardcore & CurrentDifficulty == Hard      => DifficultyLevel = Hard     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Hardcore & CurrentDifficulty == Survivor  => DifficultyLevel = Survivor (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Hardcore & CurrentDifficulty == Grounded  => DifficultyLevel = Survivor (1)"];
% Difficuly Level (PS: Survivor)
ruleList5 = [ruleList5; "PlayerSkill == Survivor & CurrentDifficulty == VeryLight => DifficultyLevel = Moderate (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Survivor & CurrentDifficulty == Light     => DifficultyLevel = Hard     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Survivor & CurrentDifficulty == Moderate  => DifficultyLevel = Hard     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Survivor & CurrentDifficulty == Hard      => DifficultyLevel = Survivor (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Survivor & CurrentDifficulty == Survivor  => DifficultyLevel = Survivor (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Survivor & CurrentDifficulty == Grounded  => DifficultyLevel = Grounded (1)"];
% Difficuly Level (PS: Unstoppable)
ruleList5 = [ruleList5; "PlayerSkill == Unstoppable & CurrentDifficulty == VeryLight => DifficultyLevel = Hard     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Unstoppable & CurrentDifficulty == Light     => DifficultyLevel = Hard     (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Unstoppable & CurrentDifficulty == Moderate  => DifficultyLevel = Survivor (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Unstoppable & CurrentDifficulty == Hard      => DifficultyLevel = Survivor (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Unstoppable & CurrentDifficulty == Survivor  => DifficultyLevel = Grounded (1)"];
ruleList5 = [ruleList5; "PlayerSkill == Unstoppable & CurrentDifficulty == Grounded  => DifficultyLevel = Grounded (1)"];

% Add the rules to the FIS
a = addRule(a, ruleList1);
b = addRule(b, ruleList2);
c = addRule(c, ruleList3);
d = addRule(d, ruleList4);
e = addRule(e, ruleList5);

% The ruleview allows you to see the rule-base
ruleview(a);
ruleview(b);
ruleview(c);
ruleview(d);
ruleview(e);


% The subplots to visualise the system
figure(1);
subplot(4,2,1), plotmf(a, 'input', 1);
subplot(4,2,2), plotmf(a, 'input', 2);
subplot(4,2,3), plotmf(a, 'input', 3);

subplot(4,2,4), plotmf(b, 'input', 1);
subplot(4,2,5), plotmf(b, 'input', 2);
subplot(4,2,6), plotmf(b, 'input', 3);

subplot(4,2,7), plotmf(c, 'input', 1);
subplot(4,2,8), plotmf(c, 'input', 2);

figure(2);
subplot(6,1,1), plotmf(a, 'output', 1);
subplot(6,1,2), plotmf(b, 'output', 1);
subplot(6,1,3), plotmf(c, 'output', 1);
subplot(6,1,4), plotmf(d, 'output', 1);
subplot(6,1,5), plotmf(e, 'input', 2);
subplot(6,1,6), plotmf(e, 'output', 1);

surfview(e);
