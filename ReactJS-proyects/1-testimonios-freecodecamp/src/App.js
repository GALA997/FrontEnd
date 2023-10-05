
import './App.css';
import { Testimonio } from './components/testimonios';

function App() {
  return (
    <div className='App'>

    <div>
    <h1>Testimonios de casos de exitos de FreeCodeCamp</h1>
    <Testimonio
      nombre = 'Andrew Smith'
      pais = 'Nueva Zelanda'
      imagen = 'Andrew Smith'
      cargo = 'Ingeniero en Telecomunicaciones'
      empresa = 'Juniper Networks'
      testimonio = 'Anteriormente me habia graduado como ingeniero en telecomunicaciones, pero gracias a FreeCodeCamp pude descubrir un mundo sin limites con la integracion de otros lenguajes de programacion para la utomatizacion y manejo de redes'
    />
    </div>
    </div>
  );
}

export default App;
