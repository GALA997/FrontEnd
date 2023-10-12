import './App.css';
import freeCodeCampLogo from '../src/images/freecodecamp-logo.png'
import Boton from './components/Boton'

function App() {
  return (
    <div className='App'>
        <div className = 'freecodecamp-logo-contenedor'>
        <img
            src ={freeCodeCampLogo}
            className = 'freecodecamp-logo'
            alt = 'Logo de FreeCodeCamp'
        />
        </div>

        <div className = 'contenedor-calculadora'>
            <div className = 'fila'>
            <Boton>1</Boton>
            <Boton>2</Boton>
            <Boton>3</Boton>
            <Boton>+</Boton>
            </div>
            
            <div className = 'fila'></div>
            <div className = 'fila'></div>
            <div className = 'fila'></div>

            <div className = 'fila'></div>

        </div>
    </div>
  );
}

export default App;
