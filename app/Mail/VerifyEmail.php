<?php

namespace App\Mail;

use App\Lowongan;
use Illuminate\Support\Facades\Crypt;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class VerifyEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    private $lowongan;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Lowongan $lowongan)
    {
        $this->lowongan = $lowongan;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

       // generate link
        $encryptedEmail = Crypt::encrypt($this->lowongan->created_user);
        // ex: domain.com/verify?token=xxxx
        $link = route('posting.verify', ['token' => $encryptedEmail]);
        return $this->subject('Verify Your Email Address')
                    ->from('pahlitamanata@gmail.com','Admin No-replay')
                    ->with('link', $link)
                    ->view('mod_mail.signup');
    }
}
