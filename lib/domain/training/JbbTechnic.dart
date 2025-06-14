import 'dart:collection';
import 'TechnicCategory.dart';

final techniqueMap = HashMap<TechniqueCategory, List<String>>.from({
  TechniqueCategory.fundamentalPositions: [
    "Garde Fermée (Closed Guard)",
    "Garde Ouverte (Open Guard)",
    "Garde Araignée (Spider Guard)",
    "Garde De La Riva",
    "Garde De La Riva Inversée",
    "Garde Lasso",
    "Garde Papillon (Butterfly Guard)",
    "Garde X (X-Guard)",
    "Garde Calamar (Squid Guard)",
    "Garde au Lapel (Lapel Guard)",
    "Demi-Garde (Half Guard)",
    "Deep Half Guard",
    "Z-Guard",
    "Contrôle Latéral (Side Control / 100 Kilos)",
    "Kesa Gatame (Écharpe)",
    "Kuzure Kesa Gatame",
    "Position Montée (Mount)",
    "Prise de Dos (Back Mount / Back Control)",
    "Genou sur Ventre (Knee on Belly)",
    "Position Nord-Sud (North-South)",
    "Position Tortue (Turtle Position)",
  ],

  TechniqueCategory.takedowns: [
    "O Soto Gari (Grand fauchage extérieur)",
    "Tai Otoshi (Renversement du corps)",
    "Seoi Nage (Projection d'épaule)",
    "Tomoe Nage (Projection en cercle)",
    "Sumi Gaeshi (Renversement dans l'angle)",
    "Ouchi Gari (Grand fauchage intérieur)",
    "Tani Otoshi (Chute dans la vallée)",
    "Double Leg Takedown",
    "Single Leg Takedown",
    "Ankle Pick (Saisie de cheville)",
    "Knee Tap (Frappe au genou)",
    "High Crotch",
    "Fireman's Carry (Porter de pompier)",
    "Tirer en Garde (Guard Pulling)",
  ],

  TechniqueCategory.submissionsJointLocks: [
    "Clé de Bras (Armbar / Juji Gatame)",
    "Americana (Ude Garami / Keylock)",
    "Kimura (Gyaku Ude Garami / Reverse Keylock)",
    "Omoplata",
    "Compression du Biceps (Bicep Slicer)",
    "Mir Lock",
    "Clé de Poignet (Wrist Lock)",
    "Clé de Genou (Kneebar)",
    "Clé de Cheville (Straight Ankle Lock / Achilles Lock)",
    "Clé de Talon (Heel Hook)",
    "Clé de Pointe de Pied (Toe Hold)",
    "Compression du Mollet (Calf Slicer / Calf Crush)",
    "Electric Chair (Crotch Ripper)",
    "Can Opener (Fisherman's Crank)",
    "Twister (Wrestler's Guillotine)",
  ],

  TechniqueCategory.submissionsChokes: [
    "Étranglement Arrière (Rear Naked Choke / Mata Leão / Hadaka Jime)",
    "Guillotine",
    "Étranglement Nord-Sud (North-South Choke)",
    "Anaconda Choke",
    "D'Arce Choke (Brabo Choke)",
    "Arm Triangle (Kata Gatame)",
    "Triangle (Triangle Choke / Sankaku Jime)",
    "Gogoplata",
    "Ezequiel Choke (Sode Guruma Jime)",
    "Cross Choke (Collar Choke / X-Choke / Juji Jime)",
    "Sliding Collar Choke (Kata Te Jime)",
    "Baseball Bat Choke",
    "Loop Choke",
    "Bow and Arrow Choke (Étranglement Arc et Flèche)",
    "Lapel Chokes (divers)",
  ],

  TechniqueCategory.sweeps: [
    "Hip Bump Sweep (Renversement par coup de hanche)",
    "Scissor Sweep (Renversement en ciseaux)",
    "Flower Sweep (ou Pendulum Sweep)",
    "Elevator Sweep",
    "Butterfly Sweep (Hook Sweep)",
    "Balloon Sweep",
    "De La Riva Sweep",
    "X-Guard Sweep",
    "Old School Sweep (depuis la demi-garde)",
    "John Wayne Sweep (depuis la demi-garde)",
    "Lumberjack Sweep",
    "Waiter Sweep (Muscle Sweep)",
    "100% Sweep",
    "Omoplata Sweep",
  ],

  TechniqueCategory.guardPasses: [
    "Double Underhook Pass",
    "Over-Under Pass",
    "Stack Pass",
    "Toreando Pass",
    "Knee Cut Pass (Knee Slide Pass)",
    "Leg Drag Pass",
    "X-Pass",
  ],

  TechniqueCategory.fundamentalMovements: [
    "Crevette (Shrimping / Hip Escape)",
    "Pont (Bridging)",
    "Sortie de montée (Mount Escape) - Trap and Roll (Upa)",
    "Sortie de montée (Mount Escape) - Elbow-Knee Escape",
    "Sortie de contrôle latéral (Side Control Escape)",
    "Sortie de prise de dos (Back Mount Escape)",
    "Sortie de genou sur ventre (Knee on Belly Escape)",
    "Recomposition de Garde (Guard Recovery / Reguarding)",
  ],

  TechniqueCategory.submissionDefenses: [
    "Posture et protection des membres",
    "Contres spécifiques à chaque soumission",
  ],
});
