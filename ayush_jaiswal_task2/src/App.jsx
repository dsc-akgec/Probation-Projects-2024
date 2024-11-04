import React, { useState } from 'react'
import LoginSignup from './component/loginsignup'
import Leftside from './component/leftside'
import Middleside from './component/middleside'
import Rightside from './component/rightside'
// import Home from './component/home'
import {
  createBrowserRouter,
  RouterProvider,
} from "react-router-dom";

const router = createBrowserRouter([
  {
    path: "./home",
    element: ,
  },
]);

function App() {



  return (
    <div className='w-full h-screen pr-4 m-0 flex '>
      <LoginSignup />
      {/* <div className=' px-4  border-solid fixed max-1115:flex max-720:flex '>
        <Leftside />
      </div>

      <div className=' ml-[15%] absolute max-1115:justify-center max-1115:items-center max-1115:flex '>
        <Middleside  />
        
      </div>

      <div className='ml-[65%] '>
        <Rightside/>
      </div> */}
    </div>
  )
}

export default App
