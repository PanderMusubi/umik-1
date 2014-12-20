/**
 * list country.js: General Javascript Library for VirtueMart Administration
 *
 *
 * @package	VirtueMart
 * @subpackage Javascript Library
 * @author Patrick Kohl
 * @copyright Copyright (c) 2011VirtueMart Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */

(function($){
	var undefined,
	methods = {
		list: function(options) {
			var dest = options.dest;
			var ids = options.ids;
			methods.update(this,dest,ids);

			$(this).change( function() { methods.update(this,dest)});
		},
		update: function(org,dest,ids) {
			var opt = $(org),
				optValues = opt.val() || [],
				byAjax = [] ;
			if (!$.isArray(optValues)) optValues = jQuery.makeArray(optValues);
			if ( typeof  oldValues !== "undefined") {
				//remove if not in optValues
				$.each(oldValues, function(key, oldValue) {
					if ( ($.inArray( oldValue, optValues )) < 0 ) $("#group"+oldValue+"").remove();
				});
			}
			//push in 'byAjax' values and do it in ajax
			$.each(optValues, function(optkey, optValue) {
				if( opt.data( 'd'+optValue) === undefined ) byAjax.push( optValue );
			});
			if (byAjax.length >0) {
				$.getJSON('index.php?option=com_virtuemart&view=state&format=json&virtuemart_country_id=' + byAjax,
						function(result){
						
						// Max Bitte Testen
						var virtuemart_state_id = $('#virtuemart_state_id');
						var status = virtuemart_state_id.attr('required');
						
						if(status == 'required') {
							if( result[byAjax].length > 0 ) {
								virtuemart_state_id.attr('required','required');
							} else {
								virtuemart_state_id.removeAttr('required');
							}
						}
						
						// ENDE

						$.each(result, function(key, value) {
							if (value.length >0) {
								opt.data( 'd'+key, value );	
							} else { 
								opt.data( 'd'+key, 0 );		
							}
						});
						methods.addToList(opt,optValues,dest);
						if ( typeof  ids !== "undefined") {
							var states =  ids.length ? ids.split(',') : [] ;
							$.each(states, function(k,id) {
								$(dest).find('[value='+id+']').attr("selected","selected");
							});
						}
						$(dest).trigger("liszt:updated");
					}
				);
			} else {
				methods.addToList(opt,optValues,dest)
				$(dest).trigger("liszt:updated");
			}
			oldValues = optValues ;
			
		},
		addToList: function(opt,values,dest) {
			$.each(values, function(dataKey, dataValue) { 
				var groupExist = $("#group"+dataValue+"").size(); 
				if ( ! groupExist ) {
					var datas = opt.data( 'd'+dataValue );
					if (datas.length >0) {
					var label = opt.find("option[value='"+dataValue+"']").text();
					var group ='<optgroup id="group'+dataValue+'" label="'+label+'">';
					$.each( datas  , function( key, value) {
						if (value) group +='<option value="'+ value.virtuemart_state_id +'">'+ value.state_name +'</option>';
					});
					group += '</optgroup>';
					$(dest).append(group);
					
					}
				}
			});
		}
	};

	$.fn.vm2front = function( method ) {
		
		if ( methods[method] ) {
		  return methods[method].apply( this, Array.prototype.slice.call( arguments, 1 ));
		} else if ( typeof method === 'object' || ! method ) {
			return methods.init.apply( this, arguments );
		} else {
		  $.error( 'Method ' +  method + ' does not exist on Vm2 front jQuery library' );
		}    
	
	};
})(jQuery)
