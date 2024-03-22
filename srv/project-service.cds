using {demo} from '../db/schema';

service ProjectService
{
entity Users as select from demo.Users;
entity Projects as select from demo.Projects;

}