import { Component, OnInit } from 'angular2/core';
import { Router } from 'angular2/router';

@Component({
    selector: 'home',
    templateUrl: 'templates/home.html'
})

export class HomeComponent implements OnInit {
    constructor( private _router: Router) { 
        
    }
    
    ngOnInit() {
        
    }
}