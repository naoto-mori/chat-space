json.content         @message.content
json.id              @message.id
json.user_name       @message.user.name
json.created_at      @message.created_at.to_s(:datetime)
json.image           @message.image.url