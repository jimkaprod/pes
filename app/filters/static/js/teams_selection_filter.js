document.addEventListener("DOMContentLoaded", function(e) {
  filters()
});

teamsFilters={}
teamsFilters["js-select-videos-games-names"] = {};
teamsFilters["js-select-videos-games-names"]['id'] = [];
teamsFilters["js-select-videos-games-names"]['model'] = "VideosGamesNames";

function filters() {
  var videosGamesFilters = document.getElementById('js-teams-selection-filter-videos-games-names');

   videosGamesFilters.addEventListener('click', function(e) {
    e.preventDefault();
    var id = e.target.dataset['id'];
    if (e.target.classList.contains('active')) {
      teamsFilters["js-select-videos-games-names"]['id'].splice( teamsFilters["js-select-videos-games-names"]['id'].indexOf(id), 1 );
      e.target.classList.remove('active')
    } else {
      teamsFilters["js-select-videos-games-names"]['id'].push(id);
      e.target.classList.add('active');
    }

    console.log(teamsFilters)
    // var name = activeLink.dataset['name']
    // if (activeLink && activeLink.classList.contains('active')) {
    //   activeLink.classList.remove('active');
    // }

    // activeLink = e.target;
    // activeLink.classList.add('active');

    // if (activeLink.classList.contains("active")) {
    //   console.log('off')
    // } else {
    //   activeLink.classList.contains("active")
    //   console.log('on')
    // }
    // console.log(e.target)

  });

  // var loop = links.length;
  // for (var i = 0; i < loop; i++) {
  //   console.log(links[i])
  //   links[i].addEventListener('click', function(event) {
  //     console.log('yop', this)
  //     event.preventDefault();
  //   });
  // }

  // console.log(buttons)
  // [].forEach.call(buttons, function(a) {
  //   // do whatever
  //   // a.addEventListener('click', function(e) {
  //   //   console.log(e)
  //   //   res = clickEventHandler(e);
  //   //   eCompetitionsFiltersClick.data = teamsFilters
  //   //   document.dispatchEvent(eCompetitionsFiltersClick);
  //   // }, false);
  // });

  // [].forEach.call(buttons, function(a) {
  //   // do whatever
  //   a.addEventListener('click', function(e) {
  //     console.log(e)
  //     res = clickEventHandler(e);
  //     eCompetitionsFiltersClick.data = teamsFilters
  //     document.dispatchEvent(eCompetitionsFiltersClick);
  //   }, false);
  // });
}


// $(document).ready(function() {
//   $('.btn-group').on('click', 'label.btn', function(e) {
//     if ($(this).hasClass('active')) {
//       setTimeout(function() {
//         $(this).removeClass('active').find('input').prop('checked', false);
//       }.bind(this), 10);
//     }
//   });
// });
