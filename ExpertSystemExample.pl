% FACTS --------------------------------------------------------------------------

% Pet types
pet_type(dog).
pet_type(cat).
pet_type(bird).
pet_type(rabbit).
pet_type(fish).
pet_type(hamster).
pet_type(gecko).
pet_type(turtle).
pet_type(ferret).
pet_type(axolotl).
pet_type(hedgehog).


% Pets classes based on biological classification
pet_class(mammalia).
pet_class(aves).
pet_class(actinopterygii).
pet_class(reptilia).
pet_class(amphibia).


% The type of covering that the pet has on its body 
pet_covering(fur).
pet_covering(feathers).
pet_covering(scales).
pet_covering(soft_skin).
pet_covering(spines).


% The types of food that the pet consumes in its natural environment.
pet_diet(omnivorous).
pet_diet(carnivorous).
pet_diet(herbivorous).
pet_diet(insectivorous).


% The type of environment in which the pet lives in the wild.
pet_habitat(terresital).
pet_habitat(aquatic).
pet_habitat(aerial).


% The typical pattern of sleep that the pet exhibits
pet_sleep_pattern(diurnal).
pet_sleep_pattern(nocturnal).
pet_sleep_pattern(crepuscular).


% Trainability refers to the ease of training a pet to perform certain behaviors or tricks
pet_trainability(high).
pet_trainability(moderate).
pet_trainability(low).


% Sociability refers to how social or friendly a particular pet species is towards humans or other animals on a scale of 1 to 10.
pet_sociability_score('Sociability score from 1 to 10').


% This part contains facts for queries, not for the diagnostic process. ↓↓↓

% << DOG >> features:
pet_class(dog,mammalia).
pet_lifespan(dog,'10-13 years').
pet_covering(dog,fur).
pet_diet(dog,omnivorous).
pet_habitat(dog,terrestial).
pet_sleep_pattern(dog,diurnal).
pet_trainability(dog,high).
pet_sociability_score(dog,9).


% << CAT >> features:
pet_class(cat,mammalia).
pet_lifespan(cat,'12-16 years').
pet_covering(cat,fur).
pet_diet(cat,carnivorous).
pet_habitat(cat,terrestial).
pet_sleep_pattern(cat,crepuscular).
pet_sleep_pattern(cat,nocturnal).
pet_trainability(cat,moderate).
pet_sociability_score(cat,7).


% << BIRD >> features:
pet_class(bird,aves).
pet_lifespan(bird,'5-30 years').
pet_covering(bird,feathers).
pet_diet(bird,omnivorous).
pet_habitat(bird,terrestial).
pet_habitat(bird,aerial).
pet_sleep_pattern(bird,crepuscular).
pet_sleep_pattern(bird,nocturnal).
pet_sleep_pattern(bird,diurnal).
pet_trainability(bird,low).
pet_sociability_score(bird,6).


% << RABBIT >> features:
pet_class(rabbit,mammalia).
pet_lifespan(rabbit,'6-10 years').
pet_covering(rabbit,fur).
pet_diet(rabbit,herbivorous).
pet_habitat(rabbit,terrestial).
pet_sleep_pattern(rabbit,crepuscular).
pet_sleep_pattern(rabbit,nocturnal).
pet_trainability(rabbit,moderate).
pet_sociability_score(rabbit,8).


% << FISH >> features:
pet_class(fish,actinopterygii).
pet_lifespan(fish,'2-10 years').
pet_covering(fish,scales).
pet_diet(fish,omnivorous).
pet_diet(fish,carnivorous).
pet_diet(fish,herbivorous).
pet_habitat(fish,aquatic).
pet_sleep_pattern(fish,crepuscular).
pet_sleep_pattern(fish,nocturnal).
pet_sleep_pattern(fish,diurnal).
pet_trainability(fish,low).
pet_sociability_score(fish,3).


% << HAMSTER >> features:
pet_class(hamster,mammalia).
pet_lifespan(hamster,'2-3 years').
pet_covering(hamster,fur).
pet_diet(hamster,omnivorous).
pet_habitat(hamster,terrestial).
pet_sleep_pattern(hamster,nocturnal).
pet_trainability(hamster,moderate).
pet_sociability_score(hamster,5).


% << GECKO >> features:
pet_class(gecko,reptilia).
pet_lifespan(gecko,'6-20 years').
pet_covering(gecko,scales).
pet_diet(gecko,insectivorous).
pet_habitat(gecko,terrestial).
pet_sleep_pattern(gecko,nocturnal).
pet_trainability(gecko,low).
pet_sociability_score(gecko,4).


% << TURTLE >> features:
pet_class(turtle,reptilia).
pet_lifespan(turtle,'10-80 years').
pet_covering(turtle,scales).
pet_diet(turtle,herbivorous).
pet_habitat(turtle,terrestial).
pet_habitat(turtle,aquatic).
pet_sleep_pattern(turtle,nocturnal).
pet_sleep_pattern(turtle,diurnal).
pet_trainability(turtle,low).
pet_sociability_score(,3).


