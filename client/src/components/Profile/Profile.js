import './Profile.css';
import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";


export default function Profile({ signedIn }) {
  document.title = 'Pocket Pros - Profile';

  let navigate = useNavigate();

  function handleBackClick() {
    navigate('/');
  }

  useEffect(() => {
    if (signedIn == false) {
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
        <div className="menu__slot" onClick={() => { navigate('/logout') }}>
          <div className="blackscreen"></div>
          <div className="char claude"></div>
          <div className="slot-item-2">
            <h3>Log Out</h3>
            <p></p>
          </div>
        </div>
        <div className="menu__slot" onClick={handleBackClick}>
          <div className="blackscreen"></div>
          <div className="char larry"></div>
          <div className="slot-item-3">
            <h3>Back</h3>
            <p></p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

