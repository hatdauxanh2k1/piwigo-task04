<div class="slick-slider-container">
  <div class="slick-slider-carousel">
  {foreach from=$SLIDER.elements item=picture}
  {assign var=derivative value=$pwg->derivative($SLIDER.derivative_params, $picture.src_image)}
  <div><a href='{$picture.URL}'><img {if $derivative->is_cached()}src="{$derivative->get_url()}"{else}src="" data-src="{$derivative->get_url()}"{/if} alt="{$picture.TN_ALT}" {$derivative->get_size_htm()} {if $SLIDER.title}title=""{/if} {if $SLIDER.control_thumbs}data-thumb="{$derivative_thumb}"{/if}></a></div>
  {/foreach}
  </div>
</div>
