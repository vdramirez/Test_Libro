/**
 * Created by werner on 19/03/19.
 */
$('#cart').html("<%= j render @cart %>");

$('#current_item').
css({'background-color':'#8f8'}).
animate({'background-color':'#141'}, 1000);