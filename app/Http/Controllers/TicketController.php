<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TicketController extends Controller
{
    private $url = 'http://ticket.gruposbf.pe/api/tickets.json';
    private $key = '495937BD01516ABBF307603A8C918DE3';
    public function ticket_create(){
        $data = array(
            'name'      =>      'John Doe',  // from name aka User/Client Name
            'email'     =>      'john@gmail.com',  // from email aka User/Client Email
            'phone' 	=>		'1234567890',  // phone number aka User/Client Phone Number
            'subject'   =>      'Test API message',  // test subject, aka Issue Summary
            'message'   =>      'This is a test of the osTicket API',  // test ticket body, aka Issue Details.
            'ip'        =>      $_SERVER['REMOTE_ADDR'], // Should be IP address of the machine thats trying to open the ticket.
            'topicId'   =>      '1', // the help Topic that you want to use for the ticket 
            //'Agency'  =>		'58', //this is an example of a custom list entry. This should be the number of the entry.
            //'Site'	=>		'Bermuda'; // this is an example of a custom text field.  You can push anything into here you want.	
            //'attachments' => array()
        );
        #pre-checks
        function_exists('curl_version') or die('CURL support required');
        function_exists('json_encode') or die('JSON support required');
        #set timeout
        set_time_limit(30);

        #curl post
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $this->url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        curl_setopt($ch, CURLOPT_USERAGENT, 'osTicket API Client v1.8');
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array( 'Expect:', 'X-API-Key: '.$this->key));
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, FALSE);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        $result=curl_exec($ch);
        $code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        if ($code != 201)
            die('No se puede crear ticket: '.$result);

        $ticket_id = (int) $result;

        # Continue onward here if necessary. $ticket_id has the ID number of the
        # newly-created ticket

    }
}
