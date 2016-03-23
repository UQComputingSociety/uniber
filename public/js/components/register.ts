import { Component, OnInit } from 'angular2/core';
import { Router } from 'angular2/router';

@Component({
    selector: 'register',
    templateUrl: 'templates/register.html'
})

export class RegisterComponent implements OnInit {
    constructor( private _router: Router) { 
        
    }
    
    ngOnInit() {
        
    }
}