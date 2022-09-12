import React from 'react'
import * as FaIcons from "react-icons/fa";
import * as AiIcons from "react-icons/ai";
import * as IoIcons from "react-icons/io";


export const SidebarData = [

    { title:'Home',
    path:'/',
    icon: <AiIcons.AiFillHome />,
    cName:'Nav-text'
    },
    { title:'Foodie',
    path:'/Foodie',
    icon: <IoIcons.IoIosPaper />,
    cName:'Nav-text'
    },
    { title:'FoodTrucks',
    path:'/trucks',
    icon: <FaIcons.FaCartPlus />,
    cName:'Nav-text'
    },
    { title:'Sign-up',
    path:'/new-food-truck',
    icon: <IoIcons.IoMdPeople />,
    cName:'Nav-text'
    },



]