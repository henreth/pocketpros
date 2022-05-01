import React, { useState, useEffect } from 'react'
import { useNavigate } from "react-router-dom";
import repoqr from '../../img/pocketprosqr.png';
import me from '../../img/me.jpeg'
import gitqr from '../../img/githubqr.png';
import linkedinqr from '../../img/clearlinkedinqr.png';


import './About.css'

export default function About({ signedIn }) {

    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
            navigate('/');
        }
    }, [])

    return (
        <React.Fragment>
                    <div className='yourCards-overlay'></div>
            <div className="back_button-yc" onClick={() => navigate('/')}>
                <div className></div>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
            <div className='about-page-container'>
            <div className='qr-container'>
                    <div className='qrlink'>REPO</div>
                    <img className='qr-code' src={repoqr} onClick={() => { window.open('https://github.com/henreth/pocketpros') }} />
                </div>

                <div className='aboutCard about-holo'>
                    <div className='aboutCard-info-container'>
                        <img src={me} className='aboutCard-image' />
                        <div className='aboutCard-text'>
                            <div className='aboutCard-rarity'>Created By:</div>
                            <div className='aboutCard-name'>Henry Miller</div>
                            <div className='aboutCard-id'>Software Engineer</div>
                        </div>
                    </div>
                    <img className='about-icon' src={linkedinqr} onClick={() => { window.open('https://www.linkedin.com/in/henrym01/') }}  />
                </div>
                <div className='qr-container'>
                    <div className='qrlink'>GITHUB</div>
                    <img className='qr-code' src={gitqr} onClick={() => { window.open('https://www.linkedin.com/in/henrym01/') }} />
                </div>

            </div>
        </React.Fragment>
    )
}