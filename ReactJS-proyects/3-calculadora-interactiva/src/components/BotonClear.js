import React from 'react';
import '../styles/BotonClear.css'

const BotonClear = (props) => (
    <div className='boton-clear' onClick={props.manejarClear}>
        Clear
        {props.childrenß}
    </div>
) 

export default BotonClear;