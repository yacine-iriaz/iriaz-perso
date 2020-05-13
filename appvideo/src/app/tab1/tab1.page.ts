import { Component } from '@angular/core';
import {HttpClient} from '@angular/common/http'

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {
  searchTitle='';
  movieApiUrl= '';
  movieData={
    title:'',
    description:'',
    imageUrl:''
  };

  constructor(public http : HttpClient) {
   
  }

  readAPI(URL: string){
    return this.http.get(URL);
  }


}
