$('#team2_league_id').change(function() {
    $.getScript("/refinery/bets/add_team?" + "league=" + $('#team2_league_id').val() + "&team=2");
});


$('#team1_league_id').change(function() {
    $.getScript("/refinery/bets/add_team?" + "league=" + $('#team1_league_id').val() + "&team=1");
});

$('#match_league_id').change(function() {
    $('#team1_league_id').val($('#match_league_id').val());
    $('#team2_league_id').val($('#match_league_id').val());
    $.getScript("/refinery/bets/add_team?" + "league=" + $('#match_league_id').val() + "&team=0");

});


var match_id=$("#bet_football_match_id").val();

$("input#bet_football_match_id").keyup(function(event) {
    var arr1=[8,48,49,50,51,52,53,54,55,56,57];
    var arr2=[96,97,98,99,100,101,102,103,104,105];
    if (match_id!=$("#bet_football_match_id").val() && ($("#bet_football_match_id").val()!="")) {
        if (jQuery.inArray(event.which, arr1) >= 0 || jQuery.inArray(event.which, arr2) >= 0) {
            $.getScript("/refinery/bets/search_match?" + "match_id=" + $("#bet_football_match_id").val());
            match_id = $("#bet_football_match_id").val()
        }
    }

}).keyup();