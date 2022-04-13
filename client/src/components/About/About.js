import React, { useState, useEffect } from 'react'
import { useNavigate } from "react-router-dom";
import icon from '../../img/cleargithubqr.png';
import stevejobs from '../../img/characters/stevejobs.jpeg'

import gitqr from '../../img/githubqr.png';
import linkedinqr from '../../img/linkedinqr.png';


import './About.css'

export default function About({ signedIn, }) {

    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
            navigate('/');
        }
    }, [])

    let [opened, setOpened] = useState(false)

    function handleClickCard() {
        setOpened(true)
    }

    let cardClass = opened ? `aboutCard about-holo` : 'aboutCard unopened'

    return (
        <React.Fragment>
            <div className="back_button-yc" onClick={() => navigate('/')}>
                <div className></div>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
            <div className='about-page-container'>
                <div className='qr-container'>
                    <img className='qr-code' src={linkedinqr} onClick={()=>{window.open('https://www.linkedin.com/in/henrym01/')}} />
                </div>
                <div className={cardClass} onClick={handleClickCard}>
                    <div className='aboutCard-info-container'>
                        <img src={stevejobs} className='aboutCard-image' />
                        <div className='aboutCard-text'>
                            <div className='aboutCard-rarity'>Core Dev</div>
                            <div className='aboutCard-name'>Henry Miller</div>
                            <div className='aboutCard-id'>Ω</div>
                        </div>
                    </div>
                    <img className='about-icon' src={icon} />
                </div>
                <div className='qr-container'>
                    <img className='qr-code' src={gitqr} onClick={()=>{window.open('https://github.com/henreth')}} />
                </div>
            </div>
        </React.Fragment>
    )
}