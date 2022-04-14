import './Auth.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Auth({signedIn,setSignedIn}) {
  document.title = 'Pocket Pros - Log In Required';
  let navigate = useNavigate();

  useEffect(()=>{
    if (signedIn===true){
      navigate('/');
    }
  },[])

  // navigate('/login')

  function handleLogInClick(){
    navigate('/login')
  }

  function handleSignUpClick(){
    navigate('/signup')
  }

  return (
    <React.Fragment>
      <div id="menu">
        <div className="title__slot" >
          <div className="blackscreen"></div>
          <div className=""></div>
          <div className="slot-item-2">
            <h3 className='first'><a className='t-one'>P</a>o<a className='t-two'>c</a><a className='t-three'>k</a><a className='t-five'>e</a><a className='t-four'>t</a></h3>
            <p></p>
          </div>
        </div>
        <div className="title__slot">
          <div className="blackscreen"></div>
          <div className=""></div>
          <div className="slot-item-2">
            {/* <h3 className='second'>Programmers</h3> */}
            <h3 className='second'><a className='t-six'>P</a><a className='t-e'>r</a><a className='t-seven'>o</a><a className='t-three'>g</a><a className='t-four'>r</a><a className='t-two'>a</a><a className='t-'>m</a><a className='t-one'>m</a><a className='t-seven'>e</a><a className='t-six'>r</a><a className='t-'>s</a></h3>
            <p></p>
          </div>
        </div>
        <div className="menu__slot" onClick={handleLogInClick}>
          <div className="blackscreen"></div>
          <div className="char jobs"></div>
          <div className="slot-item-3">
            <h3>Log In</h3>
            <p></p>
          </div>
        </div>
        <div className="menu__slot" onClick={handleSignUpClick}>
          <div className="blackscreen"></div>
          <div className="char kjohnson"></div>
          <div className="slot-item-4">
            <h3>Sign Up</h3>
            <p></p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

