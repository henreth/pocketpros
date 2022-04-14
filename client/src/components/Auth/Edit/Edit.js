import './Edit.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useNavigate } from "react-router-dom";
import axios from 'axios';


export default function Edit({ user, setUser, signedIn, handleLogOut }) {
  document.title = 'Pocket Pros - Edit Account Details';
  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn === false) {
      navigate('/');
    }
  }, [])  


    const [username,setUsername] = useState(signedIn?user.username:null)
    const [firstName, setFirstName] = useState(signedIn?user.first_name:null)
    const [lastName, setLastName] = useState(signedIn?user.last_name:null)


  function handleSubmitChanges(e) {
    e.preventDefault();
    if (username === '') {
        setUsername(user.username)
    }

    if (firstName === '') {
        setFirstName(user.first_name)
    }

    if (lastName === '') {
        setLastName(user.last_name)
    }

    let updatedDetails = {
        "first_name": firstName,
        "last_name": lastName,
        username
    }

    axios.patch('/users/' + user.id, updatedDetails)
        .then(r => {
            setUser(r.data)
            alert('Your account has been updated!')
        })
        .catch(function (error) {
            if (error.response) {
                console.log(error.response.data.errors);
                alert(error.response.data.errors)
            } else if (error.request) {
                console.log(error.request);
            } else {
                console.log('Error', error.message);
            }
        });
}


  return (
    <React.Fragment>
      <div id="menu">
        <div className="login__slot">
          <div className></div>
          <div className="log-in-title">
            <h3>Edit Details</h3>
          </div>
          <form className="log-in-container">
            <div className='signup-input-fullname'>
              <input className='signup-input-name' type="text" placeholder="First Name" value={firstName} onChange={(e) => { setFirstName(e.target.value) }} />
              <input className='signup-input-name last' type="text" placeholder="Last Name" value={lastName} onChange={(e) => { setLastName(e.target.value) }} />
            </div>
            <input className='signup-input' type="text" placeholder="Email" value={username} onChange={(e) => setUsername(e.target.value)} />
            <button className='signup-button' onClick={handleSubmitChanges} >Submit Changes</button>
          </form>
        </div>
        {/* <div className="menu__slot" onClick={handleLogOut}>
            <div className="blackscreen"></div>
            <div className="char eich"></div>
            <div className="slot-item-3">
              <h3>Log Out</h3>
              <p></p>
            </div>
          </div> */}
          <div className="menu__slot" onClick={()=>{navigate('/profile')}}>
            <div className="blackscreen"></div>
            <div className="char zuckerberg"></div>
            <div className="slot-item-2">
              <h3>Cancel</h3>
              <p></p>
            </div>
          </div>


      </div>
    </React.Fragment>
  );
}

