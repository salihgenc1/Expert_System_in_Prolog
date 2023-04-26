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

% This part of the facts for querries, not for the diagnose process ↓↓↓

% << DOG >> features:
pet_class(dog,mammalia).
pet_lifespan(dog,'10-13 years').
pet_covering(dog,fur).
pet_diet(dog,omnivorous).
pet_habitat(dog,terrestial).
pet_sleep_pattern(dog,diurnal).
pet_trainability(dog,high).


% << CAT >> features:
pet_class(cat,mammalia).
pet_lifespan(cat,'12-16 years').
pet_covering(cat,fur).
pet_diet(cat,carnivorous).
pet_habitat(cat,terrestial).
pet_sleep_pattern(cat,crepuscular).
pet_sleep_pattern(cat,nocturnal).
pet_trainability(cat,moderate).


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


% << RABBIT >> features:
pet_class(rabbit,mammalia).
pet_lifespan(rabbit,'6-10 years').
pet_covering(rabbit,fur).
pet_diet(rabbit,herbivorous).
pet_habitat(rabbit,terrestial).
pet_sleep_pattern(rabbit,crepuscular).
pet_sleep_pattern(rabbit,nocturnal).
pet_trainability(rabbit,moderate).


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


% << HAMSTER >> features:
pet_class(hamster,mammalia).
pet_lifespan(hamster,'2-3 years').
pet_covering(hamster,fur).
pet_diet(hamster,omnivorous).
pet_habitat(hamster,terrestial).
pet_sleep_pattern(hamster,nocturnal).
pet_trainability(hamster,moderate).


% << GECKO >> features:
pet_class(gecko,reptilia).
pet_lifespan(gecko,'6-20 years').
pet_covering(gecko,scales).
pet_diet(gecko,insectivorous).
pet_habitat(gecko,terrestial).
pet_sleep_pattern(gecko,nocturnal).
pet_trainability(gecko,low).


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


% << FERRET >> features:
pet_class(ferret,mammalia).
pet_lifespan(ferret,'6-10 years').
pet_covering(ferret,fur).
pet_diet(ferret,carnivorous).
pet_habitat(ferret,terrestial).
pet_sleep_pattern(ferret,crepuscular).
pet_sleep_pattern(ferret,nocturnal).
pet_trainability(ferret,high).


% << AXOLOTL >> features:
pet_class(axolotl,amphibia).
pet_lifespan(axolotl,'10-15 years').
pet_covering(axolotl,soft_skin).
pet_diet(axolotl,carnivorous).
pet_habitat(axolotl,aquatic).
pet_sleep_pattern(axolotl,nocturnal).
pet_trainability(axolotl,low).


% << HEDGEHOG >> features:
pet_class(hedgehog,mammalia).
pet_lifespan(hedgehog,'3-8 years').
pet_covering(hedgehog,spines).
pet_diet(hedgehog,insectivorous).
pet_habitat(hedgehog,terrestial).
pet_sleep_pattern(hedgehog,nocturnal).
pet_trainability(hedgehog,moderate).


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

