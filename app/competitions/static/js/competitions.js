
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
  request.open('POST', '/competitions/teams/filters');
  console.log(dataFilters)
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
teamsFilters["js-select-videos-games-names"] = {};
teamsFilters["js-select-videos-games-names"]['id'] = -1;
teamsFilters["js-select-videos-games-names"]['model'] = "VideosGamesNames";
teamsFilters["js-select-seasons-names"] = {};
teamsFilters["js-select-seasons-names"]['id'] = -1;
teamsFilters["js-select-seasons-names"]['model'] = "SeasonsNames";
teamsFilters["js-select-zones-names"] = {};
teamsFilters["js-select-zones-names"]['id'] = -1;
teamsFilters["js-select-zones-names"]['model'] = "ZonesNames";
teamsFilters["js-select-countries-names"] = {};
teamsFilters["js-select-countries-names"]['id'] = -1;
teamsFilters["js-select-countries-names"]['model'] = "CountriesNames";
teamsFilters["js-select-competitions-names"] = {};
teamsFilters["js-select-competitions-names"]['id'] = -1;
teamsFilters["js-select-competitions-names"]['model'] = "CompetitionsNames";
teamsFilters["js-select-competitions-types"] = {};
teamsFilters["js-select-competitions-types"]['id'] = -1;
teamsFilters["js-select-competitions-types"]['model'] = "CompetitionsTypes";
teamsFilters["js-select-competitions-categories"] = {};
teamsFilters["js-select-competitions-categories"]['id'] = -1;
teamsFilters["js-select-competitions-categories"]['model'] = "CompetitionsCategories";
teamsFilters["js-select-teams-names"] = {};
teamsFilters["js-select-teams-names"]['id'] = -1;
teamsFilters["js-select-teams-names"]['model'] = "TeamsNames";
teamsFilters["js-select-teams-types"] = {};
teamsFilters["js-select-teams-types"]['id'] = -1;
teamsFilters["js-select-teams-types"]['model'] = "TeamsTypes";
teamsFilters["js-select-teams-levels"] = {};
teamsFilters["js-select-teams-levels"]['id'] = -1;
teamsFilters["js-select-teams-levels"]['model'] = "TeamsLevels";


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
document.addEventListener('build', function (e) {  }, false);

//distribuer l'événement.
document.dispatchEvent(event);


var eCompetitionsFiltersChange = new Event('onCompetitionsFiltersChange');
var eCompetitionsFiltersClick = new Event('onCompetitionsFiltersClick');

document.addEventListener("DOMContentLoaded", function(e) {
  var deleteLinks = document.querySelectorAll('[class^="delete-item"]');

  for (var i = 0; i < deleteLinks.length; i++) {
    console.log(deleteLinks[i])
    deleteLinks[i].addEventListener('click', function(event) {
      event.preventDefault();

      var choice = confirm("Are you sure to delete this item?");

      if (choice) {
        window.location.href = this.getAttribute('href');
      }
    });
  }





  buttons = document.querySelectorAll('[id^="js-select-"]');
  [].forEach.call(buttons, function(a) {
    // do whatever
    a.addEventListener('click', function(e) {
      console.log(e)
      res = clickEventHandler(e);
      eCompetitionsFiltersClick.data = teamsFilters
      document.dispatchEvent(eCompetitionsFiltersClick);
    }, false);
  });
  // for (var k in buttons) {
  //   console.log(k)
  // }

  // var loop = Object.keys(teamsFilters).length;

  // console.log('------------------------------')
  // console.log(teamsFilters)
  // console.log('------------------------------')
  // for (var k in teamsFilters) {
  //   select = document.getElementById(k);
  //   // console.log('----->>', k, teamsFilters[k]['model'], teamsFilters[k]['id'])
  //   dataFilters[ teamsFilters[k]['model']] =  teamsFilters[k]['id']
  //   // select.onchange=changeEventHandler;
  //   // console.log(dataFilters)
  //   // console.log(select)
  //   select.addEventListener('change', function(e) {
  //     res = changeEventHandler(e);
  //     // eCompetitionsFiltersChange.data = teamsFilters
  //     document.dispatchEvent(eCompetitionsFiltersChange);
  //   }, false);
  // }
});

document.addEventListener("onCompetitionsFiltersClick", function(e) {
  dataRequest()
});
// document.addEventListener("onCompetitionsFiltersChange", function(e) {
//   dataRequest()
// });


function clickEventHandler(e) {
  var target = e.currentTarget;
  var dataset = target.dataset;console.log(dataset)
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

