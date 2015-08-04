InputView = require '../views/input-view'
Slack = require 'slack-node'
_ = require 'underscore'

module.exports = SlackInvite =

  inviteOverSlack: ->
    @getKeysFromConfig()

    if @missingPusherKeys()
      atom.notifications.addError('Please set your Pusher keys.')
    else if @missingSlackWebHook()
      atom.notifications.addError("Please set your Slack Incoming WebHook")
    else
      inviteView = new InputView("Please enter the Slack name of your pair partner (or channel name):")
      inviteView.miniEditor.focus()
      atom.commands.add inviteView.element, 'core:confirm': =>
        messageRcpt = inviteView.miniEditor.getText()
        @sendSlackMessageTo(messageRcpt)
        inviteView.panel.hide()

  sendSlackMessageTo: (messageRcpt) ->
    #prepare the slack stuff
    slack = new Slack()
    slack.setWebhook @slack_url
    #generate the sessionid
    @generateSessionId()
    #create params
    params =
      text: "Hello there #{messageRcpt}. You have been invited to a pairing session. If you haven't installed the AtomPair plugin, type \`apm install atom-pair\` into your terminal. Go onto Atom, hit 'Join a pairing session', and enter this string: #{@sessionId}"
      channel: messageRcpt
      username: 'AtomPair'
      icon_emoji: ':couple_with_heart:'
    #send a message to the user
    slack.webhook params, (err, response) =>
      atom.notifications.addInfo("#{messageRcpt} has been sent an invitation. Hold tight!")
      @markerColour = @colours[0]
      @pairingSetup()
      return
