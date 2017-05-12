<div class='footer'>
        
    <?php 

        // The number of all posts for a given query
        $posts_found = $GLOBALS['wp_query']->found_posts;
        // The number of posts for just the page
        $posts_count = $GLOBALS['wp_query']->post_count;
    ?>
  
        <span><?php echo date ("Y"). ". "; echo bloginfo('title') . ". ";if (function_exists('dynamic_sidebar') && dynamic_sidebar('Footer-text Widget')); ?>
            <a href='<?php the_field('facebook_link', 10) ?>' target='_blank'><i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i>
            </a></span>
    
</div>
	


      
            
            
        </div>