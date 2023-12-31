import './App.css';
import freeCodeCampoLogo from '../src/images/freecodecamp-logo.png';
import Boton from '../src/components/boton'
import Contador from './components/contador';
import {useState} from 'react';

function App() {

  const [numClics, setNumClics] = useState (0);

    const manejarClic = () => {
      setNumClics (numClics + 1);
    }

    const reiniciarContador = () => {
      setNumClics (0);
    }

  return (
    <div className="App">
        <div className ='freecodecamp-logo-contenedor'>
        <img 
        className = 'freecodecamp-logo'
        src ={freeCodeCampoLogo}
        alt = 'logo de freecodecamp'
        />
    </div>
        <div className = 'contenedor-principal'>
        <Contador
          numClics={numClics}
        />
        <Boton 
          texto = 'Clic'
          esBotonDeClic = {true}
          manejarClic = {manejarClic}
        />
        <Boton 
          texto = 'Reiniciar'
          esBotonDeClic = {false}
          manejarClic = {reiniciarContador}
        />

        </div>
    </div>
  );
}

export default App;
