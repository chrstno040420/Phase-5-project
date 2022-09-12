
import TruckerCard from "./TruckerCard";

function FoodTrucker ({truck}){
console.log(truck)
  return (
    // <h1>FoodTrucks</h1>
 
    <>
    {truck.map(
      (eachTruck)=>{
        return(<TruckerCard
          key={eachTruck}
          teamProp={eachTruck}/>)
        }
        )}
        
    </>

  );
}

export default FoodTrucker;