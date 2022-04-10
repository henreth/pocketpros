import React, {useState, useEffect} from 'react'
import {useNavigate } from "react-router-dom";
import Modal from "../Modals/Modal";

import './About.css'

export default function About({signedIn,userCards}){
    const [showModal,setShowModal] = useState(false)

    function handleOpenModal(){
        setShowModal(true)
    }
    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
          navigate('/');
        }
      }, [])

      let openedCards = userCards.slice(0,12);


    return (
        <React.Fragment>
            <div className='test'>Test!</div>
            <div className="back_button" onClick={()=>{navigate('/')}}>
                <div className></div>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
            <button onClick={handleOpenModal}>OPEN</button>
            <Modal showModal={showModal} setShowModal={setShowModal} openedCards={openedCards}/>
        </React.Fragment>
    )
}