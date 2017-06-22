App.okane = App.cable.subscriptions.create "OkaneChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    li = document.createElement('li')
    li.textContent = data
    document.getElementById('thread-list').appendChild(li)

    received='<dt><p class="pull-right grey border-left-curve"><u><%= current_user.email %></u><br/>Nyau communities in Mozambique, documenting their rituals ...</p></dt>
    <dd><p class="silver border-right-curve">buri</p></dd>'

    #p=document.createElement('p');
    #p.classList.add("silver border-right");
    #p.textContent = data;
    #document.getElementById('thread-list').appendChild(received);

    put_message: (msg) ->
      @perform('put_message', { data: msg })
      return
