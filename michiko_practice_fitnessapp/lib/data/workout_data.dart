import 'package:michiko_practice_fitnessapp/models/workout.dart';
import 'package:michiko_practice_fitnessapp/models/exercise.dart';

class WorkoutData{




// name and exercises

List<Workout> workoutList = [
// defauult workout
Workout(
  name: "Upper body",
  exercises: [
Exercise(
  name:"Bicep curls",
  weight: "10",
  reps: "10",
  sets: "3"

)
  ]
)
];

// get thhe list of workouts
List<workout> getWorkoutList(){
  return workoutList;
}

// get length of a given workout
int numberOfExercisesInWorkout(String workoutName){

   Workout relevantWorkout = getRelevantWorkout(workoutName){
     return relevantWorkout.exercises.length;
   }
}

}