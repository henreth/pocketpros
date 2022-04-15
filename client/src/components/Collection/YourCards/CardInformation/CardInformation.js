import React from 'react';
import './CardInformation.css';
import { useNavigate } from 'react-router-dom';



export default function CardInformation({ showModal, setShowModal }) {
    let navigate = useNavigate();

    if (!showModal) {
        return null
    }

    function handleClick() {
        setShowModal(false)
    }

    // function shuffle(array) {
    //     for (var i = array.length - 1; i > 0; i--) {
    //         var j = Math.floor(Math.random() * (i + 1));
    //         var temp = array[i];
    //         array[i] = array[j];
    //         array[j] = temp;
    //     }
    //     return array
    // }

    return (
        <React.Fragment>
            <div className="overlay" onBlur={handleClick}>
            <button className= 'button openPacks' onClick={handleClick}>Back</button>

        </div>

        </React.Fragment>
    );
}
