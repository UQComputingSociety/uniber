import { Component, OnInit } from 'angular2/core';
import { Router } from 'angular2/router';

@Component({
    selector: 'contact',
    templateUrl: 'templates/contact.html'
})

export class ContactComponent implements OnInit {
    constructor( private _router: Router) { 
        
    }
    
    ngOnInit() {
        
    }
}