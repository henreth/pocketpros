import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";

export default function LogOut({ signedIn, handleLogOut }) {
  document.title = 'Pocket Pros - Log Out';
  let navigate = useNavigate();

  useEffect(() => {
    if (signedIn === false) {
      navigate('/');
    }
  }, [])

  return (
    <React.Fragment>
      <div id="menu">
        <div className="menu__slot" onClick={() => { navigate('/edit') }}>
          <div className="blackscreen"></div>
          <div className="char andrew"></div>
          <div className="slot-item-1">
            <h3>Edit Account</h3>
            <p></p>
          </div>
        </div>
        <div className="login__slot">
          <div className></div>
          <div className="log-in-title">
            <h3>Log Out</h3>
          </div>
          <div className="auth-log-in-container">
            <div className='logout-confirm'>Are You Sure?</div>
            <button className='logout-button' onClick={handleLogOut} >Confirm Log Out</button>
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

