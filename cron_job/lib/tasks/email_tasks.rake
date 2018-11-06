# frozen_string_literal: true

desc 'send digest email'
task send_digest_email: :environment do
  TestMailer.test_notif("Notification").deliver!
end
