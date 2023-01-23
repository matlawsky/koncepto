const rootRoute = "/";
const overviewPageDisplayName = "Overview";
const overviewPageRoute = "/overview";

const projectsPageDisplayName = "Projects";
const projectsPageRoute = "/projects";

const devicesPageDisplayName = "Devices";
const devicesPageRoute = "/devices";

const viewsPageDisplayName = "Views";
const viewsPageRoute = "/views";

const usersPageDisplayName = "Users";
const replPageRoute = "/repl";

const authenticationPageDisplayName = "Log Out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(overviewPageDisplayName, overviewPageRoute),
  MenuItem(projectsPageDisplayName, projectsPageRoute),
  MenuItem(devicesPageDisplayName, devicesPageRoute),
  MenuItem(usersPageDisplayName, replPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute)
];