% << FERRET >> features:
pet_class(ferret,mammalia).
pet_lifespan(ferret,'6-10 years').
pet_covering(ferret,fur).
pet_diet(ferret,carnivorous).
pet_habitat(ferret,terrestial).
pet_sleep_pattern(ferret,crepuscular).
pet_sleep_pattern(ferret,nocturnal).
pet_trainability(ferret,high).
pet_sociability_score(ferret,7).


% << AXOLOTL >> features:
pet_class(axolotl,amphibia).
pet_lifespan(axolotl,'10-15 years').
pet_covering(axolotl,soft_skin).
pet_diet(axolotl,carnivorous).
pet_habitat(axolotl,aquatic).
pet_sleep_pattern(axolotl,nocturnal).
pet_trainability(axolotl,low).
pet_sociability_score(axolotl,3).


% << HEDGEHOG >> features:
% There is another way to do this, there is another writing form;
pet_feature(hedgehog,class,mammalia).
pet_feature(hedgehog,lifespan,'3-8 years').
pet_feature(hedgehog,covering,spines).
pet_feature(hedgehog,diet,insectivorous).
pet_feature(hedgehog,habitat,terrestial).
pet_feature(hedgehog,sleep_pattern,nocturnal).
pet_feature(hedgehog,trainability,moderate).
pet_feature(hedgehog,sociability_score,6).

% QUESTIONS ---------------------------------------------------------------------------
/* 
   We can ask questions to the user and based on their responses we can have the expert system make a diagnosis.
   The expert system applies rules to make the diagnosis.
   Here is a simple example:
*/

diagnose(Pet) :-
write('1- What is the biological classification of your pet? '),nl,
write('(mammalia / aves / actinopterygii / reptilia / amphibia)'),nl,
read(Class),

write("2- What covers your pet's body? "),nl,
write('(fur / feathers / scales / soft_skin / spines)'),nl,
read(Covering),

write("3- What is your pet's diet? "),nl,
write('(omnivorous / carnivorous / herbivorous / insectivorous)'),nl,
read(Diet),

write('4- What is the habitat of your pet? '),nl,
write('(terrestial / aerial / aquatic)'),nl,
read(Habitat),

write("5- What is your pet's sleep pattern? "),nl,
write('(diurnal / crepuscular / nocturnal)'),nl,
read(Sleep_pattern),

write("5- What is your pet's trainability level? "),nl,
write('(low / moderate / high)'),nl,
read(Trainability),

pet_type(Pet,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability).


% RULES --------------------------------------------------------------------------

