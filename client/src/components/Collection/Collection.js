import './Collection.css';
import React, { useState, useEffect } from 'react';
import { Route, Routes, useHistory } from "react-router-dom";
import axios from 'axios';


export default function Collection({handleClick}) {
  return (
    <React.Fragment>
      <div>COLLECTION</div>
      <button onClick={handleClick}>GO HOME</button>
    </React.Fragment>
  );
}

