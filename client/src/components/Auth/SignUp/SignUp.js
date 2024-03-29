import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";

export default function SignUp({ user, username, setUsername, password, setPassword, signUpFirstName, setSignUpFirstName, signUpLastName, setSignUpLastName, signUpPasswordConfirmation, setSignUpPasswordConfirmation, handleSignUpSubmit }) {
  document.title = 'Pocket Pros - Sign Up';
  let navigate = useNavigate();

  useEffect(() => {
    if (user.username) {
      navigate('/');
    }
  }, [])

  function clickLogIn() {
    setUsername('');
    setPassword('');
    setSignUpPasswordConfirmation('');
    setSignUpFirstName('');
    setSignUpLastName('');
    navigate('/login')
  }

  function handleAuthClick() {
    setUsername('');
    setPassword('');
    setSignUpPasswordConfirmation('');
    setSignUpFirstName('');
    setSignUpLastName('');
    navigate('/auth')
  }

  return (
    <React.Fragment>
      <div id="menu">
        <div className="menu__slot" onClick={clickLogIn}>
          <div className="blackscreen"></div>
          <div className="char jobs"></div>
          <div className="slot-item-3">
            <h3>Log In</h3>
            <p></p>
          </div>
        </div>

        <div className="signup__slot">
          <div className></div>
          <div className="log-in-title">
            <h3>Sign Up</h3>
          </div>
          <form className="auth-log-in-container">
            <div className='signup-input-fullname'>
              <input className='signup-input auth-name' type="text" placeholder="First Name" value={signUpFirstName} onChange={(e) => { setSignUpFirstName(e.target.value) }} />
              <input className='signup-input auth-name' type="text" placeholder="Last Name" value={signUpLastName} onChange={(e) => { setSignUpLastName(e.target.value) }} />
            </div>
            <input className='signup-input' type="username" placeholder="Username" value={username} onChange={(e) => setUsername(e.target.value)} />
            <input className='signup-input' type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
            <input className='signup-input' type="password" placeholder="Password Confirmation" value={signUpPasswordConfirmation} onChange={(e) => setSignUpPasswordConfirmation(e.target.value)} />
            <button className='auth-login-button' onClick={handleSignUpSubmit} >Sign Up</button>
          </form>
        </div>
        <div className="menu__slot" onClick={handleAuthClick}>
          <div className="blackscreen"></div>
          <div className="char migeul"></div>
          <div className="slot-item-4">
            <h3>Cancel</h3>
            <p></p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

