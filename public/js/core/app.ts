import { Component } from 'angular2/core';
import { RouteConfig, ROUTER_DIRECTIVES, ROUTER_PROVIDERS } from 'angular2/router';

import { HomeComponent } from '../components/home';
import { RegisterComponent } from '../components/register';
import { AboutComponent } from '../components/about';
import { ContactComponent } from '../components/contact';

@Component({
    selector: 'app',
    template: `<router-outlet></router-outlet>`,
    directives: [ROUTER_DIRECTIVES],
    providers: [
        ROUTER_PROVIDERS
    ]
})
@RouteConfig([
    {
        path: '/',
        name: 'Home',
        component: HomeComponent,
        useAsDefault: true
    },
    {
        path: '/register',
        name: 'Register',
        component: RegisterComponent,
    },
    {
        path: '/about',
        name: 'About',
        component: AboutComponent
    },
    {
        path: '/contact',
        name: 'Contact',
        component: ContactComponent
    }
])

export class AppComponent {
    
}