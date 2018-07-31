/*
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
  request.open('GET', '/data/template/' + tpl_name);
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


function dataRequest(tpl)
{
  var request = getXdr();
  request.open('GET', '/data/resume');
  request.responseType = "json";
  request.send();

  request.onerror = function(e) {
  };

  request.onload = function(e) {
    if (request.status >= 200 && request.status < 400) {
      // Success!
      var response = request.response;

      data = response.data
      container = document.getElementById('results')
      container.innerHTML = tpl
      source   = document.getElementById("entry-template").innerHTML;

      pagesVues = data['pagesVues'];
      visites = data['visites'];
      visiteurs = data['visiteurs'];

      var template = Handlebars.compile(source);
      var context = {data};
      var html = template(context);

      container.innerHTML=html;
      container.getElementsByTagName('table')[0].id="id0"

      for(var i=0; i<data.length; i++){
      }

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

document.addEventListener("DOMContentLoaded", function(e) {
  btn = document.getElementById('btn-direction')
  getTpl('_table_simple.html')
});


function translate() {
    console.log('zboub')
}
*/

teamsFilters={}
teamsFilters["js-teams-zones"] = -1;
teamsFilters["js-teams-teams-types"] = -1;
teamsFilters["js-teams-seasons"] = -1;
teamsFilters["js-teams-countries"] = -1;
teamsFilters["js-teams-teams"] = -1;
teamsFilters["js-teams-competitions"] = -1;
teamsFilters["js-teams-competitions-categories"] = -1;
teamsFilters["js-teams-competitions-seasons"] = -1;

document.addEventListener("DOMContentLoaded", function(e) {
  var loop = Object.keys(teamsFilters).length;
  for (var k in teamsFilters) {
    select = document.getElementById(k);
    select.onchange=changeEventHandler;
  }
});

function changeEventHandler(event) {
  target = this[this.selectedIndex].dataset;
  for (var k in target){
    if (typeof target[k] !== 'function') {
      console.log("Key is " + k + ", value is " + target[k]);
    }
  }
}
