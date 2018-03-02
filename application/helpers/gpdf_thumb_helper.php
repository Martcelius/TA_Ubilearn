<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Google Drive Viewer to generate a PNG thumbnail from a PDF

if (!function_exists('saveGPDFThumb')) {
    function saveGPDFThumb($pdf_url, $file_name, $width = 300, $page = 1)
    {
        if (count($pdf_url) == 0) {
            return "You must provide a PDF URL.";
        } else if (count($file_name) == 0) {
            return "You must provide a file name (path is optional) to save the generated PNG.";
        } else {
            $CI =& get_instance();
            $CI->load->helper('file');

            $opts = array('http' =>
                array(
                    'method' => 'GET',
                    'user_agent' => "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2) Gecko/20100301 Ubuntu/9.10 (karmic) Firefox/3.6",
                    'header' => array( 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*\/*;q=0.8' )
                )
            );
            $context  = stream_context_create($opts);

            $url = "https://docs.google.com/viewer?url=" . $pdf_url . "&a=bi&pagenumber=" . $page . "&w=" . $width;
            $png_thumb_content = @file_get_contents($url, false, $context);

            if (write_file($file_name, $png_thumb_content)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }
}

/* End of file gpdf_thumb_helper.php */
/* Location: ./application/helpers/gpdf_thumb_helper.php */