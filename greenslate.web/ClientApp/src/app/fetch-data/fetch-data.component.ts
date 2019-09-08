import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-fetch-data',
  templateUrl: './fetch-data.component.html'
})
export class FetchDataComponent {
  public http: HttpClient;
  public baseUrl: string;
  public users: UserList[];
  public userProjects: UserProjectList[];

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    http.get<UserList[]>(baseUrl + 'api/users').subscribe(result => {
      this.users = result;
    }, error => console.error(error));
    this.http = http;
    this.baseUrl = baseUrl;
  }

  SearchUserProjects(id: number) {
    if (id !== 0) {
      alert(id);
      this.http.get<UserProjectList[]>(this.baseUrl + 'api/userprojects/' + id).subscribe(result => {
        this.userProjects = result;
      }, error => console.error(error));
    }
  }
}

interface UserList {
  id: number;
  firstName: string;
  lastName: string;
}

interface UserProjectList {
  projectId: string;
  startDate: string;
  timeToStart: string;
  endDate: string;
  credits: string;
  status: string;
}
