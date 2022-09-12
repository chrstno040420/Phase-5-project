function TruckerCard(props) {

    console.log("Props please", props)

    // if props.teamProp.league.id === 1
    console.log(props.teamProp.foodie_owners)
    return( 
        
        <div>
            <h1>{props.teamProp.name}</h1> 
            <h2>{props.teamProp.foodie_owners.name}</h2> 
            <img src={props.teamProp.image_url}/>
            {/* <button>More Info</button> */}
          
        </div>

    
    )
}

export default TruckerCard;