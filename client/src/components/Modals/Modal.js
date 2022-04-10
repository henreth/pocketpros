import React from 'react';
import './Modal.css';

// open, onClose 
function Modal({ }) {

    // if(!open){
    //     return null
    // }

    function handleClick(){
        console.log('working')
    }
        return (
            <div className="overlay">
                <div className="modal">                    
                    <button onClick={handleClick}> X </button>
                </div>
            </div>
        );
}

export default Modal;