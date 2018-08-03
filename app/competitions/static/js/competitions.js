
function getXdr()
{
    if (window.XDomainRequest && document.documentMode < 10) {
        return new XDomainRequest();
    } else if (window.XMLHttpRequest) {
        return new XMLHttpRequest();
    }
}

function htmlToElement(html) {
    var template = document.createElement('template');
    html = html.trim(); // Never return a text node of whitespace as the result
    template.innerHTML = html;
    return template.content.firstChild;
}

function getTpl(tpl_name)
{
  var request = getXdr();
  request.open('GET', '/data/template/');
  request.responseType = "text";
  request.send();

  request.onerror = function(e) {
  };

  request.onload = function(e) {
    console.log(request)
    if (request.status >= 200 && request.status < 400) {
      // Success!
      var response = request.response;
      dataRequest(response)
    } else {
      // We reached our target server, but it returned an error
      console.log('getUserAuthorisation Server Error');
    }
  }
}


function dataRequest()
{
  var request = getXdr();
  // var queryString = Object.keys(json).map(key => key + '=' + json[key]).join('&');
  request.open('POST', '/teams/teams/filters');
  jsonData = JSON.stringify(dataFilters);
  console.log(jsonData )
  request.responseType = "json";
  request.send(jsonData);

  request.onerror = function(e) {
  };

  request.onload = function(e) {
    if (request.status >= 200 && request.status < 400) {
      // Success!
      var response = request.response;
      data = response.data
      // container = document.getElementById('results')
      // container.innerHTML = tpl
      // source   = document.getElementById("entry-template").innerHTML;

      // pagesVues = data['pagesVues'];
      // visites = data['visites'];
      // visiteurs = data['visiteurs'];

      // var template = Handlebars.compile(source);
      // var context = {data};
      // var html = template(context);

      // container.innerHTML=html;
      // container.getElementsByTagName('table')[0].id="id0"

      // for(var i=0; i<data.length; i++){
      // }

    } else {
      // We reached our target server, but it returned an error
      console.log('getUserAuthorisation Server Error');
    }
  }
}

Handlebars.registerHelper("inc", function(value, options)
{
  return parseInt(value) + 1;
});


function translate() {
    console.log('zboub')
}

teamsFilters={}
// teamsFilters["js-teams-competitions"] = {};
// teamsFilters["js-teams-competitions"]['id'] = -1;
// teamsFilters["js-teams-competitions"]['model'] = "Competitions";
// teamsFilters["js-teams-competitions-types"] = {};
// teamsFilters["js-teams-competitions-types"]['id'] = -1;
// teamsFilters["js-teams-competitions-types"]['model'] = "CompetitionsTypes";
// teamsFilters["js-teams-competitions-categories"] = {};
// teamsFilters["js-teams-competitions-categories"]['id'] = -1;
// teamsFilters["js-teams-competitions-categories"]['model'] = "CompetitionsCategories";
// teamsFilters["js-teams-seasons"] = {};
// teamsFilters["js-teams-seasons"]['id'] = -1;
// teamsFilters["js-teams-seasons"]['model'] = "Seasons";
// teamsFilters["js-teams-zones"] = {};
// teamsFilters["js-teams-zones"]['id'] = -1;
// teamsFilters["js-teams-zones"]['model'] = "Zones";
// teamsFilters["js-teams-countries"] = {};
// teamsFilters["js-teams-countries"]['id'] = -1;
// teamsFilters["js-teams-countries"]['model'] = "Countries";
teamsFilters["js-teams-teams-types"] = {};
teamsFilters["js-teams-teams-types"]['id'] = -1;
teamsFilters["js-teams-teams-types"]['model'] = "TeamsTypes";
teamsFilters["js-teams-teams"] = {};
teamsFilters["js-teams-teams"]['id'] = -1;
teamsFilters["js-teams-teams"]['model'] = "Teams";


dataFilters={}
// teamsFilters["js-teams-zones"] = -1;
// teamsFilters["js-teams-teams-types"] = -1;
// teamsFilters["js-teams-seasons"] = -1;
// teamsFilters["js-teams-countries"] = -1;
// teamsFilters["js-teams-teams"] = -1;
// teamsFilters["js-teams-competitions-categories"] = -1;
// teamsFilters["js-teams-competitions-seasons"] = -1;

// document.addEventListener("DOMContentLoaded", function(e) {
//   btn = document.getElementById('btn-direction')
//   getTpl('_table_simple.html')
// });

var event = new Event('build');

//Ecouter l'événement.
document.addEventListener('build', function (e) { console.log('allo jecoute') }, false);

//distribuer l'événement.
document.dispatchEvent(event);


var eCompetitionsFiltersChange = new Event('onCompetitionsFiltersChange');

document.addEventListener("DOMContentLoaded", function(e) {
  var loop = Object.keys(teamsFilters).length;

  console.log('------------------------------')
  console.log(teamsFilters)
  console.log('------------------------------')
  for (var k in teamsFilters) {
    select = document.getElementById(k);
    console.log('----->>', k, teamsFilters[k]['model'], teamsFilters[k]['id'])
    dataFilters[ teamsFilters[k]['model']] =  teamsFilters[k]['id']
    // select.onchange=changeEventHandler;
    console.log(dataFilters)
    select.addEventListener('change', function(e) {
      res = changeEventHandler(e);
      // eCompetitionsFiltersChange.data = teamsFilters
      document.dispatchEvent(eCompetitionsFiltersChange);
    }, false);
  }
});

document.addEventListener("onCompetitionsFiltersChange", function(e) {
  dataRequest()
});


function changeEventHandler(e) {
  var target = e.currentTarget;
  var dataset = e.currentTarget[e.currentTarget.selectedIndex].dataset;
  var model = target.dataset['model']
  var res = {}
  res['model'] = model
  for (var k in dataset){
    if (typeof dataset[k] !== 'function' && k == 'id') {
      dataFilters[model] =  parseInt(dataset[k])
      break
    }
  }
}


