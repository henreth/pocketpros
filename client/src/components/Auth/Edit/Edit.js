import React, { useState, useEffect } from 'react';
import { useNavigate } from "react-router-dom";
import axios from 'axios';

export default function Edit({ user, setUser, signedIn }) {
  document.title = 'Pocket Pros - Edit Account Details';
  let navigate = useNavigate();

  useEffect(() => {
    if (!user.username) {
      navigate('/');
    }
  }, [])


  const [username, setUsername] = useState(user.username ? user.username : null)
  const [firstName, setFirstName] = useState(user.username ? user.first_name : null)
  const [lastName, setLastName] = useState(user.username ? user.last_name : null)


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
          let msg = '';
          error.response.data.errors.map(error => { msg += error + '\n' })
          alert(msg)
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
          <form className="auth-log-in-container">
            <div className='signup-input-fullname'>
              <input className='signup-input auth-name' type="text" placeholder="First Name" value={firstName} onChange={(e) => { setFirstName(e.target.value) }} />
              <input className='signup-input auth-name' type="text" placeholder="Last Name" value={lastName} onChange={(e) => { setLastName(e.target.value) }} />
            </div>
            <input className='signup-input' type="username" placeholder="Username" value={username} onChange={(e) => setUsername(e.target.value)} />
            <button className='auth-login-button' onClick={handleSubmitChanges} >Submit Changes</button>
          </form>
        </div>
        <div className="menu__slot" onClick={() => { navigate('/logout') }}>
          <div className="blackscreen"></div>
          <div className="char claude"></div>
          <div className="slot-item-2">
            <h3>Log Out</h3>
            <p></p>
          </div>
        </div>
        <div className="menu__slot" onClick={() => { navigate('/profile') }}>
          <div className="blackscreen"></div>
          <div className="char zuckerberg"></div>
          <div className="slot-item-3">
            <h3>Cancel</h3>
            <p></p>
          </div>
        </div>


      </div>
    </React.Fragment>
  );
}

