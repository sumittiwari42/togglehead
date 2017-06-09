<?php
	/*
	Template Name: Home
	*/
	get_header(); 
    ?>

    <main>
    	<div class="service">
    		<div class="wrapper cf"> 
          <?php echo do_shortcode('[product_categories number="4" images="false" parent="0"]'); ?>
         </div>  
      </div> 
      <!-- quote slider start here -->
      <div class="quote-slider">
      	<ul>
      	  <?php
						$quote_slider = array( 'post_type' => 'quote', 'posts_per_page' => 3 );
						$quote_list = new WP_Query( $quote_slider );
						while ( $quote_list->have_posts() ) : $quote_list->the_post();?>
						  <li>
						    <?php the_post_thumbnail() ?>
						    <div class="quote-content">
						    	<?php the_content(); ?>
						    	<p class="name"> <?php the_title(); ?> </p>
						    </div>
						  </li>
						  <?php
						wp_reset_postdata();  
						endwhile;
					?>	
      	</ul>
      </div>
      <!-- quote slider end here -->
      <!-- feature product section start here -->
      <div class="feature-products">
        <div class="wrapper">
	        <?php if( get_field('feature_product_heading') ): ?>
		      	<h2 class="heading"><?php the_field('feature_product_heading'); ?></h2>
	        <?php endif; ?>
					<?php if( get_field('feature_product_content') ): ?>
						<p class="para"><?php the_field('feature_product_content'); ?></p>
					<?php endif; ?>	   
					<ul class="tab cf">
						<?php if( get_field('feature_product_tab_1') ): ?>
							<li><?php the_field('feature_product_tab_1'); ?></li>
						<?php endif; ?>
						<?php if( get_field('feature_product_tab_2') ): ?>
							<li><?php the_field('feature_product_tab_2'); ?></li>
						<?php endif; ?>	
						<?php if( get_field('feature_product_tab_3') ): ?>
							<li><?php the_field('feature_product_tab_3'); ?></li>
						<?php endif; ?>			
						<?php if( get_field('feature_product_tab_4') ): ?>
							<li><?php the_field('feature_product_tab_4'); ?></li>
						<?php endif; ?>											
					</ul> 
					<div class="tab-details cf">
	           <div class="tab-content"> 
	             <?php echo do_shortcode('[product_category category="mixing_bowl"]')?>
	           </div>
	           <div class="tab-content"> 
	             <?php echo do_shortcode('[product_category category="pans"]')?>
	           </div>
	           <div class="tab-content"> 
	             <?php echo do_shortcode('[product_category category="spatulas"]')?>
	           </div>
	           <div class="tab-content"> 
	             <?php echo do_shortcode('[product_category category="bakery-accesories"]')?>
	           </div>	           	           	           
          </div>   
        </div>
      </div>
      <!-- feature product section end here --> 
      <!--special product -->
      <div class="special-product" style="background: url(<?php the_field('special_background_image'); ?>) no-repeat 100% 100%">
      		<?php if( get_field('special_product_heading') ): ?>
						<h3><?php the_field('special_product_heading'); ?></h3>
					<?php endif; ?>	  
      		<?php if( get_field('special_product_text') ): ?>
						<h3><?php the_field('special_product_text'); ?></h3>
					<?php endif; ?>	
					<?php if( get_field('special_product_button_text') && get_field('special_product_button_url') ): ?>
						<a href="<?php the_field('special_product_button_url'); ?>" title="<?php the_field('special_product_button_text'); ?>"><?php the_field('special_product_button_text'); ?></a>
					<?php endif; ?>						
      </div>
      <!--special product end here -->
      <!-- recipe section start here -->
      <div class="recipes">
        <div class="wrapper">
	        <?php if( get_field('recipe_heading') ): ?>
		      	<h2 class="heading"><?php the_field('recipe_heading'); ?></h2>
	        <?php endif; ?>
					<?php if( get_field('recipe_text') ): ?>
						<p class="para"><?php the_field('recipe_text'); ?></p>
					<?php endif; ?>
					<div class="item">
	      	  <?php
							$recipe = array( 'post_type' => 'recipe', 'posts_per_page' => 2 );
							$recipe_list = new WP_Query( $recipe );
							while ( $recipe_list->have_posts() ) : $recipe_list->the_post();?>
							  <div class="img">  
							    <?php the_post_thumbnail() ?>
							  </div>
							  <div class="recipes-content">
							    <h4><?php the_title(); ?></h4>
							    <p class="name"> <?php the_excerpt(); ?> </p>
							  <?php
							  wp_reset_postdata(); 
							  ?>
								  <a href="<?php echo get_the_permalink(); ?>" title="Know More"><img src="<?php the_field('recipe_more_image'); ?>" alt="Know More"></a>
								</div>						    
							<?php 
							endwhile;
						?>	
					</div>					         
        </div>
      </div>        
      <!-- recipe section start here -->
      <!-- about section start here -->
      <div class="about-us">
        <div class="about-part">      
		      <?php
		         $about = new WP_Query( 'pagename=about-us' );
		         while ( $about->have_posts() ) : $about->the_post(); ?>
		           <h2><?php the_title(); ?></h2>
		           <?php the_excerpt(); ?>
		           <a href="<?php echo get_the_permalink(); ?>" title="Know More">know more</a>
		         <?php endwhile;
		         wp_reset_postdata();
		      ?>
      		<?php if( get_field('') ): ?>
						<h3><?php the_field('special_product_text'); ?></h3>
					<?php endif; ?>	
					<ul class="sponser-list">
	      	  <?php
							$partner = array( 'post_type' => 'partner', 'posts_per_page' => 4 );
							$partner_list = new WP_Query( $partner );
							while ( $partner_list->have_posts() ) : $partner_list->the_post();?>
							  <li>
							    <a href="" title="<?php the_title(); ?>"><?php the_post_thumbnail() ?></a>
							    <p class="name"> <?php the_title(); ?> </p>
							  </li>
							  <?php
							wp_reset_postdata();  
							endwhile;
						?>	
					</ul>				
		    </div>
		  </div> 
		  <!-- about section end here -->   
    <main>
         
<?php
	get_footer();
?>