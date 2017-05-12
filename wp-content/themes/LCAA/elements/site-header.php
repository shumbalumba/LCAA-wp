<div class='page shadow'>
        <header style='background-image: url(<?php the_field('header_background', 10) ?>); background-position: 0% 23%;'>
            <div class='header'>
                <div class='nav-bar'>
                    <div class='languages'>
                        <ul>
                    <!-- LANGUAGES -->
                              <?php if (function_exists('dynamic_sidebar') && dynamic_sidebar('Language Widgets')); ?>
                        
                        </ul>
                    </div>
                    <div class='burger'><div></div><div></div><div></div></div>
                        
                    <?php wp_nav_menu(array(
                        
                        'menu' => 'primary-navigation',
                        'theme_location' => 'primary-navigation',
                        'container' => '<ul></ul>',
                        'menu_class' => 'menu',
                         
                        )); ?>

                        <span class='search'><?php get_search_form(); ?></span>

               </div>
                
                <div class='header-img'>
                
                </div>
                <h1><a href='<?php echo bloginfo('url'); ?>'><?php echo bloginfo('title'); ?></a></h1>
            </div>
        </header>