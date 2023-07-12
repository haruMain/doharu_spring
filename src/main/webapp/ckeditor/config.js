/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	
	// regline easy images 왜 안된다냐~~~~
	//config.extraPlugins= 'easyimage';
	//config.removePlugins= 'image';
	//config.cloudServices_tokenUrl= 'https://example.com/cs-token-endpoint';
	//config.cloudServices_uploadUrl= 'https://your-organization-id.cke-cs.com/easyimage/upload/';
	
	config.language = 'ko';
	config.filebrowserUploadMethod = 'form';
	//config.extraPlugins = 'autogrow';
	config.autoGrow_minHeight = 280;
	config.autoGrow_maxHeight = 350;
	config.autoGrow_bottomSpace = 50;
	config.autoGrow_onStartup = true;
	config.extraPlugins='imagepaste';
	
	config.font_defaultLabel = '굴림';
	config.font_names = '굴림/Gulim;돋움/Dotum;바탕/Batang;궁서/Gungsuh;Arial/Arial;Comic Sans MS/Comic Sans MS;Courier New/Courier New;Georgia/Georgia;Lucida Sans Unicode/Lucida Sans Unicode;Tahoma/Tahoma;Times New Roman/Times New Roman;Trebuchet MS/Trebuchet MS;Verdana/Verdana';
	config.fontSize_defaultLabel = '12px';
	config.fontSize_sizes = '8/8px;9/9px;10/10px;11/11px;12/12px;14/14px;16/16px;18/18px;20/20px;22/22px;24/24px;26/26px;28/28px;36/36px;48/48px;';
	
	config.enterMode =CKEDITOR.ENTER_BR;		//엔터키 입력시 br 태그 변경
	config.shiftEnterMode = CKEDITOR.ENTER_P;	//엔터키 입력시 p 태그로 변경
	
	config.startupFocus = true;
	config.resize_enabled = false;
	config.uiColor = '#eaebe7';
	config.toolbarCanCollapse = false;
	config.removePlugins = "elementspath";
	config.menu_subMenuDelay = 0;
	config.width ='100%';
	config.height ='320';
	config.toolbar = [

        ['Font', 'FontSize'],

        ['BGColor', 'TextColor' ],

        ['Bold', 'Italic', 'Strike', 'Superscript', 'Subscript', 'Underline', 'RemoveFormat'],   

        ['BidiLtr', 'BidiRtl'],

        '/',

        ['Image', 'SpecialChar', 'Smiley'],

        ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],

        ['Blockquote', 'NumberedList', 'BulletedList'],

        ['Link', 'Unlink'],

        ['Source'],

        ['Undo', 'Redo']

        ];
	//config.toolbar = [['Font','FontSize'],['Bold','Italic','Underline','Strike','Subscript','Superscript','TextColor','BGColor','Blockquote','RemoveFormat','NumberedList','BulletedList'],'/',['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],['Link','Unlink','Find','Replace','SelectAll','-','Image','Table','Smiley','SpecialChar'],'/',['Source','Preview','Templates','Print'],['Cut','Copy','Paste','PasteText','PasteFromWord','Undo','Redo','Maximize']];
	 /*
	 'About','Save','Styles','ShowBlocks','Format','SpellChecker','Scayt','NewPage','Anchor','Outdent','Indent',
	 '-',
	 ],'/',[
	 ['Form','Checkbox','Radio','TextField','Textarea','Select','Button','ImageButton','HiddenField'],
	 ['Flash','HorizontalRule','PageBreak'],
	 */
};
