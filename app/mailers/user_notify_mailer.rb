# -*- coding: utf-8 -*-
class UserNotifyMailer < ActionMailer::Base
  default :from => "robot@event.ru"

  layout 'notification'

  def weekly_newsletter_monday(user)
    @news = NewsArticle.published_to_monday.group_by { |a| a.published_at.to_date }
    return if @news.empty?
    mail(to: user.email, :subject => "Новые статьи на Event.ru")
  end

  def weekly_newsletter_thursday(user)
    @news = NewsArticle.published_to_thursday.group_by { |a| a.published_at.to_date }
    return if @news.empty?
    mail(to: user.email, :subject => "Новые статьи на Event.ru",
      :template_name => 'weekly_newsletter_monday')
  end

  def event_subscriber(user)
    @events = EventArticle.new_events_tuesday.group_by { |a| a.target_at.to_date }
    return if @events.empty?
    mail(to: user.email, :subject => "Афиша Event.ru")
  end

  def partner_newsletter(user, newsletter)
    @newsletter = newsletter
    mail(to: user.email, :subject => "Event.ru рекомендует")
  end

  def comment_in_articles(user)
    @comments = user.comments.toplevel
      .where('created_at > ?', user.last_email_article)
      .group_by(&:topic)

    return if @comments.empty?
    
    user.last_email_article!
    mail(to: user.email, :subject => "Уведомление о новом комментарии на сайте Event.ru")
  end

  def comment_comment(user)
    @comments = user.comments.map { |comment|
      comment.children.where('created_at > ?', user.last_email_comment) }
        .select { |children| not children.empty?  }

    return if @comments.empty?

    @comments = @comments.group_by { |children| children.first.topic  }

    # got following:
    # [[topic, [[child, ...], ...]], ...]

    user.last_email_comment!
    mail(to: user.email, :subject => "Уведомление о новом комментарии на сайте Event.ru")
  end
end
