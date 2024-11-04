import React,{useState } from 'react'
import Leftside from '../component/leftside'
import Middleside from '../component/middleside'
import Rightside from '../component/rightside'
import LoginSignup from '../component/loginsignup'
function Home() {

    return (
        <div className='w-full h-screen pr-4 m-0 flex '>

            <div className=' px-4  border-solid fixed max-1115:flex max-720:flex '>
                <Leftside />
            </div>

            <div className=' ml-[15%] absolute max-1115:justify-center max-1115:items-center max-1115:flex '>
                <Middleside />

            </div>

            <div className='ml-[65%] '>
                <Rightside />
            </div>
        </div>
    )
}

export default Home
