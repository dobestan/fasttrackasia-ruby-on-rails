require 'mail'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'gmail.com',
            :user_name            => 'dobestan.developer',
            :password             => 'm6JqLNriWFKYgNhoKC2peFpuzaWsdG',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }

Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
        to 'dobestan@gmail.com'
        from 'dobestan.developer@gmail.com'
    subject 'testing sendmail'
       body 'testing sendmail'
end
