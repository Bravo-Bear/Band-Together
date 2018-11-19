import ReactOnRails from 'react-on-rails';

import App from '../bundles/App/components/App';
import LandingPage from '../bundles/App/components/LandingPage';
import Concerts from '../bundles/App/components/Concerts';

// This is how react_on_rails can see the App in the browser.
ReactOnRails.register({
  App,
  LandingPage,
  Concerts
});
