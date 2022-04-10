import './Card.css';
import React, {useRef} from 'react';


export default function Card({char,setCardElements}){

    return(
            <div id={char.id} className="card">
                <div className="noImage">{char.rarity} {char.character.first_name} {char.character.last_name}</div>
                                {/* <div className="text-container"></div> */}

            </div>
    )
}