% The necessary rules for the pet species to be a << DOG >> :
pet_type(dog,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = mammalia,
Covering            = fur,
Diet                = omnivorous,
Habitat             = terrestial,
Sleep_pattern       = diurnal,
Trainability        = high.

% The necessary rules for the pet species to be a << CAT >> :
pet_type(cat,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = mammalia,
Covering            = fur,
Diet                = carnivorous,
Habitat             = terrestial,
(Sleep_pattern      = crepuscular;  Sleep_pattern = nocturnal,Trainability),
Trainability        = moderate.


% The necessary rules for the pet species to be a << BIRD >> :
pet_type(bird,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = aves,
Covering            = feathers,
Diet                = omnivorous,
(Habitat            = terrestial;	Habitat= aerial),
(Sleep_pattern      = crepuscular;  Sleep_pattern = nocturnal;	Sleep_pattern = diurnal),
Trainability        = low.


% The necessary rules for the pet species to be a << RABBIT >> :
pet_type(rabbit,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = mammalia,
Covering            = fur,
Diet                = herbivorous,
Habitat             = terrestial,
(Sleep_pattern      = crepuscular;  Sleep_pattern = nocturnal),
Trainability        = moderate.


% The necessary rules for the pet species to be a << FISH >> :
pet_type(fish,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = actinopterygii,
Covering            = scales,
(Diet               = omnivorous;	Diet= carnivorous;	Diet= herbivorous),
Habitat             = aquatic,
(Sleep_pattern      = crepuscular;	Sleep_pattern= diurnal;  Sleep_pattern = nocturnal),
Trainability        = low.


% The necessary rules for the pet species to be a << HAMSTER >> :
pet_type(hamster,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = mammalia,
Covering            = fur,
Diet                = omnivorous,
Habitat             = terrestial,
Sleep_pattern       = nocturnal,
Trainability        = moderate.


% The necessary rules for the pet species to be a << GECKO >> :
pet_type(gecko,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = reptilia,
Covering            = scales,
Diet                = insectivorous,
Habitat             = terrestial,
Sleep_pattern       = nocturnal,
Trainability        = low.


% The necessary rules for the pet species to be a << TURTLE >> :
pet_type(turtle,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = reptilia,
Covering            = scales,
Diet                = carnivorous,
(Habitat            = terrestial;	Habitat= aquatic),
(Sleep_pattern      = nocturnal;	Sleep_pattern = diurnal),
Trainability        = low.


% The necessary rules for the pet species to be a << FERRET >> :
pet_type(ferret,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = mammalia,
Covering            = fur,
Diet                = carnivorous,
Habitat             = terrestial,
(Sleep_pattern      = crepuscular;  Sleep_pattern = nocturnal),
Trainability        = high.


% The necessary rules for the pet species to be a << AXOLOTL >> :
pet_type(axolotl,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = amphibia,
Covering            = soft_skin,
Diet                = carnivorous,
Habitat             = aquatic,
Sleep_pattern       = nocturnal,
Trainability        = low.


% The necessary rules for the pet species to be a << HEDGEHOG >> :
pet_type(hedgehog,Class,Covering,Diet,Habitat,Sleep_pattern,Trainability):-
Class               = mammalia,
Covering            = spines,
Diet                = insectivorous,
Habitat             = terrestial,
Sleep_pattern       = nocturnal,
Trainability        = moderate.

% QUERIES ------------------------------------------------------------------------------

/*

Below are various examples for queries that you can execute from the console
 
What are pet types:
pet_types(Pet).

What are the features:
pet_class(Class).
pet_covering(Covering).
pet_diet(Diet).
pet_habitat(Habitat).
pet_sleep_pattern(SleepPattern).
pet_trainability(Trainability).


pet_class(X,mammalia).                -> Pets with a biological class of mammalia
pet_covering(X,scales).               -> Pets with scales as a body covering
pet_diet(X,herbivorous).              -> Pets with a herbivorous diet
pet_habitat(X,aquatic).               -> Pets that live in aquatic habitat
pet_sleep_pattern(X,crepuscular).     -> Pets with a crepuscular sleep pattern
pet_trainability(X,high).             -> Pets with high trainability level
pet_sociability_score(PetName,7).     -> Pets with a sociability score of 7
pet_feature(X,diet,insectivorous).    -> Pets with a insectivorous diet (Querry for the other writing form)

pet_sociability_score(PetName,Score), Score >= 5.    -> Pets with a sociability score of 5 or higher(PetName) and their score(Score)
pet_sociability_score(PetName,Score), Score < 5.     -> Pets with a sociability score of less than 5(PetName) and their score(Score)
pet_feature(X,sociability_score,Value), Value =< 6.  -> Pets with a sociability score of 6 or less (Querry for the other writing form)


pet_class(axolotl,X).               -> Biological class of the axolotl
pet_feature(hedgehog,covering,X).   -> Body covering of the hedgehog (Querry for the other writing form)
pet_diet(gecko,X).                  -> Diet of the gecko
pet_habitat(turtle,X).              -> Habitat of the turtle
pet_sleep_pattern(cat,X).           -> Sleep pattern of the cat
pet_trainability(ferret,X).         -> Trainability level of the ferret


pet_class(X,Y).                     -> All pets(X variable) and their biological classes(Y)
pet_habitat(Pet,Habitat).           -> All pets(Pet) and their habitats(Habitat)
pet_lifespan(Pet,Lifespan).         -> All pets (Pet) and their lifespans
We can perform this queries for all features.


pet_habitat(Pet,Habitat), Habitat \= terrestial.  -> All pets with a non-terrestial habitat(Pet) and their habitat(Habitat)
pet_covering(Pet,Covering), Covering \= fur.      -> All pets that do not have fur as a body covering and their body coverings
pet_diet(Pet,Diet), Diet \= carnivorous.          -> All pets with a non-carnivorous diet(Pet) and their diets


pet_covering(X,fur), pet_sleep_pattern(X,nocturnal).    -> The pets with a nocturnal sleep pattern and fur as a body covering
pet_class(X,Y), pet_trainability(X,moderate).           -> The pets with moderate trainability level (X) and their biological classes(Y) 
pet_habitat(X,aquatic), pet_diet(X,Y).                  -> The pets that live in aquatic habitat(X) and their diets(Y)
pet_lifespan(X,Y), pet(X,diurnal).                      -> The pets with a diurnal sleep pattern(X) and their lifespans(Y)


The pets with a carnivorous diet and biological class of Mammalia (X) and their trainability level (Y):
pet_trainability(X,Y), pet_class(X,mammalia), pet_diet(X,carnivorous).

The pets with biological class of reptilia and scales as a body covering (X) and their lifespan(Y):
pet_lifespan(X,Y), pet_covering(X,scales), pet_class(X,reptilia).

The pets with biological class of mammalia(X), their covering(Y) and their sociability score(Z):
pet_feature(X,covering,Y), pet_feature(X,sociability_score,Z), pet_feature(X,class,mammalia).

The pets with high trainability level(X), their habitat(Y) and their biological classes(Z):
pet_class(X,Z), pet_habitat(X,Y), pet_trainability(X,high).

*/