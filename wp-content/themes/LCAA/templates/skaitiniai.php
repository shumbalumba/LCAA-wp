<?php

/* Template Name: Skaitiniai */

get_header();
 
get_template_part('elements/site-header'); 

?>

<?php if ( have_posts() ) : 

 if (function_exists('dynamic_sidebar') && dynamic_sidebar('Archive Widgets')); 

$my_query = new WP_Query( 'category_name=skaitiniai' );

while ( $my_query->have_posts() ) : $my_query->the_post(); ?>



<?php endwhile; ?>

<div class='page-nav'><?php echo paginate_links(); ?></div>
   
<?php
else : 
    echo '<p>No content</p>';

 endif; ?>

<?php 

get_template_part('elements/site-footer');

get_footer(); 

?>