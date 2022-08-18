import React, { useEffect } from 'react';
import { useNavigate } from "react-router-dom";

export default function Auth({ user, signedIn }) {
  document.title = 'Pocket Pros - Log In Required';
  let navigate = useNavigate();

  useEffect(() => {
    if (!user.username) {
      navigate('/');
    }
  }, [])

  // navigate('/login')

  function handleLogInClick() {
    navigate('/login')
  }

  function handleSignUpClick() {
    navigate('/signup')
  }

  return (
    <React.Fragment>
      <div id="menu">
        <div className="title__slot" >
          <div className="blackscreen"></div>
          <div className=""></div>
          <div className="slot-item-2">
            <h3 className='first'> ><a className='t-one'> </a><a className='t-two'>P</a>o<a className='t-three'>c</a><a className='t-four'>k</a><a className='t-five'>e</a><a className='t-six'>t</a></h3>
            <p></p>
          </div>
        </div>
        <div className="title__slot">
          <div className="blackscreen"></div>
          <div className=""></div>
          <div className="slot-item-2">
            {/* <h3 className='second'>Programmers</h3> */}
            <h3 className='second'><a className='t-one'>P</a><a className='t-two'>r</a><a className='t-three'>o</a><a className='t-four'>g</a><a className='t-five'>r</a><a className='t-six'>a</a><a className='t-'>m</a><a className='t-seven'>m</a><a className='t-one'>e</a><a className='t-two'>r</a><a className='t-three'>s</a><a className='t-eight'>_</a></h3>
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

