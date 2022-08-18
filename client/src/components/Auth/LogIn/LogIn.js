import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";

export default function LogIn({ user, username, setUsername, password, setPassword, handleLogInSubmit }) {
  document.title = 'Pocket Pros - Authorization Required';
  let navigate = useNavigate();

  useEffect(() => {
    if (!user.username) {
      navigate('/');
    }
  }, [])

  function handleSignUpClick() {
    setUsername('');
    setPassword('');
    navigate('/signup')
  }

  function handleAuthClick() {
    setUsername('');
    setPassword('');
    navigate('/auth')
  }


  return (
    <React.Fragment>
      <div id="menu">
        <div className="login__slot">
          <div className></div>
          <div className="log-in-title">
            <h3>Log In</h3>
          </div>
          <form className="auth-log-in-container">
            <input className='auth-login-input auth-username' type="username" placeholder="Username" value={username} onChange={(e) => setUsername(e.target.value)} />
            <input className='auth-login-input auth-password' type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
            <button className='auth-login-button' onClick={handleLogInSubmit}>Sign In</button>
            {/* <div className='login-forgot' href="#">Forgot your password?</div> */}

          </form>
        </div>
        <div className="menu__slot" onClick={handleSignUpClick}>
          <div className="blackscreen"></div>
          <div className="char kjohnson"></div>
          <div className="slot-item-2">
            <h3>Sign Up</h3>
            <p></p>
          </div>
        </div>
        <div className="menu__slot" onClick={handleAuthClick}>
          <div className="blackscreen"></div>
          <div className="char tommy"></div>
          <div className="slot-item-4">
            <h3>Cancel</h3>
            <p></p>
          </div>
        </div>


      </div>
    </React.Fragment>
  );
}

