import React, { useState, useEffect } from 'react'
import { useNavigate } from "react-router-dom";

import './About.css'

export default function About({ signedIn,}) {

    let navigate = useNavigate();

    useEffect(() => {
        if (signedIn == false) {
            navigate('/');
        }
    }, [])

    return (
        <React.Fragment>
            <div className='test'>Test!</div>
            <div className="back_button" onClick={() => { navigate('/') }}>
                <div className></div>
                <div className="log-in-title" >
                    <h3>Back</h3>
                </div>
            </div>
        </React.Fragment>
    )
}